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
struct TYPE_4__ {int enabled; scalar_t__ induction_dictionaries_cnt; int /*<<< orphan*/  induction_dictionaries; int /*<<< orphan*/  root_directory; } ;
typedef  TYPE_1__ induct_ctx_t ;
struct TYPE_5__ {TYPE_1__* induct_ctx; } ;
typedef  TYPE_2__ hashcat_ctx_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sort_by_mtime ; 

void FUNC3 (hashcat_ctx_t *hashcat_ctx)
{
  induct_ctx_t *induct_ctx = hashcat_ctx->induct_ctx;

  if (induct_ctx->enabled == false) return;

  induct_ctx->induction_dictionaries = FUNC2 (induct_ctx->root_directory);

  induct_ctx->induction_dictionaries_cnt = FUNC0 (induct_ctx->induction_dictionaries);

  FUNC1 (induct_ctx->induction_dictionaries, (size_t) induct_ctx->induction_dictionaries_cnt, sizeof (char *), sort_by_mtime);
}