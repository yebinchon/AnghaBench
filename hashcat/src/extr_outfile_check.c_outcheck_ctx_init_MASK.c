#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int keyspace; int benchmark; int example_hashes; int speed_only; int progress_only; int backend_info; scalar_t__ outfile_check_timer; int /*<<< orphan*/ * outfile_check_dir; int /*<<< orphan*/  session; } ;
typedef  TYPE_1__ user_options_t ;
struct TYPE_9__ {int enabled; int /*<<< orphan*/ * root_directory; } ;
typedef  TYPE_2__ outcheck_ctx_t ;
struct TYPE_10__ {int outfile_check_disable; } ;
typedef  TYPE_3__ hashconfig_t ;
struct TYPE_11__ {TYPE_1__* user_options; TYPE_2__* outcheck_ctx; TYPE_3__* hashconfig; TYPE_5__* folder_config; } ;
typedef  TYPE_4__ hashcat_ctx_t ;
struct TYPE_12__ {int /*<<< orphan*/  session_dir; } ;
typedef  TYPE_5__ folder_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  OUTFILES_DIR ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5 (hashcat_ctx_t *hashcat_ctx)
{
  const folder_config_t *folder_config = hashcat_ctx->folder_config;
  const hashconfig_t    *hashconfig    = hashcat_ctx->hashconfig;
        outcheck_ctx_t  *outcheck_ctx  = hashcat_ctx->outcheck_ctx;
  const user_options_t  *user_options  = hashcat_ctx->user_options;

  outcheck_ctx->enabled = false;

  if (user_options->keyspace       == true) return 0;
  if (user_options->benchmark      == true) return 0;
  if (user_options->example_hashes == true) return 0;
  if (user_options->speed_only     == true) return 0;
  if (user_options->progress_only  == true) return 0;
  if (user_options->backend_info   == true) return 0;

  if (hashconfig->outfile_check_disable == true) return 0;

  if (user_options->outfile_check_timer == 0) return 0;

  if (user_options->outfile_check_dir == NULL)
  {
    FUNC1 (&outcheck_ctx->root_directory, "%s/%s.%s", folder_config->session_dir, user_options->session, OUTFILES_DIR);
  }
  else
  {
    outcheck_ctx->root_directory = user_options->outfile_check_dir;
  }

  outcheck_ctx->enabled = true;

  if (FUNC3 (outcheck_ctx->root_directory) == false)
  {
    if (FUNC2 (outcheck_ctx->root_directory, 0700) == -1)
    {
      FUNC0 (hashcat_ctx, "%s: %s", outcheck_ctx->root_directory, FUNC4 (errno));

      return -1;
    }
  }

  return 0;
}