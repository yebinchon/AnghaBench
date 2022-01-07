
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int append_protocol; } ;
struct TYPE_9__ {TYPE_1__* metrics; } ;
struct TYPE_8__ {int protocol_len; } ;
struct TYPE_7__ {int protocol; } ;
typedef TYPE_2__ GDashMeta ;
typedef TYPE_3__ GDashData ;


 int MTRC_PROTOCOLS_SHORT_LBL ;
 TYPE_6__ conf ;
 int strlen (int ) ;

__attribute__((used)) static void
set_max_protocol_len (GDashMeta * meta, GDashData * idata)
{
  int vlen = 0, llen = 0;

  if (!conf.append_protocol || !idata->metrics->protocol)
    return;

  vlen = strlen (idata->metrics->protocol);
  llen = strlen (MTRC_PROTOCOLS_SHORT_LBL);

  if (vlen > meta->protocol_len)
    meta->protocol_len = vlen;



  if (llen > meta->protocol_len)
    meta->protocol_len = llen;
}
