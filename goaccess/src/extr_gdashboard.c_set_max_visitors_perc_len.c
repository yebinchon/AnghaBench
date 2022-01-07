
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* metrics; } ;
struct TYPE_7__ {int visitors_perc_len; } ;
struct TYPE_6__ {int visitors_perc; } ;
typedef TYPE_2__ GDashMeta ;
typedef TYPE_3__ GDashData ;


 int MTRC_VISITORS_PERC_LBL ;
 int intlen (int ) ;
 int strlen (int ) ;

__attribute__((used)) static void
set_max_visitors_perc_len (GDashMeta * meta, GDashData * idata)
{
  int vlen = intlen (idata->metrics->visitors_perc);
  int llen = strlen (MTRC_VISITORS_PERC_LBL);

  if (vlen > meta->visitors_perc_len)
    meta->visitors_perc_len = vlen;



  if (llen > meta->visitors_perc_len)
    meta->visitors_perc_len = llen;
}
