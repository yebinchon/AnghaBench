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
struct TYPE_4__ {scalar_t__ hm_sysfs; } ;
typedef  TYPE_1__ hwmon_ctx_t ;
struct TYPE_5__ {TYPE_1__* hwmon_ctx; } ;
typedef  TYPE_2__ hashcat_ctx_t ;
typedef  int /*<<< orphan*/  SYSFS_PTR ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_BUS_PCI_DEVICES ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC4 (hashcat_ctx_t *hashcat_ctx)
{
  hwmon_ctx_t *hwmon_ctx = hashcat_ctx->hwmon_ctx;

  SYSFS_PTR *sysfs = (SYSFS_PTR *) hwmon_ctx->hm_sysfs;

  FUNC3 (sysfs, 0, sizeof (SYSFS_PTR));

  char *path;

  FUNC0 (&path, "%s", SYS_BUS_PCI_DEVICES);

  const bool r = FUNC1 (path);

  FUNC2 (path);

  return r;
}