
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ val; } ;
typedef TYPE_1__ hcstat_table_t ;



__attribute__((used)) static int sp_comp_val (const void *p1, const void *p2)
{
  const hcstat_table_t *b1 = (const hcstat_table_t *) p1;
  const hcstat_table_t *b2 = (const hcstat_table_t *) p2;

  const u64 v1 = b1->val;
  const u64 v2 = b2->val;

  if (v1 < v2) return 1;
  if (v1 > v2) return -1;

  return 0;
}
