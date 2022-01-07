
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void st4(char *p, unsigned int x)
{
 p[0] = x >> 24;
 p[1] = x >> 16;
 p[2] = x >> 8;
 p[3] = x;
}
