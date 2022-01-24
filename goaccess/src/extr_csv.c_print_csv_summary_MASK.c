#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char* intmax_t ;
struct TYPE_3__ {int processed; int valid; int invalid; int excluded_ip; char* resp_size; } ;
typedef  TYPE_1__ GLog ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int DATE_TIME ; 
 int /*<<< orphan*/  GENER_ID ; 
 int /*<<< orphan*/  NOT_FOUND ; 
 int /*<<< orphan*/  OVERALL_BANDWIDTH ; 
 int /*<<< orphan*/  OVERALL_DATETIME ; 
 int /*<<< orphan*/  OVERALL_EXCL_HITS ; 
 int /*<<< orphan*/  OVERALL_FAILED ; 
 int /*<<< orphan*/  OVERALL_FILES ; 
 int /*<<< orphan*/  OVERALL_GENTIME ; 
 int /*<<< orphan*/  OVERALL_LOG ; 
 int /*<<< orphan*/  OVERALL_LOGSIZE ; 
 int /*<<< orphan*/  OVERALL_NOTFOUND ; 
 int /*<<< orphan*/  OVERALL_REF ; 
 int /*<<< orphan*/  OVERALL_REQ ; 
 int /*<<< orphan*/  OVERALL_STATIC ; 
 int /*<<< orphan*/  OVERALL_VALID ; 
 int /*<<< orphan*/  OVERALL_VISITORS ; 
 int /*<<< orphan*/  REFERRERS ; 
 int /*<<< orphan*/  REQUESTS ; 
 int /*<<< orphan*/  REQUESTS_STATIC ; 
 int /*<<< orphan*/  VISITORS ; 
 scalar_t__ end_proc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  now_tm ; 
 long long start_proc ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8 (FILE * fp, GLog * glog)
{
  char now[DATE_TIME];
  char *source = NULL;
  const char *fmt;
  int i = 0, total = 0;
  long long t = 0LL;

  FUNC2 ();
  FUNC7 (now, DATE_TIME, "%Y-%m-%d %H:%M:%S %z", now_tm);

  /* generated date time */
  fmt = "\"%d\",,\"%s\",,,,,,,,\"%s\",\"%s\"\r\n";
  FUNC0 (fp, fmt, i++, GENER_ID, now, OVERALL_DATETIME);

  /* total requests */
  fmt = "\"%d\",,\"%s\",,,,,,,,\"%d\",\"%s\"\r\n";
  total = glog->processed;
  FUNC0 (fp, fmt, i++, GENER_ID, total, OVERALL_REQ);

  /* valid requests */
  fmt = "\"%d\",,\"%s\",,,,,,,,\"%d\",\"%s\"\r\n";
  total = glog->valid;
  FUNC0 (fp, fmt, i++, GENER_ID, total, OVERALL_VALID);

  /* invalid requests */
  total = glog->invalid;
  FUNC0 (fp, fmt, i++, GENER_ID, total, OVERALL_FAILED);

  /* generated time */
  fmt = "\"%d\",,\"%s\",,,,,,,,\"%lld\",\"%s\"\r\n";
  t = (long long) end_proc - start_proc;
  FUNC0 (fp, fmt, i++, GENER_ID, t, OVERALL_GENTIME);

  /* visitors */
  fmt = "\"%d\",,\"%s\",,,,,,,,\"%d\",\"%s\"\r\n";
  total = FUNC6 (VISITORS);
  FUNC0 (fp, fmt, i++, GENER_ID, total, OVERALL_VISITORS);

  /* files */
  total = FUNC5 (REQUESTS);
  FUNC0 (fp, fmt, i++, GENER_ID, total, OVERALL_FILES);

  /* excluded hits */
  total = glog->excluded_ip;
  FUNC0 (fp, fmt, i++, GENER_ID, total, OVERALL_EXCL_HITS);

  /* referrers */
  total = FUNC5 (REFERRERS);
  FUNC0 (fp, fmt, i++, GENER_ID, total, OVERALL_REF);

  /* not found */
  total = FUNC5 (NOT_FOUND);
  FUNC0 (fp, fmt, i++, GENER_ID, total, OVERALL_NOTFOUND);

  /* static files */
  total = FUNC5 (REQUESTS_STATIC);
  FUNC0 (fp, fmt, i++, GENER_ID, total, OVERALL_STATIC);

  /* log size */
  fmt = "\"%d\",,\"%s\",,,,,,,,\"%jd\",\"%s\"\r\n";
  FUNC0 (fp, fmt, i++, GENER_ID, (intmax_t) FUNC3 (),
           OVERALL_LOGSIZE);

  /* bandwidth */
  fmt = "\"%d\",,\"%s\",,,,,,,,\"%llu\",\"%s\"\r\n";
  FUNC0 (fp, fmt, i++, GENER_ID, glog->resp_size, OVERALL_BANDWIDTH);

  /* log path */
  source = FUNC4 (0);
  fmt = "\"%d\",,\"%s\",,,,,,,,\"%s\",\"%s\"\r\n";
  FUNC0 (fp, fmt, i++, GENER_ID, source, OVERALL_LOG);
  FUNC1 (source);
}