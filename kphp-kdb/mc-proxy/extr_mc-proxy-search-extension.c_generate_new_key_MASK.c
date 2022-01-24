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
 int FUNC1 (char*,char const*,int,int) ; 
 int FUNC2 (char*,char const*,int,int) ; 

__attribute__((used)) static int FUNC3 (char *ptr, const char *key, int len, int pos) {
  if (SEARCH_EXTENSION || SEARCHX_EXTENSION) {
    return FUNC1 (ptr, key, len, pos);
  } else if (TARG_EXTENSION) {
    return FUNC2 (ptr, key, len, pos);
  } else {
    FUNC0 (0);
  }
}