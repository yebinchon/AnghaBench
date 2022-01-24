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
struct TYPE_2__ {scalar_t__ color_scheme; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int COLORS ; 
 scalar_t__ MONOKAI ; 
 scalar_t__ STD_GREEN ; 
 int /*<<< orphan*/  colors256_green ; 
 int /*<<< orphan*/  colors256_mono ; 
 int /*<<< orphan*/  colors256_monokai ; 
 int /*<<< orphan*/  colors8_green ; 
 int /*<<< orphan*/  colors8_mono ; 
 TYPE_1__ conf ; 
 int /*<<< orphan*/  nocolors ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (void)
{
  /* no colors */
  if (COLORS < 8)
    FUNC1 (nocolors, FUNC0 (nocolors));

  /* 256 colors, and no color scheme set or set to monokai */
  if (COLORS == 256 && (!conf.color_scheme || conf.color_scheme == MONOKAI))
    FUNC1 (colors256_monokai, FUNC0 (colors256_monokai));
  /* otherwise use 16 colors scheme */
  else if (COLORS > 16) {
    if (conf.color_scheme == STD_GREEN)
      FUNC1 (colors256_green, FUNC0 (colors256_green));
    else
      FUNC1 (colors256_mono, FUNC0 (colors256_mono));
  }

  /* 8 colors */
  if (COLORS >= 8 && COLORS <= 16) {
    if (conf.color_scheme == STD_GREEN)
      FUNC1 (colors8_green, FUNC0 (colors8_green));
    else
      FUNC1 (colors8_mono, FUNC0 (colors8_mono));
  }
}