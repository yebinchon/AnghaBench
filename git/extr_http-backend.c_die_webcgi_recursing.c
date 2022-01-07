
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dead ;

__attribute__((used)) static int die_webcgi_recursing(void)
{
 return dead++ > 1;
}
