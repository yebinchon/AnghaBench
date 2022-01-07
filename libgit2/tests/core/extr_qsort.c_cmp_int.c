
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_UNUSED (void*) ;

__attribute__((used)) static int cmp_int(const void *_a, const void *_b, void *payload)
{
 int a = *(const int *)_a, b = *(const int *)_b;
 GIT_UNUSED(payload);
 return (a < b) ? -1 : (a > b) ? +1 : 0;
}
