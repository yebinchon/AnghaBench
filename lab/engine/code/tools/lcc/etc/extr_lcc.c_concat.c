
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* alloc (int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

char *concat(char *s1, char *s2) {
 int n = strlen(s1);
 char *s = alloc(n + strlen(s2) + 1);

 strcpy(s, s1);
 strcpy(s + n, s2);
 return s;
}
