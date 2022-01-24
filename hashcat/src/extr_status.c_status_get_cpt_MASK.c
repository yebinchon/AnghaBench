#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct TYPE_10__ {TYPE_2__* cpt_ctx; } ;
typedef  TYPE_1__ hashcat_ctx_t ;
struct TYPE_11__ {scalar_t__ const cpt_start; } ;
typedef  TYPE_2__ cpt_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,char*,int const,int const,int const,...) ; 
 int FUNC1 (TYPE_1__ const*) ; 
 int FUNC2 (TYPE_1__ const*) ; 
 int FUNC3 (TYPE_1__ const*) ; 
 int FUNC4 (TYPE_1__ const*) ; 
 int FUNC5 (TYPE_1__ const*) ; 
 int FUNC6 (TYPE_1__ const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

char *FUNC8 (const hashcat_ctx_t *hashcat_ctx)
{
  const cpt_ctx_t *cpt_ctx = hashcat_ctx->cpt_ctx;

  const time_t now = FUNC7 (NULL);

  char *cpt;

  const int cpt_cur_min  = FUNC6  (hashcat_ctx);
  const int cpt_cur_hour = FUNC5 (hashcat_ctx);
  const int cpt_cur_day  = FUNC4  (hashcat_ctx);

  const int cpt_avg_min  = FUNC3  (hashcat_ctx);
  const int cpt_avg_hour = FUNC2 (hashcat_ctx);
  const int cpt_avg_day  = FUNC1  (hashcat_ctx);

  if ((cpt_ctx->cpt_start + 86400) < now)
  {
    FUNC0 (&cpt, "CUR:%d,%d,%d AVG:%d,%d,%d (Min,Hour,Day)",
      cpt_cur_min,
      cpt_cur_hour,
      cpt_cur_day,
      cpt_avg_min,
      cpt_avg_hour,
      cpt_avg_day);
  }
  else if ((cpt_ctx->cpt_start + 3600) < now)
  {
    FUNC0 (&cpt, "CUR:%d,%d,N/A AVG:%d,%d,%d (Min,Hour,Day)",
      cpt_cur_min,
      cpt_cur_hour,
      cpt_avg_min,
      cpt_avg_hour,
      cpt_avg_day);
  }
  else if ((cpt_ctx->cpt_start + 60) < now)
  {
    FUNC0 (&cpt, "CUR:%d,N/A,N/A AVG:%d,%d,%d (Min,Hour,Day)",
      cpt_cur_min,
      cpt_avg_min,
      cpt_avg_hour,
      cpt_avg_day);
  }
  else
  {
    FUNC0 (&cpt, "CUR:N/A,N/A,N/A AVG:%d,%d,%d (Min,Hour,Day)",
      cpt_avg_min,
      cpt_avg_hour,
      cpt_avg_day);
  }

  return cpt;
}