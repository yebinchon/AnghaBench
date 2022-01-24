#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_20__ {size_t idx; TYPE_5__* items; int /*<<< orphan*/  module; } ;
struct TYPE_19__ {int /*<<< orphan*/  key; } ;
struct TYPE_18__ {TYPE_10__* metrics; } ;
struct TYPE_17__ {int nts; } ;
struct TYPE_16__ {int nts; } ;
struct TYPE_15__ {int nts; } ;
struct TYPE_14__ {int nbw; } ;
struct TYPE_13__ {scalar_t__ append_protocol; scalar_t__ append_method; } ;
struct TYPE_12__ {int hits; char* data; int visitors; char* method; char* protocol; TYPE_4__ maxts; TYPE_3__ cumts; TYPE_2__ avgts; TYPE_1__ bw; } ;
typedef  TYPE_6__ GRawDataItem ;
typedef  TYPE_7__ GHolder ;

/* Variables and functions */
 TYPE_11__ conf ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_10__* FUNC6 () ; 

__attribute__((used)) static void
FUNC7 (GRawDataItem item, GHolder * h, char *data, int hits)
{
  char *method = NULL, *protocol = NULL;
  int visitors = 0;
  uint64_t bw = 0, cumts = 0, maxts = 0;

  bw = FUNC0 (h->module, item.key);
  cumts = FUNC1 (h->module, item.key);
  maxts = FUNC2 (h->module, item.key);
  visitors = FUNC5 (h->module, item.key);

  h->items[h->idx].metrics = FUNC6 ();
  h->items[h->idx].metrics->hits = hits;
  h->items[h->idx].metrics->data = data;
  h->items[h->idx].metrics->visitors = visitors;
  h->items[h->idx].metrics->bw.nbw = bw;
  h->items[h->idx].metrics->avgts.nts = cumts / hits;
  h->items[h->idx].metrics->cumts.nts = cumts;
  h->items[h->idx].metrics->maxts.nts = maxts;

  if (conf.append_method) {
    method = FUNC3 (h->module, item.key);
    h->items[h->idx].metrics->method = method;
  }

  if (conf.append_protocol) {
    protocol = FUNC4 (h->module, item.key);
    h->items[h->idx].metrics->protocol = protocol;
  }
}