
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alloc (scalar_t__) ;
 char* strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

char *strsave(const char *str) {
 return strcpy(alloc(strlen(str)+1), str);
}
