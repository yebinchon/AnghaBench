
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;



int brain_server_sort_hash (const void *v1, const void *v2)
{
  const u32 *d1 = (const u32 *) v1;
  const u32 *d2 = (const u32 *) v2;

  if (d1[1] > d2[1]) return 1;
  if (d1[1] < d2[1]) return -1;
  if (d1[0] > d2[0]) return 1;
  if (d1[0] < d2[0]) return -1;

  return 0;
}
