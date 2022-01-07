
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* metrics; } ;
struct TYPE_7__ {int data_len; } ;
struct TYPE_6__ {int data; } ;
typedef TYPE_2__ GDashMeta ;
typedef TYPE_3__ GDashData ;


 int MTRC_DATA_LBL ;
 int strlen (int ) ;

__attribute__((used)) static void
set_max_data_len (GDashMeta * meta, GDashData * idata)
{
  int vlen = 0, llen = 0;

  vlen = strlen (idata->metrics->data);
  llen = strlen (MTRC_DATA_LBL);

  if (vlen > meta->data_len)
    meta->data_len = vlen;



  if (llen > meta->data_len)
    meta->data_len = llen;
}
