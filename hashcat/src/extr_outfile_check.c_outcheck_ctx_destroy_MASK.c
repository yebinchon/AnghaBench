#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * outfile_check_dir; } ;
typedef  TYPE_1__ user_options_t ;
struct TYPE_9__ {int enabled; int /*<<< orphan*/  root_directory; } ;
typedef  TYPE_2__ outcheck_ctx_t ;
struct TYPE_10__ {int outfile_check_disable; } ;
typedef  TYPE_3__ hashconfig_t ;
struct TYPE_11__ {TYPE_1__* user_options; TYPE_2__* outcheck_ctx; TYPE_3__* hashconfig; } ;
typedef  TYPE_4__ hashcat_ctx_t ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ ENOTEMPTY ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5 (hashcat_ctx_t *hashcat_ctx)
{
  hashconfig_t   *hashconfig   = hashcat_ctx->hashconfig;
  outcheck_ctx_t *outcheck_ctx = hashcat_ctx->outcheck_ctx;
  user_options_t *user_options = hashcat_ctx->user_options;

  if (outcheck_ctx->enabled == false) return;

  if (hashconfig->outfile_check_disable == true) return;

  if (FUNC3 (outcheck_ctx->root_directory) == -1)
  {
    if (errno == ENOENT)
    {
      // good, we can ignore
    }
    else if (errno == ENOTEMPTY)
    {
      // good, we can ignore
    }
    else
    {
      FUNC0 (hashcat_ctx, "%s: %s", outcheck_ctx->root_directory, FUNC4 (errno));

      //return -1;
    }
  }

  if (user_options->outfile_check_dir == NULL)
  {
    FUNC1 (outcheck_ctx->root_directory);
  }

  FUNC2 (outcheck_ctx, 0, sizeof (outcheck_ctx_t));
}