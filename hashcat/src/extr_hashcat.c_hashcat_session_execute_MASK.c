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
struct TYPE_13__ {int benchmark; int quiet; int hash_mode_chgd; int hash_mode; int speed_only; } ;
typedef  TYPE_1__ user_options_t ;
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_14__ {int run_main_level1; scalar_t__ devices_status; } ;
typedef  TYPE_2__ status_ctx_t ;
typedef  int /*<<< orphan*/  logfile_ctx_t ;
struct TYPE_15__ {TYPE_1__* user_options; TYPE_2__* status_ctx; int /*<<< orphan*/ * logfile_ctx; } ;
typedef  TYPE_3__ hashcat_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVENT_OUTERLOOP_FINISHED ; 
 int /*<<< orphan*/  EVENT_OUTERLOOP_STARTING ; 
 scalar_t__ STATUS_ABORTED ; 
 scalar_t__ STATUS_ABORTED_CHECKPOINT ; 
 scalar_t__ STATUS_ABORTED_RUNTIME ; 
 scalar_t__ STATUS_CRACKED ; 
 scalar_t__ STATUS_ERROR ; 
 scalar_t__ STATUS_EXHAUSTED ; 
 scalar_t__ STATUS_QUIT ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 

int FUNC12 (hashcat_ctx_t *hashcat_ctx)
{
  logfile_ctx_t  *logfile_ctx  = hashcat_ctx->logfile_ctx;
  status_ctx_t   *status_ctx   = hashcat_ctx->status_ctx;
  user_options_t *user_options = hashcat_ctx->user_options;

  // start logfile entry

  const time_t proc_start = FUNC9 (NULL);

  FUNC4 (hashcat_ctx);

  FUNC5 ("START");

  // add all user options to logfile in case we want to debug some user session

  FUNC11 (hashcat_ctx);

  // read dictionary cache

  FUNC2 (hashcat_ctx);

  /**
   * outer loop
   */

  FUNC0 (EVENT_OUTERLOOP_STARTING);

  int rc_final = -1;

  if (user_options->benchmark == true)
  {
    user_options->quiet = true;

    if (user_options->hash_mode_chgd == true)
    {
      rc_final = FUNC8 (hashcat_ctx);

      if (rc_final == -1) FUNC7 (hashcat_ctx);
    }
    else
    {
      int hash_mode = 0;

      while ((hash_mode = FUNC1 (hashcat_ctx)) != -1)
      {
        user_options->hash_mode = hash_mode;

        rc_final = FUNC8 (hashcat_ctx);

        if (rc_final == -1) FUNC7 (hashcat_ctx);

        if (status_ctx->run_main_level1 == false) break;
      }
    }

    user_options->quiet = false;
  }
  else
  {
    if (user_options->speed_only == true) user_options->quiet = true;

    rc_final = FUNC8 (hashcat_ctx);

    if (rc_final == -1) FUNC7 (hashcat_ctx);

    if (user_options->speed_only == true) user_options->quiet = false;
  }

  FUNC0 (EVENT_OUTERLOOP_FINISHED);

  // if exhausted or cracked, unlink the restore file

  FUNC10 (hashcat_ctx);

  // final update dictionary cache

  FUNC3 (hashcat_ctx);

  // final logfile entry

  const time_t proc_stop = FUNC9 (NULL);

  FUNC6 (proc_start);
  FUNC6 (proc_stop);

  FUNC5 ("STOP");

  // free memory

  if (rc_final == 0)
  {
    if (status_ctx->devices_status == STATUS_ABORTED_RUNTIME)     rc_final =  4;
    if (status_ctx->devices_status == STATUS_ABORTED_CHECKPOINT)  rc_final =  3;
    if (status_ctx->devices_status == STATUS_ABORTED)             rc_final =  2;
    if (status_ctx->devices_status == STATUS_QUIT)                rc_final =  2;
    if (status_ctx->devices_status == STATUS_EXHAUSTED)           rc_final =  1;
    if (status_ctx->devices_status == STATUS_CRACKED)             rc_final =  0;
    if (status_ctx->devices_status == STATUS_ERROR)               rc_final = -1;
  }

  // done

  return rc_final;
}