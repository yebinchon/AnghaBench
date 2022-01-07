
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ json_pretty_print; } ;
struct TYPE_4__ {scalar_t__ lbl; scalar_t__ datakey; scalar_t__ datatype; scalar_t__ metalbl; scalar_t__ metatype; scalar_t__ metakey; scalar_t__ cwidth; scalar_t__ cname; } ;
typedef TYPE_1__ GDefMetric ;
typedef int FILE ;


 TYPE_3__ conf ;
 int fpskeysval (int *,char*,scalar_t__,int,int) ;

__attribute__((used)) static void
print_def_metric (FILE * fp, const GDefMetric def, int sp)
{
  int isp = 0;


  if (conf.json_pretty_print)
    isp = sp + 1;

  if (def.cname)
    fpskeysval (fp, "className", def.cname, isp, 0);
  if (def.cwidth)
    fpskeysval (fp, "colWidth", def.cwidth, isp, 0);
  if (def.metakey)
    fpskeysval (fp, "meta", def.metakey, isp, 0);
  if (def.metatype)
    fpskeysval (fp, "metaType", def.metatype, isp, 0);
  if (def.metalbl)
    fpskeysval (fp, "metaLabel", def.metalbl, isp, 0);
  if (def.datatype)
    fpskeysval (fp, "dataType", def.datatype, isp, 0);
  if (def.datakey)
    fpskeysval (fp, "key", def.datakey, isp, 0);
  if (def.lbl)
    fpskeysval (fp, "label", def.lbl, isp, 1);
}
