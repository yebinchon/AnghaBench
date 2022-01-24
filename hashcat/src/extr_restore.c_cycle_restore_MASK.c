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
struct TYPE_6__ {int enabled; char* eff_restore_file; char* new_restore_file; } ;
typedef  TYPE_1__ restore_ctx_t ;
struct TYPE_7__ {TYPE_1__* restore_ctx; } ;
typedef  TYPE_2__ hashcat_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,char const*,char const*,...) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*) ; 
 int FUNC5 (TYPE_2__*) ; 

int FUNC6 (hashcat_ctx_t *hashcat_ctx)
{
  restore_ctx_t *restore_ctx = hashcat_ctx->restore_ctx;

  if (restore_ctx->enabled == false) return 0;

  const char *eff_restore_file = restore_ctx->eff_restore_file;
  const char *new_restore_file = restore_ctx->new_restore_file;

  if (FUNC5 (hashcat_ctx) == -1) return -1;

  if (FUNC1 (eff_restore_file) == true)
  {
    if (FUNC4 (eff_restore_file) == -1)
    {
      FUNC0 (hashcat_ctx, "Unlink file '%s': %s", eff_restore_file, FUNC3 (errno));
    }
  }

  if (FUNC2 (new_restore_file, eff_restore_file) == -1)
  {
    FUNC0 (hashcat_ctx, "Rename file '%s' to '%s': %s", new_restore_file, eff_restore_file, FUNC3 (errno));
  }

  return 0;
}