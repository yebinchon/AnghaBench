#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ runtime; } ;
typedef  TYPE_1__ user_options_t ;
typedef  int time_t ;
struct tm {int dummy; } ;
struct TYPE_7__ {TYPE_1__* user_options; } ;
typedef  TYPE_2__ hashcat_ctx_t ;

/* Variables and functions */
 char* ETA_RELATIVE_MAX_EXCEEDED ; 
 int /*<<< orphan*/  HCBUFSIZ_TINY ; 
 int /*<<< orphan*/  FUNC0 (struct tm*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (TYPE_2__ const*) ; 
 struct tm* FUNC3 (int*,struct tm*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*,char*,...) ; 
 int FUNC6 (TYPE_2__ const*) ; 
 char* FUNC7 (char*) ; 

char *FUNC8 (const hashcat_ctx_t *hashcat_ctx)
{
  const user_options_t *user_options = hashcat_ctx->user_options;

  char *display = (char *) FUNC4 (HCBUFSIZ_TINY);

  time_t sec_etc = FUNC6 (hashcat_ctx);

  struct tm *tmp;
  struct tm  tm;

  tmp = FUNC3 (&sec_etc, &tm);

  if (tmp == NULL)
  {
    FUNC5 (display, HCBUFSIZ_TINY, "%s", ETA_RELATIVE_MAX_EXCEEDED);
  }
  else
  {
    FUNC0 (tmp, display, HCBUFSIZ_TINY);
  }

  if (user_options->runtime > 0)
  {
    const int runtime_left = FUNC2 (hashcat_ctx);

    char *tmp_display = FUNC7 (display);

    if (runtime_left > 0)
    {
      time_t sec_left = runtime_left;

      struct tm *tmp_left;
      struct tm  tm_left;

      tmp_left = FUNC3 (&sec_left, &tm_left);

      char *display_left = (char *) FUNC4 (HCBUFSIZ_TINY);

      FUNC0 (tmp_left, display_left, HCBUFSIZ_TINY);

      FUNC5 (display, HCBUFSIZ_TINY, "%s; Runtime limited: %s", tmp_display, display_left);

      FUNC1 (display_left);
    }
    else
    {
      FUNC5 (display, HCBUFSIZ_TINY, "%s; Runtime limit exceeded", tmp_display);
    }

    FUNC1 (tmp_display);
  }

  return display;
}