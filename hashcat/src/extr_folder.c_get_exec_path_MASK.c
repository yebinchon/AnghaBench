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
typedef  int /*<<< orphan*/  u32 ;
typedef  int ssize_t ;

/* Variables and functions */
 int CTL_KERN ; 
 int KERN_PROC ; 
 int KERN_PROC_PATHNAME ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,size_t const) ; 
 int FUNC5 (char*,char*,size_t const) ; 
 size_t FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8 (char *exec_path, const size_t exec_path_sz)
{
  #if defined (__linux__) || defined (__CYGWIN__)

  char *tmp;

  FUNC2 (&tmp, "/proc/%d/exe", FUNC1 ());

  const ssize_t len = FUNC5 (tmp, exec_path, exec_path_sz - 1);

  FUNC3 (tmp);

  if (len == -1) return -1;

  #elif defined (_WIN)

  memset (exec_path, 0, exec_path_sz);

  const int len = 0;

  #elif defined (__APPLE__)

  u32 size = (u32) exec_path_sz;

  if (_NSGetExecutablePath (exec_path, &size) != 0) return -1;

  const size_t len = strlen (exec_path);

  #elif defined (__FreeBSD__)

  #include <sys/sysctl.h>

  int mib[4];

  mib[0] = CTL_KERN;
  mib[1] = KERN_PROC;
  mib[2] = KERN_PROC_PATHNAME;
  mib[3] = -1;

  size_t size = exec_path_sz;

  sysctl (mib, 4, exec_path, &size, NULL, 0);

  const size_t len = strlen (exec_path);

  #else
  #error Your Operating System is not supported or detected
  #endif

  exec_path[len] = 0;

  return 0;
}