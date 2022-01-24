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
typedef  int /*<<< orphan*/  logfile_ctx_t ;
struct TYPE_4__ {int /*<<< orphan*/  salts_done; int /*<<< orphan*/  salts_cnt; int /*<<< orphan*/  digests_done; int /*<<< orphan*/  digests_cnt; int /*<<< orphan*/  hashes_cnt; int /*<<< orphan*/  hashlist_format; int /*<<< orphan*/  hashlist_mode; int /*<<< orphan*/  hashfile; } ;
typedef  TYPE_1__ hashes_t ;
struct TYPE_5__ {int /*<<< orphan*/ * logfile_ctx; TYPE_1__* hashes; } ;
typedef  TYPE_2__ hashcat_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2 (hashcat_ctx_t *hashcat_ctx)
{
  hashes_t      *hashes      = hashcat_ctx->hashes;
  logfile_ctx_t *logfile_ctx = hashcat_ctx->logfile_ctx;

  FUNC0 (hashes->hashfile);
  FUNC1   (hashes->hashlist_mode);
  FUNC1   (hashes->hashlist_format);
  FUNC1   (hashes->hashes_cnt);
  FUNC1   (hashes->digests_cnt);
  FUNC1   (hashes->digests_done);
  FUNC1   (hashes->salts_cnt);
  FUNC1   (hashes->salts_done);
}