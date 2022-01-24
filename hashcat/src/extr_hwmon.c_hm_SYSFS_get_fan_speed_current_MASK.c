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
typedef  int /*<<< orphan*/  HCFILE ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8 (hashcat_ctx_t *hashcat_ctx, const int backend_device_idx, int *val)
{
  char *syspath = FUNC6 (hashcat_ctx, backend_device_idx);

  if (syspath == NULL) return -1;

  char *path_cur;
  char *path_max;

  FUNC1 (&path_cur, "%s/pwm1",     syspath);
  FUNC1 (&path_max, "%s/pwm1_max", syspath);

  FUNC5 (syspath);

  HCFILE fp_cur;

  if (FUNC3 (&fp_cur, path_cur, "r") == false)
  {
    FUNC0 (hashcat_ctx, "%s: %s", path_cur, FUNC7 (errno));

    FUNC5 (path_cur);
    FUNC5 (path_max);

    return -1;
  }

  int pwm1_cur = 0;

  if (FUNC4 (&fp_cur, "%d", &pwm1_cur) != 1)
  {
    FUNC2 (&fp_cur);

    FUNC0 (hashcat_ctx, "%s: unexpected data.", path_cur);

    FUNC5 (path_cur);
    FUNC5 (path_max);

    return -1;
  }

  FUNC2 (&fp_cur);

  HCFILE fp_max;

  if (FUNC3 (&fp_max, path_max, "r") == false)
  {
    FUNC0 (hashcat_ctx, "%s: %s", path_max, FUNC7 (errno));

    FUNC5 (path_cur);
    FUNC5 (path_max);

    return -1;
  }

  int pwm1_max = 0;

  if (FUNC4 (&fp_max, "%d", &pwm1_max) != 1)
  {
    FUNC2 (&fp_max);

    FUNC0 (hashcat_ctx, "%s: unexpected data.", path_max);

    FUNC5 (path_cur);
    FUNC5 (path_max);

    return -1;
  }

  FUNC2 (&fp_max);

  if (pwm1_max == 0)
  {
    FUNC0 (hashcat_ctx, "%s: pwm1_max cannot be 0.", path_max);

    FUNC5 (path_cur);
    FUNC5 (path_max);

    return -1;
  }

  const float p1 = (float) pwm1_max / 100.0F;

  const float pwm1_percent = (float) pwm1_cur / p1;

  *val = (int) pwm1_percent;

  FUNC5 (path_cur);
  FUNC5 (path_max);

  return 0;
}