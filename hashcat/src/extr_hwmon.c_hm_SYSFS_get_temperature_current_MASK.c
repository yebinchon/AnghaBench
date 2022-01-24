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

  char *path;

  FUNC1 (&path, "%s/temp1_input", syspath);

  FUNC5 (syspath);

  HCFILE fp;

  if (FUNC3 (&fp, path, "r") == false)
  {
    FUNC0 (hashcat_ctx, "%s: %s", path, FUNC7 (errno));

    FUNC5 (path);

    return -1;
  }

  int temperature = 0;

  if (FUNC4 (&fp, "%d", &temperature) != 1)
  {
    FUNC2 (&fp);

    FUNC0 (hashcat_ctx, "%s: unexpected data.", path);

    FUNC5 (path);

    return -1;
  }

  FUNC2 (&fp);

  *val = temperature / 1000;

  FUNC5 (path);

  return 0;
}