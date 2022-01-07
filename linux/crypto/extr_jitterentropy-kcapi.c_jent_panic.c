
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int panic (char*,char*) ;

void jent_panic(char *s)
{
 panic("%s", s);
}
