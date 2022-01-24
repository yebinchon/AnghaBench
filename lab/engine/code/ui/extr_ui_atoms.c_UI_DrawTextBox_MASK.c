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
 int BIGCHAR_HEIGHT ; 
 int BIGCHAR_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  colorBlack ; 
 int /*<<< orphan*/  colorWhite ; 

void FUNC2 (int x, int y, int width, int lines)
{
	FUNC1( x + BIGCHAR_WIDTH/2, y + BIGCHAR_HEIGHT/2, ( width + 1 ) * BIGCHAR_WIDTH, ( lines + 1 ) * BIGCHAR_HEIGHT, colorBlack );
	FUNC0( x + BIGCHAR_WIDTH/2, y + BIGCHAR_HEIGHT/2, ( width + 1 ) * BIGCHAR_WIDTH, ( lines + 1 ) * BIGCHAR_HEIGHT, colorWhite );
}