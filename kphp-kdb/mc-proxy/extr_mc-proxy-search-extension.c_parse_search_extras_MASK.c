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
 scalar_t__ SEARCHX_EXTENSION ; 
 scalar_t__ SEARCH_EXTENSION ; 
 scalar_t__ TARG_EXTENSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char const* FUNC1 (char const*) ; 
 char const* FUNC2 (char const*) ; 

__attribute__((used)) static const char *FUNC3 (const char *ptr) {
  if (SEARCH_EXTENSION || SEARCHX_EXTENSION) {
    return FUNC1 (ptr);
  } else if (TARG_EXTENSION) {
    return FUNC2 (ptr);
  } else {
    FUNC0 (0);
  }
}