
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 char* calloc (size_t,int) ;
 int free (char*) ;
 int strncpy (char*,char*,size_t) ;
 int strtoul (char*,char**,int) ;

__attribute__((used)) static uint32_t strntoul(char *str, char **endptr, int base, size_t len) {
  char *newstr;
  uint32_t res = 0;

  newstr = calloc(len + 1, sizeof(char));
  if (newstr) {
 strncpy(newstr, str, len);
 res = strtoul(newstr, endptr, base);
 free(newstr);
  }
  return res;
}
