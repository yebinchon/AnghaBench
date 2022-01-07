
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct strbuf {int dummy; } ;


 int ENOENT ;
 int assert (char const*) ;
 int die (char*,char const*) ;
 int errno ;
 char* memchr (char const*,char,int) ;
 int strbuf_add (struct strbuf*,char const*,int) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int parse_ls_response(const char *response, uint32_t *mode,
     struct strbuf *dataref)
{
 const char *tab;
 const char *response_end;

 assert(response);
 response_end = response + strlen(response);

 if (*response == 'm') {
  errno = ENOENT;
  return -1;
 }


 if (response_end - response < (signed) strlen("100644") ||
     response[strlen("100644")] != ' ')
  die("invalid ls response: missing mode: %s", response);
 *mode = 0;
 for (; *response != ' '; response++) {
  char ch = *response;
  if (ch < '0' || ch > '7')
   die("invalid ls response: mode is not octal: %s", response);
  *mode *= 8;
  *mode += ch - '0';
 }


 if (response_end - response < (signed) strlen(" blob ") ||
     (response[1] != 'b' && response[1] != 't'))
  die("unexpected ls response: not a tree or blob: %s", response);
 response += strlen(" blob ");


 tab = memchr(response, '\t', response_end - response);
 if (!tab)
  die("invalid ls response: missing tab: %s", response);
 strbuf_add(dataref, response, tab - response);
 return 0;
}
