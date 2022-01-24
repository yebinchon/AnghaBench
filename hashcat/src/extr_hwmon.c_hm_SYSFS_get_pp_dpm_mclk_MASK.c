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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  HCFILE ;

/* Variables and functions */
 int HCBUFSIZ_TINY ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int const) ; 
 int FUNC8 (char*,char*,int*,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 size_t FUNC10 (char*) ; 

__attribute__((used)) static int FUNC11 (hashcat_ctx_t *hashcat_ctx, const int backend_device_idx, int *val)
{
  char *syspath = FUNC7 (hashcat_ctx, backend_device_idx);

  if (syspath == NULL) return -1;

  char *path;

  FUNC1 (&path, "%s/pp_dpm_mclk", syspath);

  FUNC6 (syspath);

  HCFILE fp;

  if (FUNC5 (&fp, path, "r") == false)
  {
    FUNC0 (hashcat_ctx, "%s: %s", path, FUNC9 (errno));

    FUNC6 (path);

    return -1;
  }

  int clockfreq = 0;

  while (!FUNC3 (&fp))
  {
    char buf[HCBUFSIZ_TINY];

    char *ptr = FUNC4 (buf, sizeof (buf), &fp);

    if (ptr == NULL) continue;

    size_t len = FUNC10 (ptr);

    if (len < 2) continue;

    if (ptr[len - 2] != '*') continue;

    int profile = 0;

    int rc = FUNC8 (ptr, "%d: %dMHz", &profile, &clockfreq);

    if (rc == 2) break;
  }

  FUNC2 (&fp);

  *val = clockfreq;

  FUNC6 (path);

  return 0;
}