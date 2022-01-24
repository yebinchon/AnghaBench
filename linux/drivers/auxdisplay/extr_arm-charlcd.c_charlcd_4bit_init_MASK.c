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
struct charlcd {scalar_t__ virtbase; } ;

/* Variables and functions */
 scalar_t__ CHAR_COM ; 
 int HD_CLEAR ; 
 int HD_DISPCTRL ; 
 int HD_DISPCTRL_ON ; 
 int HD_ENTRYMODE ; 
 int HD_ENTRYMODE_INCREMENT ; 
 int HD_FUNCSET ; 
 int HD_FUNCSET_2_LINES ; 
 int HD_FUNCSET_8BIT ; 
 int HD_HOME ; 
 char* UTS_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (struct charlcd*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct charlcd*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct charlcd *lcd)
{
	/* These commands cannot be checked with the busy flag */
	FUNC4(HD_FUNCSET | HD_FUNCSET_8BIT, lcd->virtbase + CHAR_COM);
	FUNC2(5);
	FUNC4(HD_FUNCSET | HD_FUNCSET_8BIT, lcd->virtbase + CHAR_COM);
	FUNC3(100);
	FUNC4(HD_FUNCSET | HD_FUNCSET_8BIT, lcd->virtbase + CHAR_COM);
	FUNC3(100);
	/* Go to 4bit mode */
	FUNC4(HD_FUNCSET, lcd->virtbase + CHAR_COM);
	FUNC3(100);
	/*
	 * 4bit mode, 2 lines, 5x8 font, after this the number of lines
	 * and the font cannot be changed until the next initialization sequence
	 */
	FUNC0(lcd, HD_FUNCSET | HD_FUNCSET_2_LINES);
	FUNC0(lcd, HD_DISPCTRL | HD_DISPCTRL_ON);
	FUNC0(lcd, HD_ENTRYMODE | HD_ENTRYMODE_INCREMENT);
	FUNC0(lcd, HD_CLEAR);
	FUNC0(lcd, HD_HOME);
	/* Put something useful in the display */
	FUNC1(lcd, 0, "ARM Linux");
	FUNC1(lcd, 1, UTS_RELEASE);
}