
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int parse_signature (char const*,unsigned long) ;
 char* strchrnul (char const*,char) ;
 unsigned long strlen (char const*) ;

__attribute__((used)) static void find_subpos(const char *buf,
   const char **sub, unsigned long *sublen,
   const char **body, unsigned long *bodylen,
   unsigned long *nonsiglen,
   const char **sig, unsigned long *siglen)
{
 const char *eol;

 while (*buf && *buf != '\n') {
  eol = strchrnul(buf, '\n');
  if (*eol)
   eol++;
  buf = eol;
 }

 while (*buf == '\n')
  buf++;


 *sig = buf + parse_signature(buf, strlen(buf));
 *siglen = strlen(*sig);


 *sub = buf;

 while (buf < *sig && *buf && *buf != '\n') {
  eol = strchrnul(buf, '\n');
  if (*eol)
   eol++;
  buf = eol;
 }
 *sublen = buf - *sub;

 if (*sublen && (*sub)[*sublen - 1] == '\n')
  *sublen -= 1;


 while (*buf == '\n')
  buf++;
 *body = buf;
 *bodylen = strlen(buf);
 *nonsiglen = *sig - buf;
}
