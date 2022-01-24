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
struct TYPE_4__ {int benchmark_all; } ;
typedef  TYPE_1__ user_options_t ;
struct TYPE_5__ {TYPE_1__* user_options; int /*<<< orphan*/ * folder_config; } ;
typedef  TYPE_2__ hashcat_ctx_t ;
typedef  int /*<<< orphan*/  folder_config_t ;

/* Variables and functions */
 int* DEFAULT_BENCHMARK_ALGORITHMS_BUF ; 
 int /*<<< orphan*/  HCBUFSIZ_TINY ; 
 int MODULE_HASH_MODES_MAXIMUM ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int,char*,int /*<<< orphan*/ ) ; 

int FUNC4 (hashcat_ctx_t *hashcat_ctx)
{
  const folder_config_t *folder_config = hashcat_ctx->folder_config;
  const user_options_t  *user_options  = hashcat_ctx->user_options;

  static int cur = 0;

  if (user_options->benchmark_all == false)
  {
    const int hash_mode = DEFAULT_BENCHMARK_ALGORITHMS_BUF[cur];

    if (hash_mode == -1) return -1;

    cur++;

    return hash_mode;
  }

  char *modulefile = (char *) FUNC2 (HCBUFSIZ_TINY);

  for (int i = cur; i < MODULE_HASH_MODES_MAXIMUM; i++)
  {
    FUNC3 (folder_config, i, modulefile, HCBUFSIZ_TINY);

    if (FUNC0 (modulefile) == true)
    {
      const int hash_mode = i;

      cur = hash_mode + 1;

      FUNC1 (modulefile);

      return hash_mode;
    }
  }

  FUNC1 (modulefile);

  return -1;
}