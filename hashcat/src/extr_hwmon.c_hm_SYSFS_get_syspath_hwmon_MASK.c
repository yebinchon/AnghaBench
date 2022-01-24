#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  hashcat_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  HCBUFSIZ_TINY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*,char*,...) ; 

__attribute__((used)) static char *FUNC6 (hashcat_ctx_t *hashcat_ctx, const int backend_device_idx)
{
  char *syspath = FUNC4 (hashcat_ctx, backend_device_idx);

  if (syspath == NULL)
  {
    FUNC0 (hashcat_ctx, "hm_SYSFS_get_syspath_device() failed.");

    return NULL;
  }

  char *hwmon = (char *) FUNC3 (HCBUFSIZ_TINY);

  FUNC5 (hwmon, HCBUFSIZ_TINY, "%s/hwmon", syspath);

  char *hwmonN = FUNC1 (hwmon);

  if (hwmonN == NULL)
  {
    FUNC0 (hashcat_ctx, "First_file_in_directory() failed.");

    FUNC2 (syspath);

    FUNC2 (hwmon);
    FUNC2 (hwmonN);

    return NULL;
  }

  FUNC5 (hwmon, HCBUFSIZ_TINY, "%s/hwmon/%s", syspath, hwmonN);

  FUNC2 (syspath);

  FUNC2 (hwmonN);

  return hwmon;
}