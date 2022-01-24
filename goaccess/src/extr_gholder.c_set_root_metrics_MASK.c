#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_14__ {int nbw; } ;
struct TYPE_13__ {int nts; } ;
struct TYPE_12__ {int nts; } ;
struct TYPE_11__ {int nts; } ;
struct TYPE_16__ {char* data; int hits; int visitors; TYPE_4__ bw; TYPE_3__ maxts; TYPE_2__ cumts; TYPE_1__ avgts; } ;
struct TYPE_15__ {int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  GRawDataType ;
typedef  TYPE_5__ GRawDataItem ;
typedef  int /*<<< orphan*/  GModule ;
typedef  TYPE_6__ GMetrics ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_5__,int /*<<< orphan*/ ,char**,int*) ; 

__attribute__((used)) static int
FUNC6 (GRawDataItem item, GRawDataType type, GModule module,
                  GMetrics ** nmetrics)
{
  GMetrics *metrics;
  char *data = NULL;
  uint64_t bw = 0, cumts = 0, maxts = 0;
  int hits = 0, visitors = 0;

  if (FUNC5 (module, item, type, &data, &hits) == 1)
    return 1;

  bw = FUNC0 (module, item.key);
  cumts = FUNC1 (module, item.key);
  maxts = FUNC2 (module, item.key);
  visitors = FUNC3 (module, item.key);

  metrics = FUNC4 ();
  metrics->avgts.nts = cumts / hits;
  metrics->cumts.nts = cumts;
  metrics->maxts.nts = maxts;
  metrics->bw.nbw = bw;
  metrics->data = data;
  metrics->hits = hits;
  metrics->visitors = visitors;
  *nmetrics = metrics;

  return 0;
}