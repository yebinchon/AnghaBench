#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  wl_data; int /*<<< orphan*/  user_options; int /*<<< orphan*/  user_options_extra; int /*<<< orphan*/  tuning_db; int /*<<< orphan*/  straight_ctx; int /*<<< orphan*/  status_ctx; int /*<<< orphan*/  restore_ctx; int /*<<< orphan*/  potfile_ctx; int /*<<< orphan*/  pidfile_ctx; int /*<<< orphan*/  outfile_ctx; int /*<<< orphan*/  outcheck_ctx; int /*<<< orphan*/  backend_ctx; int /*<<< orphan*/  module_ctx; int /*<<< orphan*/  mask_ctx; int /*<<< orphan*/  loopback_ctx; int /*<<< orphan*/  logfile_ctx; int /*<<< orphan*/  induct_ctx; int /*<<< orphan*/  hwmon_ctx; int /*<<< orphan*/  hashes; int /*<<< orphan*/  hashconfig; int /*<<< orphan*/  hashcat_user; int /*<<< orphan*/  folder_config; int /*<<< orphan*/  event_ctx; int /*<<< orphan*/  dictstat_ctx; int /*<<< orphan*/  debugfile_ctx; int /*<<< orphan*/  cpt_ctx; int /*<<< orphan*/  combinator_ctx; int /*<<< orphan*/  bitmap_ctx; } ;
typedef  TYPE_1__ hashcat_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC2 (hashcat_ctx_t *hashcat_ctx)
{
  FUNC0 (hashcat_ctx->bitmap_ctx);
  FUNC0 (hashcat_ctx->combinator_ctx);
  FUNC0 (hashcat_ctx->cpt_ctx);
  FUNC0 (hashcat_ctx->debugfile_ctx);
  FUNC0 (hashcat_ctx->dictstat_ctx);
  FUNC0 (hashcat_ctx->event_ctx);
  FUNC0 (hashcat_ctx->folder_config);
  FUNC0 (hashcat_ctx->hashcat_user);
  FUNC0 (hashcat_ctx->hashconfig);
  FUNC0 (hashcat_ctx->hashes);
  FUNC0 (hashcat_ctx->hwmon_ctx);
  FUNC0 (hashcat_ctx->induct_ctx);
  FUNC0 (hashcat_ctx->logfile_ctx);
  FUNC0 (hashcat_ctx->loopback_ctx);
  FUNC0 (hashcat_ctx->mask_ctx);
  FUNC0 (hashcat_ctx->module_ctx);
  FUNC0 (hashcat_ctx->backend_ctx);
  FUNC0 (hashcat_ctx->outcheck_ctx);
  FUNC0 (hashcat_ctx->outfile_ctx);
  FUNC0 (hashcat_ctx->pidfile_ctx);
  FUNC0 (hashcat_ctx->potfile_ctx);
  FUNC0 (hashcat_ctx->restore_ctx);
  FUNC0 (hashcat_ctx->status_ctx);
  FUNC0 (hashcat_ctx->straight_ctx);
  FUNC0 (hashcat_ctx->tuning_db);
  FUNC0 (hashcat_ctx->user_options_extra);
  FUNC0 (hashcat_ctx->user_options);
  FUNC0 (hashcat_ctx->wl_data);

  FUNC1 (hashcat_ctx, 0, sizeof (hashcat_ctx_t));
}