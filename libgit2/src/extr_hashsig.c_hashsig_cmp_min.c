
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ hashsig_t ;


 int GIT_UNUSED (void*) ;

__attribute__((used)) static int hashsig_cmp_min(const void *a, const void *b, void *payload)
{
 hashsig_t av = *(const hashsig_t *)a, bv = *(const hashsig_t *)b;
 GIT_UNUSED(payload);
 return (av > bv) ? -1 : (av < bv) ? 1 : 0;
}
