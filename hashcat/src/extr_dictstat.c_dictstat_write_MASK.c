#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_6__ {int dictstat_disable; } ;
typedef  TYPE_1__ hashconfig_t ;
struct TYPE_7__ {TYPE_3__* dictstat_ctx; TYPE_1__* hashconfig; } ;
typedef  TYPE_2__ hashcat_ctx_t ;
typedef  int /*<<< orphan*/  dictstat_t ;
struct TYPE_8__ {int enabled; int cnt; int /*<<< orphan*/ * base; int /*<<< orphan*/  filename; } ;
typedef  TYPE_3__ dictstat_ctx_t ;
typedef  int /*<<< orphan*/  HCFILE ;

/* Variables and functions */
 int /*<<< orphan*/  DICTSTAT_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7 (hashcat_ctx_t *hashcat_ctx)
{
  hashconfig_t   *hashconfig   = hashcat_ctx->hashconfig;
  dictstat_ctx_t *dictstat_ctx = hashcat_ctx->dictstat_ctx;

  if (dictstat_ctx->enabled == false) return 0;

  if (hashconfig->dictstat_disable == true) return 0;

  HCFILE fp;

  if (FUNC3 (&fp, dictstat_ctx->filename, "wb") == false)
  {
    FUNC1 (hashcat_ctx, "%s: %s", dictstat_ctx->filename, FUNC6 (errno));

    return -1;
  }

  if (FUNC5 (&fp) == -1)
  {
    FUNC2 (&fp);

    FUNC1 (hashcat_ctx, "%s: %s", dictstat_ctx->filename, FUNC6 (errno));

    return -1;
  }

  // header

  u64 v = DICTSTAT_VERSION;
  u64 z = 0;

  v = FUNC0 (v);
  z = FUNC0 (z);

  FUNC4 (&v, sizeof (u64), 1, &fp);
  FUNC4 (&z, sizeof (u64), 1, &fp);

  // data

  FUNC4 (dictstat_ctx->base, sizeof (dictstat_t), dictstat_ctx->cnt, &fp);

  FUNC2 (&fp);

  return 0;
}