#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ json_pretty_print; } ;
struct TYPE_4__ {scalar_t__ lbl; scalar_t__ datakey; scalar_t__ datatype; scalar_t__ metalbl; scalar_t__ metatype; scalar_t__ metakey; scalar_t__ cwidth; scalar_t__ cname; } ;
typedef  TYPE_1__ GDefMetric ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_3__ conf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__,int,int) ; 

__attribute__((used)) static void
FUNC1 (FILE * fp, const GDefMetric def, int sp)
{
  int isp = 0;

  /* use tabs to prettify output */
  if (conf.json_pretty_print)
    isp = sp + 1;

  if (def.cname)
    FUNC0 (fp, "className", def.cname, isp, 0);
  if (def.cwidth)
    FUNC0 (fp, "colWidth", def.cwidth, isp, 0);
  if (def.metakey)
    FUNC0 (fp, "meta", def.metakey, isp, 0);
  if (def.metatype)
    FUNC0 (fp, "metaType", def.metatype, isp, 0);
  if (def.metalbl)
    FUNC0 (fp, "metaLabel", def.metalbl, isp, 0);
  if (def.datatype)
    FUNC0 (fp, "dataType", def.datatype, isp, 0);
  if (def.datakey)
    FUNC0 (fp, "key", def.datakey, isp, 0);
  if (def.lbl)
    FUNC0 (fp, "label", def.lbl, isp, 1);
}