
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_STRING_CONTAINS ;
 int syscall (int ,char*,char*,int) ;

int trap_StringContains(char *str1, char *str2, int casesensitive) {
 return syscall( BOTLIB_AI_STRING_CONTAINS, str1, str2, casesensitive );
}
