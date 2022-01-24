#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  color_idx; } ;

/* Variables and functions */
 int FUNC0 (char const**) ; 
 int COLORS ; 
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 char** FUNC2 (int) ; 

__attribute__((used)) static const char **
FUNC3 (size_t * size)
{
  const char *choices[] = {
    "Monokai",
    "Monochrome",
    "Green",
    "Custom Scheme"
  };
  int i, j, n = FUNC0 (choices);
  const char **opts = FUNC2 (sizeof (char *) * n);

  for (i = 0, j = 0; i < n; ++i) {
    if (!conf.color_idx && !FUNC1 ("Custom Scheme", choices[i]))
      continue;
    if (COLORS < 256 && !FUNC1 ("Monokai", choices[i]))
      continue;
    opts[j++] = choices[i];
  }
  *size = j;

  return opts;
}