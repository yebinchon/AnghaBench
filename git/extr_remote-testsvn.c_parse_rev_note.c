
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_note {long rev_nr; } ;


 long UINT32_MAX ;
 scalar_t__ starts_with (char const*,char const*) ;
 char* strchrnul (char const*,char) ;
 int strlen (char const*) ;
 long strtol (char const*,char**,int ) ;

__attribute__((used)) static int parse_rev_note(const char *msg, struct rev_note *res)
{
 const char *key, *value, *end;
 size_t len;

 while (*msg) {
  end = strchrnul(msg, '\n');
  len = end - msg;

  key = "Revision-number: ";
  if (starts_with(msg, key)) {
   long i;
   char *end;
   value = msg + strlen(key);
   i = strtol(value, &end, 0);
   if (end == value || i < 0 || i > UINT32_MAX)
    return -1;
   res->rev_nr = i;
   return 0;
  }
  msg += len + 1;
 }

 return -1;
}
