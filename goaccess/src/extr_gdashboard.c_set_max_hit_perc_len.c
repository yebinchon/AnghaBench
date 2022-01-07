
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* metrics; } ;
struct TYPE_7__ {int hits_perc_len; } ;
struct TYPE_6__ {int hits_perc; } ;
typedef TYPE_2__ GDashMeta ;
typedef TYPE_3__ GDashData ;


 int MTRC_HITS_PERC_LBL ;
 int intlen (int ) ;
 int strlen (int ) ;

__attribute__((used)) static void
set_max_hit_perc_len (GDashMeta * meta, GDashData * idata)
{
  int vlen = intlen (idata->metrics->hits_perc);
  int llen = strlen (MTRC_HITS_PERC_LBL);

  if (vlen > meta->hits_perc_len)
    meta->hits_perc_len = vlen;



  if (llen > meta->hits_perc_len)
    meta->hits_perc_len = llen;
}
