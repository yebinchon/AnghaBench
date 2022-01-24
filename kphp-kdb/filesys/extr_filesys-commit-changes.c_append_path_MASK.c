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
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*,int,char*,char const*) ; 

__attribute__((used)) static int FUNC4 (char *s, int l, const char *filename) {
  int o = PATH_MAX - l;
  FUNC0 (o > 0);
  int r = FUNC3 (s + l, o, "/%s", filename);
  if (r >= o - 1) {
    FUNC2 ("append_path fail (buffer overflow)\n");
    FUNC1 (1);
  }
  return l + r;
}