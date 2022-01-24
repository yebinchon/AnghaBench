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
struct TYPE_4__ {int /*<<< orphan*/  hash_name; } ;
typedef  TYPE_1__ hashconfig_t ;
struct TYPE_5__ {TYPE_1__* hashconfig; } ;
typedef  TYPE_2__ hashcat_ctx_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 

char *FUNC1 (const hashcat_ctx_t *hashcat_ctx)
{
  const hashconfig_t *hashconfig = hashcat_ctx->hashconfig;

  return FUNC0 (hashconfig->hash_name);
}