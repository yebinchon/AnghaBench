
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int oidcmp (void const*,void const*) ;

__attribute__((used)) static int void_hashcmp(const void *a, const void *b)
{
 return oidcmp(a, b);
}
