
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;
 int test_level ;

__attribute__((used)) static void indent(void)
{
    int i;
    for (i = 0; i != test_level; ++i)
        printf("    ");
}
