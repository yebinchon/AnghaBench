
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ivalue; } ;
struct TYPE_4__ {TYPE_1__ value; } ;
typedef TYPE_2__ GRawDataItem ;



__attribute__((used)) static int
cmp_raw_num_desc (const void *a, const void *b)
{
  const GRawDataItem *ia = a;
  const GRawDataItem *ib = b;

  int va = ia->value.ivalue;
  int vb = ib->value.ivalue;

  return (va < vb) - (va > vb);
}
