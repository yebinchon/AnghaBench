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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* ERR_PLEASE_REPORT ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 char* GO_VERSION ; 
 int TRACE_SIZE ; 
 size_t FUNC0 (void**,int) ; 
 char** FUNC1 (void**,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/ * stderr ; 

void
FUNC7 (int sig)
{
  FILE *fp = stderr;
  int pid = FUNC6 ();

#if defined(__GLIBC__)
  char **messages;
  size_t size, i;
  void *trace_stack[TRACE_SIZE];
#endif

  (void) FUNC3 ();
  FUNC5 (fp, "\n");
  FUNC5 (fp, "==%d== GoAccess %s crashed by Sig %d\n", pid, GO_VERSION, sig);
  FUNC5 (fp, "==%d==\n", pid);

  FUNC2 (fp);

#if defined(__GLIBC__)
  size = backtrace (trace_stack, TRACE_SIZE);
  messages = backtrace_symbols (trace_stack, size);

  fprintf (fp, "==%d== STACK TRACE:\n", pid);
  fprintf (fp, "==%d==\n", pid);

  for (i = 0; i < size; i++)
    fprintf (fp, "==%d== %zu %s\n", pid, i, messages[i]);
#endif

  FUNC5 (fp, "==%d==\n", pid);
  FUNC5 (fp, "==%d== %s:\n", pid, ERR_PLEASE_REPORT);
  FUNC5 (fp, "==%d== https://github.com/allinurl/goaccess/issues\n\n", pid);
  FUNC4 (EXIT_FAILURE);
}