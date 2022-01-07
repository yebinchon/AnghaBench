
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* metrics; } ;
struct TYPE_3__ {int method; } ;
typedef TYPE_2__ GHolderItem ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
cmp_mthd_desc (const void *a, const void *b)
{
  const GHolderItem *ia = a;
  const GHolderItem *ib = b;
  return strcmp (ib->metrics->method, ia->metrics->method);
}
