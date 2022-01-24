#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int quiet; int keyspace; int stdout_flag; int show; int left; int benchmark; int machine_readable; int workload_profile_chgd; int restore; int speed_only; int progress_only; int force; } ;
typedef  TYPE_1__ user_options_t ;
struct TYPE_8__ {TYPE_1__* user_options; } ;
typedef  TYPE_2__ hashcat_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  PROGNAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 

void FUNC3 (hashcat_ctx_t *hashcat_ctx, const char *version_tag)
{
  const user_options_t *user_options = hashcat_ctx->user_options;

  if (user_options->quiet       == true) return;
  if (user_options->keyspace    == true) return;
  if (user_options->stdout_flag == true) return;
  if (user_options->show        == true) return;
  if (user_options->left        == true) return;

  if (user_options->benchmark == true)
  {
    if (user_options->machine_readable == false)
    {
      FUNC1 (hashcat_ctx, "%s (%s) starting in benchmark mode...", PROGNAME, version_tag);

      FUNC1 (hashcat_ctx, NULL);

      if (user_options->workload_profile_chgd == false)
      {
        FUNC0 (hashcat_ctx, "Benchmarking uses hand-optimized kernel code by default.");
        FUNC0 (hashcat_ctx, "You can use it in your cracking session by setting the -O option.");
        FUNC0 (hashcat_ctx, "Note: Using optimized kernel code limits the maximum supported password length.");
        FUNC0 (hashcat_ctx, "To disable the optimized kernel code in benchmark mode, use the -w option.");
        FUNC0 (hashcat_ctx, NULL);
      }
    }
    else
    {
      FUNC1 (hashcat_ctx, "# version: %s", version_tag);
    }
  }
  else if (user_options->restore == true)
  {
    FUNC1 (hashcat_ctx, "%s (%s) starting in restore mode...", PROGNAME, version_tag);
    FUNC1 (hashcat_ctx, NULL);
  }
  else if (user_options->speed_only == true)
  {
    FUNC1 (hashcat_ctx, "%s (%s) starting in speed-only mode...", PROGNAME, version_tag);
    FUNC1 (hashcat_ctx, NULL);
  }
  else if (user_options->progress_only == true)
  {
    FUNC1 (hashcat_ctx, "%s (%s) starting in progress-only mode...", PROGNAME, version_tag);
    FUNC1 (hashcat_ctx, NULL);
  }
  else
  {
    FUNC1 (hashcat_ctx, "%s (%s) starting...", PROGNAME, version_tag);
    FUNC1 (hashcat_ctx, NULL);
  }

  if (user_options->force == true)
  {
    FUNC2 (hashcat_ctx, "You have enabled --force to bypass dangerous warnings and errors!");
    FUNC2 (hashcat_ctx, "This can hide serious problems and should only be done when debugging.");
    FUNC2 (hashcat_ctx, "Do not report hashcat issues encountered when using --force.");
  }
}