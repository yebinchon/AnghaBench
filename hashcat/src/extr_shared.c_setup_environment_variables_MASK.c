#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* profile_dir; } ;
typedef  TYPE_1__ folder_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  CW_SYNC_WINENV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char**,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5 (const folder_config_t *folder_config)
{
  char *compute = FUNC2 ("COMPUTE");

  if (compute)
  {
    char *display;

    FUNC3 (&display, "DISPLAY=%s", compute);

    FUNC4 (display);

    FUNC1 (display);
  }
  else
  {
    if (FUNC2 ("DISPLAY") == NULL)
      FUNC4 ((char *) "DISPLAY=:0");
  }

  /*
  if (getenv ("OCL_CODE_CACHE_ENABLE") == NULL)
    putenv ((char *) "OCL_CODE_CACHE_ENABLE=0");

  if (getenv ("CUDA_CACHE_DISABLE") == NULL)
    putenv ((char *) "CUDA_CACHE_DISABLE=1");

  if (getenv ("POCL_KERNEL_CACHE") == NULL)
    putenv ((char *) "POCL_KERNEL_CACHE=0");
  */

  if (FUNC2 ("TMPDIR") == NULL)
  {
    char *tmpdir = NULL;

    FUNC3 (&tmpdir, "TMPDIR=%s", folder_config->profile_dir);

    FUNC4 (tmpdir);

    // we can't free tmpdir at this point!
  }

  if (FUNC2 ("CL_CONFIG_USE_VECTORIZER") == NULL)
    FUNC4 ((char *) "CL_CONFIG_USE_VECTORIZER=False");

  #if defined (__CYGWIN__)
  cygwin_internal (CW_SYNC_WINENV);
  #endif
}