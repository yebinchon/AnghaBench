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
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(const char *s, size_t len, FILE *fout, int is_tty) {
#ifdef WIN32
  if (is_tty)
    WriteFile((HANDLE)_get_osfhandle(fileno(fout)), s, len, NULL, NULL);
  else
    fwrite(s, 1, len, fout);
#else
  FUNC3(s, 1, len, fout);
#endif
}