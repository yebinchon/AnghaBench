
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int svalue; } ;
struct TYPE_4__ {TYPE_1__ value; } ;
typedef TYPE_2__ GRawDataItem ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
cmp_raw_str_desc (const void *a, const void *b)
{
  const GRawDataItem *ia = a;
  const GRawDataItem *ib = b;

  return strcmp (ib->value.svalue, ia->value.svalue);
}
