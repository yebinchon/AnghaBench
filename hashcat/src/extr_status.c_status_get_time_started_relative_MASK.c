#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ const time_t ;
struct tm {int dummy; } ;
struct TYPE_4__ {scalar_t__ const runtime_start; } ;
typedef  TYPE_1__ status_ctx_t ;
struct TYPE_5__ {TYPE_1__* status_ctx; } ;
typedef  TYPE_2__ hashcat_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  HCBUFSIZ_TINY ; 
 int /*<<< orphan*/  FUNC0 (struct tm*,char*,int /*<<< orphan*/ ) ; 
 struct tm* FUNC1 (scalar_t__ const*,struct tm*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__ const*) ; 

char *FUNC4 (const hashcat_ctx_t *hashcat_ctx)
{
  const status_ctx_t *status_ctx = hashcat_ctx->status_ctx;

  time_t time_now;

  FUNC3 (&time_now);

  const time_t time_start = status_ctx->runtime_start;

  time_t sec_run = time_now - time_start;

  struct tm *tmp;
  struct tm  tm;

  tmp = FUNC1 (&sec_run, &tm);

  char *display_run = (char *) FUNC2 (HCBUFSIZ_TINY);

  FUNC0 (tmp, display_run, HCBUFSIZ_TINY);

  return display_run;
}