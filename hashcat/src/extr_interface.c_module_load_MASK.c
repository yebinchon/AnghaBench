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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_7__ {int /*<<< orphan*/ * module_init; int /*<<< orphan*/ * module_handle; } ;
typedef  TYPE_1__ module_ctx_t ;
struct TYPE_8__ {int /*<<< orphan*/ * folder_config; } ;
typedef  TYPE_2__ hashcat_ctx_t ;
typedef  int /*<<< orphan*/  folder_config_t ;
typedef  int /*<<< orphan*/ * MODULE_INIT ;

/* Variables and functions */
 int /*<<< orphan*/  HCBUFSIZ_TINY ; 
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const,char*,int /*<<< orphan*/ ) ; 

bool FUNC8 (hashcat_ctx_t *hashcat_ctx, module_ctx_t *module_ctx, const u32 hash_mode)
{
  const folder_config_t *folder_config = hashcat_ctx->folder_config;

  FUNC6 (module_ctx, 0, sizeof (module_ctx_t));

  char *module_file = (char *) FUNC5 (HCBUFSIZ_TINY);

  FUNC7 (folder_config, hash_mode, module_file, HCBUFSIZ_TINY);

  module_ctx->module_handle = FUNC2 (module_file);

  if (module_ctx->module_handle == NULL)
  {
    #if defined (_WIN)
    event_log_error (hashcat_ctx, "Cannot load module %s", module_file); // todo: maybe there's a dlerror () equivalent
    #else
    FUNC1 (hashcat_ctx, "%s", FUNC0 ());
    #endif

    return false;
  }

  module_ctx->module_init = (MODULE_INIT) FUNC3 (module_ctx->module_handle, "module_init");

  if (module_ctx->module_init == NULL)
  {
    FUNC1 (hashcat_ctx, "Cannot load symbol 'module_init' in module %s", module_file);

    return false;
  }

  FUNC4 (module_file);

  return true;
}