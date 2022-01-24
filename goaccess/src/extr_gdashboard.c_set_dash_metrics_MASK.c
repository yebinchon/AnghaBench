#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_9__ ;
typedef  struct TYPE_35__   TYPE_8__ ;
typedef  struct TYPE_34__   TYPE_7__ ;
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_21__ ;
typedef  struct TYPE_27__   TYPE_20__ ;
typedef  struct TYPE_26__   TYPE_1__ ;
typedef  struct TYPE_25__   TYPE_13__ ;
typedef  struct TYPE_24__   TYPE_12__ ;
typedef  struct TYPE_23__   TYPE_11__ ;
typedef  struct TYPE_22__   TYPE_10__ ;

/* Type definitions */
struct TYPE_36__ {int /*<<< orphan*/  nts; } ;
struct TYPE_35__ {void* sts; } ;
struct TYPE_34__ {int /*<<< orphan*/  nts; } ;
struct TYPE_33__ {void* sts; } ;
struct TYPE_32__ {int /*<<< orphan*/  nts; } ;
struct TYPE_31__ {void* sts; } ;
struct TYPE_30__ {int /*<<< orphan*/  nbw; } ;
struct TYPE_29__ {int /*<<< orphan*/  sbw; } ;
struct TYPE_28__ {int /*<<< orphan*/  serve_usecs; scalar_t__ append_protocol; scalar_t__ append_method; } ;
struct TYPE_27__ {TYPE_8__ maxts; TYPE_6__ cumts; TYPE_4__ avgts; scalar_t__ protocol; scalar_t__ method; int /*<<< orphan*/  data; TYPE_2__ bw; void* visitors_perc; int /*<<< orphan*/  visitors; void* hits_perc; int /*<<< orphan*/  hits; } ;
struct TYPE_23__ {int /*<<< orphan*/  max_visitors; int /*<<< orphan*/  max_hits; } ;
struct TYPE_26__ {int idx_data; TYPE_11__ meta; TYPE_12__* data; } ;
struct TYPE_25__ {TYPE_1__* module; } ;
struct TYPE_24__ {int is_subitem; TYPE_20__* metrics; } ;
struct TYPE_22__ {char* data; TYPE_9__ maxts; TYPE_7__ cumts; TYPE_5__ avgts; scalar_t__ protocol; scalar_t__ method; TYPE_3__ bw; int /*<<< orphan*/  visitors; int /*<<< orphan*/  hits; } ;
typedef  size_t GModule ;
typedef  TYPE_10__ GMetrics ;
typedef  TYPE_11__ GDashMeta ;
typedef  TYPE_12__ GDashData ;
typedef  TYPE_13__ GDash ;

/* Variables and functions */
 TYPE_21__ conf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_20__* FUNC3 () ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_11__*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_11__*,TYPE_12__*) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void
FUNC9 (GDash ** dash, GMetrics * metrics, GModule module,
                  int is_subitem)
{
  GDashData *idata = NULL;
  GDashMeta *meta = NULL;
  char *data = NULL;
  int *idx;

  if (!metrics->data)
    return;

  idx = &(*dash)->module[module].idx_data;
  idata = &(*dash)->module[module].data[(*idx)];
  meta = &(*dash)->module[module].meta;

  idata->metrics = FUNC3 ();
  idata->is_subitem = is_subitem;

  data = is_subitem ? FUNC4 (metrics->data) : metrics->data;

  /* set maximum values so far for hits/visitors */
  FUNC5 (meta, metrics);

  idata->metrics->hits = metrics->hits;
  idata->metrics->hits_perc = FUNC2 (meta->max_hits, metrics->hits);
  idata->metrics->visitors = metrics->visitors;
  idata->metrics->visitors_perc =
    FUNC2 (meta->max_visitors, metrics->visitors);
  idata->metrics->bw.sbw = FUNC0 (metrics->bw.nbw);
  idata->metrics->data = FUNC8 (data);

  if (conf.append_method && metrics->method)
    idata->metrics->method = metrics->method;
  if (conf.append_protocol && metrics->protocol)
    idata->metrics->protocol = metrics->protocol;

  if (!conf.serve_usecs)
    goto out;

  idata->metrics->avgts.sts = FUNC7 (metrics->avgts.nts);
  idata->metrics->cumts.sts = FUNC7 (metrics->cumts.nts);
  idata->metrics->maxts.sts = FUNC7 (metrics->maxts.nts);

out:
  if (is_subitem)
    FUNC1 (data);

  FUNC6 (meta, idata);

  (*idx)++;
}