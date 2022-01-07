
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int aliases ;
 int groups ;
 int tinytest_main (int,char const**,int ) ;
 int tinytest_set_aliases (int ) ;

int
main(int c, const char **v)
{
 tinytest_set_aliases(aliases);
 return tinytest_main(c, v, groups);
}
