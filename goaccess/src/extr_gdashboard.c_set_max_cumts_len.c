
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int serve_usecs; } ;
struct TYPE_11__ {TYPE_1__* metrics; } ;
struct TYPE_10__ {int cumts_len; } ;
struct TYPE_9__ {int sts; } ;
struct TYPE_8__ {TYPE_2__ cumts; } ;
typedef TYPE_3__ GDashMeta ;
typedef TYPE_4__ GDashData ;


 int MTRC_AVGTS_LBL ;
 TYPE_7__ conf ;
 int strlen (int ) ;

__attribute__((used)) static void
set_max_cumts_len (GDashMeta * meta, GDashData * idata)
{
  int vlen = 0, llen = 0;

  if (!conf.serve_usecs || !idata->metrics->cumts.sts)
    return;

  vlen = strlen (idata->metrics->cumts.sts);
  llen = strlen (MTRC_AVGTS_LBL);

  if (vlen > meta->cumts_len)
    meta->cumts_len = vlen;



  if (llen > meta->cumts_len)
    meta->cumts_len = llen;
}
