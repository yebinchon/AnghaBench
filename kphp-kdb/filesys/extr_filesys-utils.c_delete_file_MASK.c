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
struct stat {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,struct stat*) ; 
 int FUNC1 (char const*,struct stat*) ; 

int FUNC2 (const char *path) {
  struct stat b;
  if (FUNC0 (path, &b)) {
    return -1;
  }
  return FUNC1 (path, &b);
}