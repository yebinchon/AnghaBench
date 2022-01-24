#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ append_protocol; scalar_t__ append_method; scalar_t__ serve_usecs; scalar_t__ bandwidth; } ;
struct TYPE_11__ {scalar_t__ nts; } ;
struct TYPE_10__ {scalar_t__ nts; } ;
struct TYPE_9__ {scalar_t__ nts; } ;
struct TYPE_8__ {scalar_t__ nbw; } ;
struct TYPE_12__ {int hits; double hits_perc; int visitors; double visitors_perc; double bw_perc; char* method; char* protocol; int /*<<< orphan*/  data; TYPE_4__ maxts; TYPE_3__ cumts; TYPE_2__ avgts; TYPE_1__ bw; } ;
typedef  TYPE_5__ GMetrics ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_7__ conf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void
FUNC2 (FILE * fp, GMetrics * nmetrics)
{
  /* basic metrics */
  FUNC1 (fp, "\"%d\",", nmetrics->hits);
  FUNC1 (fp, "\"%4.2f%%\",", nmetrics->hits_perc);
  FUNC1 (fp, "\"%d\",", nmetrics->visitors);
  FUNC1 (fp, "\"%4.2f%%\",", nmetrics->visitors_perc);

  /* bandwidth */
  if (conf.bandwidth) {
    FUNC1 (fp, "\"%lld\",", (long long) nmetrics->bw.nbw);
    FUNC1 (fp, "\"%4.2f%%\",", nmetrics->bw_perc);
  }

  /* time served metrics */
  if (conf.serve_usecs) {
    FUNC1 (fp, "\"%lld\",", (long long) nmetrics->avgts.nts);
    FUNC1 (fp, "\"%lld\",", (long long) nmetrics->cumts.nts);
    FUNC1 (fp, "\"%lld\",", (long long) nmetrics->maxts.nts);
  }

  /* request method */
  if (conf.append_method && nmetrics->method)
    FUNC1 (fp, "\"%s\"", nmetrics->method);
  FUNC1 (fp, ",");

  /* request protocol */
  if (conf.append_protocol && nmetrics->protocol)
    FUNC1 (fp, "\"%s\"", nmetrics->protocol);
  FUNC1 (fp, ",");

  /* data field */
  FUNC1 (fp, "\"");
  FUNC0 (fp, nmetrics->data);
  FUNC1 (fp, "\"\r\n");
}