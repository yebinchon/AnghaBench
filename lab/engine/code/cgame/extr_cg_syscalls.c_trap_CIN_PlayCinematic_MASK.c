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
 int /*<<< orphan*/  CG_CIN_PLAYCINEMATIC ; 
 int FUNC0 (int /*<<< orphan*/ ,char const*,int,int,int,int,int) ; 

int FUNC1( const char *arg0, int xpos, int ypos, int width, int height, int bits) {
  return FUNC0(CG_CIN_PLAYCINEMATIC, arg0, xpos, ypos, width, height, bits);
}