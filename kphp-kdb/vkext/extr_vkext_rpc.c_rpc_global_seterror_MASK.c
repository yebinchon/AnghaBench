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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int error_verbosity ; 
 int global_errnum ; 
 char const* global_error ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 char* FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,scalar_t__) ; 

__attribute__((used)) static void FUNC6 (const char *error, int errnum) { /* {{{ */
  if (error) {
    //fprintf (stderr, "error %s #%d\n", error, errnum);
    if (global_error) {
      FUNC5 (global_error, FUNC4 (global_error) + 1);
    }
    global_error = FUNC3 (error);
    FUNC0 (FUNC4 (error) + 1);
    global_errnum = errnum;
    if (error && error_verbosity >= 1) {
      FUNC2 ("Error %s (error_code %d)\n", error, errnum);
      if (error_verbosity >= 2) {
        FUNC1 ();
      }
    }
  }
}