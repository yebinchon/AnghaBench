#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int quiet; } ;
typedef  TYPE_1__ user_options_t ;
struct TYPE_14__ {scalar_t__ devices_status; int shutdown_outer; int checkpoint_shutdown; int /*<<< orphan*/  mux_display; } ;
typedef  TYPE_2__ status_ctx_t ;
struct TYPE_15__ {TYPE_1__* user_options; TYPE_2__* status_ctx; } ;
typedef  TYPE_3__ hashcat_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 scalar_t__ STATUS_INIT ; 
 scalar_t__ STATUS_PAUSED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static void FUNC14 (hashcat_ctx_t *hashcat_ctx)
{
  status_ctx_t   *status_ctx   = hashcat_ctx->status_ctx;
  user_options_t *user_options = hashcat_ctx->user_options;

  // this is required, because some of the variables down there are not initialized at that point
  while (status_ctx->devices_status == STATUS_INIT) FUNC13 (100000);

  const bool quiet = user_options->quiet;

  FUNC10 ();

  while (status_ctx->shutdown_outer == false)
  {
    int ch = FUNC12 ();

    if (ch == -1) break;

    if (ch ==  0) continue;

    //https://github.com/hashcat/hashcat/issues/302
    //#if defined (_POSIX)
    //if (ch != '\n')
    //#endif

    FUNC4 (status_ctx->mux_display);

    FUNC3 (hashcat_ctx, NULL);

    switch (ch)
    {
      case 's':
      case '\r':
      case '\n':

        FUNC3 (hashcat_ctx, NULL);

        FUNC8 (hashcat_ctx);

        FUNC3 (hashcat_ctx, NULL);

        if (quiet == false) FUNC7 (hashcat_ctx);

        break;

      case 'b':

        FUNC3 (hashcat_ctx, NULL);

        FUNC2 (hashcat_ctx);

        FUNC3 (hashcat_ctx, "Next dictionary / mask in queue selected. Bypassing current one.");

        FUNC3 (hashcat_ctx, NULL);

        if (quiet == false) FUNC7 (hashcat_ctx);

        break;

      case 'p':

        if (status_ctx->devices_status != STATUS_PAUSED)
        {
          FUNC3 (hashcat_ctx, NULL);

          FUNC1 (hashcat_ctx);

          if (status_ctx->devices_status == STATUS_PAUSED)
          {
            FUNC3 (hashcat_ctx, "Paused");
          }

          FUNC3 (hashcat_ctx, NULL);
        }

        if (quiet == false) FUNC7 (hashcat_ctx);

        break;

      case 'r':

        if (status_ctx->devices_status == STATUS_PAUSED)
        {
          FUNC3 (hashcat_ctx, NULL);

          FUNC0 (hashcat_ctx);

          if (status_ctx->devices_status != STATUS_PAUSED)
          {
            FUNC3 (hashcat_ctx, "Resumed");
          }

          FUNC3 (hashcat_ctx, NULL);
        }

        if (quiet == false) FUNC7 (hashcat_ctx);

        break;

      case 'c':

        FUNC3 (hashcat_ctx, NULL);

        FUNC9 (hashcat_ctx);

        if (status_ctx->checkpoint_shutdown == true)
        {
          FUNC3 (hashcat_ctx, "Checkpoint enabled. Will quit at next restore-point update.");
        }
        else
        {
          FUNC3 (hashcat_ctx, "Checkpoint disabled. Restore-point updates will no longer be monitored.");
        }

        FUNC3 (hashcat_ctx, NULL);

        if (quiet == false) FUNC7 (hashcat_ctx);

        break;

      case 'q':

        FUNC3 (hashcat_ctx, NULL);

        FUNC6 (hashcat_ctx);

        break;

      default:

        if (quiet == false) FUNC7 (hashcat_ctx);

        break;
    }

    //https://github.com/hashcat/hashcat/issues/302
    //#if defined (_POSIX)
    //if (ch != '\n')
    //#endif

    FUNC5 (status_ctx->mux_display);
  }

  FUNC11 ();
}