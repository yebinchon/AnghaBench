
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;
 int strncpy (char*,char*,int) ;
 char* strsave (char*) ;

__attribute__((used)) static char *first(char *list) {
 char *s = strchr(list, ';');

 if (s) {
  char buf[1024];
  strncpy(buf, list, s-list);
  buf[s-list] = '\0';
  return strsave(buf);
 } else
  return list;
}
