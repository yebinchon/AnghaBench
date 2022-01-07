
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_6__ {TYPE_2__* metrics; } ;
struct TYPE_4__ {scalar_t__ nts; } ;
struct TYPE_5__ {TYPE_1__ cumts; } ;
typedef TYPE_3__ GHolderItem ;



__attribute__((used)) static int
cmp_cumts_asc (const void *a, const void *b)
{
  const GHolderItem *ia = a;
  const GHolderItem *ib = b;

  uint64_t va = ia->metrics->cumts.nts;
  uint64_t vb = ib->metrics->cumts.nts;

  return (va > vb) - (va < vb);
}
