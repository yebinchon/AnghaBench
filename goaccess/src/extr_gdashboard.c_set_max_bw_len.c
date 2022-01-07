
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* metrics; } ;
struct TYPE_9__ {int bw_len; } ;
struct TYPE_7__ {int sbw; } ;
struct TYPE_8__ {TYPE_1__ bw; } ;
typedef TYPE_3__ GDashMeta ;
typedef TYPE_4__ GDashData ;


 int MTRC_BW_LBL ;
 int strlen (int ) ;

__attribute__((used)) static void
set_max_bw_len (GDashMeta * meta, GDashData * idata)
{
  int vlen = strlen (idata->metrics->bw.sbw);
  int llen = strlen (MTRC_BW_LBL);

  if (vlen > meta->bw_len)
    meta->bw_len = vlen;



  if (llen > meta->bw_len)
    meta->bw_len = llen;
}
