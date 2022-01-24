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
struct stat {scalar_t__ st_size; } ;

/* Variables and functions */
 int FUNC0 (char const*,struct stat*) ; 

bool FUNC1 (const char *path)
{
  struct stat s;

  if (FUNC0 (path, &s) == -1) return false;

  if (s.st_size == 0) return true;

  return false;
}