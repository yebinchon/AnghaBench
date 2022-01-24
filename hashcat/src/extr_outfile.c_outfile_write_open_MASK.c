#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * filename; int /*<<< orphan*/  fp; } ;
typedef  TYPE_1__ outfile_ctx_t ;
struct TYPE_6__ {TYPE_1__* outfile_ctx; } ;
typedef  TYPE_2__ hashcat_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5 (hashcat_ctx_t *hashcat_ctx)
{
  outfile_ctx_t *outfile_ctx = hashcat_ctx->outfile_ctx;

  if (outfile_ctx->filename == NULL) return 0;

  if (FUNC2 (&outfile_ctx->fp, outfile_ctx->filename, "ab") == false)
  {
    FUNC0 (hashcat_ctx, "%s: %s", outfile_ctx->filename, FUNC4 (errno));

    return -1;
  }

  if (FUNC3 (&outfile_ctx->fp) == -1)
  {
    FUNC1 (&outfile_ctx->fp);

    FUNC0 (hashcat_ctx, "%s: %s", outfile_ctx->filename, FUNC4 (errno));

    return -1;
  }

  return 0;
}