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
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int FUNC1 (char const*) ; 

int FUNC2 (const char *filename) {
  const int l = FUNC1 (filename);
  if (l > 7 && !FUNC0 (filename + l - 7, ".bin.bz")) {
    return 1;
  }
  if (l > 4 && !FUNC0 (filename + l - 4, ".bin")) {
    return 0;
  }
  return -1;
}