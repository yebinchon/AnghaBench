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
 int TL_ERRNUM ; 
 scalar_t__ TL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 

int FUNC3 (const char *s, int errnum) {
  FUNC0 (s);
  if (TL_ERROR) {
    return 0;
  }
  FUNC2 (2, "Error %s\n", s);
  TL_ERROR = FUNC1 (s);
  TL_ERRNUM = errnum;
  return 0;
}