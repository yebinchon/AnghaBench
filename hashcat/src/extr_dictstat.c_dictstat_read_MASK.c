#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_7__ {int dictstat_disable; } ;
typedef  TYPE_1__ hashconfig_t ;
struct TYPE_8__ {TYPE_3__* dictstat_ctx; TYPE_1__* hashconfig; } ;
typedef  TYPE_2__ hashcat_ctx_t ;
typedef  int dictstat_t ;
struct TYPE_9__ {int enabled; int /*<<< orphan*/  filename; int /*<<< orphan*/  cnt; int /*<<< orphan*/  base; } ;
typedef  TYPE_3__ dictstat_ctx_t ;
typedef  int /*<<< orphan*/  HCFILE ;

/* Variables and functions */
 int DICTSTAT_VERSION ; 
 int /*<<< orphan*/  MAX_DICTSTAT ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 size_t FUNC6 (int*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sort_by_dictstat ; 

void FUNC8 (hashcat_ctx_t *hashcat_ctx)
{
  hashconfig_t   *hashconfig   = hashcat_ctx->hashconfig;
  dictstat_ctx_t *dictstat_ctx = hashcat_ctx->dictstat_ctx;

  if (dictstat_ctx->enabled == false) return;

  if (hashconfig->dictstat_disable == true) return;

  HCFILE fp;

  if (FUNC5 (&fp, dictstat_ctx->filename, "rb") == false)
  {
    // first run, file does not exist, do not error out

    return;
  }

  // parse header

  u64 v;
  u64 z;

  const size_t nread1 = FUNC6 (&v, sizeof (u64), 1, &fp);
  const size_t nread2 = FUNC6 (&z, sizeof (u64), 1, &fp);

  if ((nread1 != 1) || (nread2 != 1))
  {
    FUNC1 (hashcat_ctx, "%s: Invalid header", dictstat_ctx->filename);

    FUNC3 (&fp);

    return;
  }

  v = FUNC0 (v);
  z = FUNC0 (z);

  if ((v & 0xffffffffffffff00) != (DICTSTAT_VERSION & 0xffffffffffffff00))
  {
    FUNC1 (hashcat_ctx, "%s: Invalid header, ignoring content", dictstat_ctx->filename);

    FUNC3 (&fp);

    return;
  }

  if (z != 0)
  {
    FUNC1 (hashcat_ctx, "%s: Invalid header, ignoring content", dictstat_ctx->filename);

    FUNC3 (&fp);

    return;
  }

  if ((v & 0xff) < (DICTSTAT_VERSION & 0xff))
  {
    FUNC2 (hashcat_ctx, "%s: Outdated header version, ignoring content", dictstat_ctx->filename);

    FUNC3 (&fp);

    return;
  }

  // parse data

  while (!FUNC4 (&fp))
  {
    dictstat_t d;

    const size_t nread = FUNC6 (&d, sizeof (dictstat_t), 1, &fp);

    if (nread == 0) continue;

    FUNC7 (&d, dictstat_ctx->base, &dictstat_ctx->cnt, sizeof (dictstat_t), sort_by_dictstat);

    if (dictstat_ctx->cnt == MAX_DICTSTAT)
    {
      FUNC1 (hashcat_ctx, "There are too many entries in the %s database. You have to remove/rename it.", dictstat_ctx->filename);

      break;
    }
  }

  FUNC3 (&fp);
}