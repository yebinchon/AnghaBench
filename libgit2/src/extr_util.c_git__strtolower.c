
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git__strntolower (char*,int ) ;
 int strlen (char*) ;

void git__strtolower(char *str)
{
 git__strntolower(str, strlen(str));
}
