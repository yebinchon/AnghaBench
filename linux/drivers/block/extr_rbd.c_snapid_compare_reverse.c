
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;



__attribute__((used)) static int snapid_compare_reverse(const void *s1, const void *s2)
{
 u64 snap_id1 = *(u64 *)s1;
 u64 snap_id2 = *(u64 *)s2;

 if (snap_id1 < snap_id2)
  return 1;
 return snap_id1 == snap_id2 ? 0 : -1;
}
