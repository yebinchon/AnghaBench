
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int cmp_ints_like_commit_time(const void *a, const void *b)
{
 return *((const int *)a) < *((const int *)b);
}
