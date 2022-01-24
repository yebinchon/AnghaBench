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
typedef  int /*<<< orphan*/  pidfile_data_t ;
struct TYPE_5__ {char* filename; int /*<<< orphan*/ * pd; } ;
typedef  TYPE_1__ pidfile_ctx_t ;
struct TYPE_6__ {TYPE_1__* pidfile_ctx; } ;
typedef  TYPE_2__ hashcat_ctx_t ;
typedef  int /*<<< orphan*/  HCFILE ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6 (hashcat_ctx_t *hashcat_ctx)
{
  const pidfile_ctx_t *pidfile_ctx = hashcat_ctx->pidfile_ctx;

  pidfile_data_t *pd = pidfile_ctx->pd;

  char *pidfile_filename = pidfile_ctx->filename;

  HCFILE fp;

  if (FUNC3 (&fp, pidfile_filename, "wb") == false)
  {
    FUNC0 (hashcat_ctx, "%s: %s", pidfile_filename, FUNC5 (errno));

    return -1;
  }

  FUNC4 (pd, sizeof (pidfile_data_t), 1, &fp);

  FUNC2 (&fp);

  FUNC1 (&fp);

  return 0;
}