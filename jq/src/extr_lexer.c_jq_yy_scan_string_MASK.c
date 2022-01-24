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
typedef  int /*<<< orphan*/  yyscan_t ;
typedef  int /*<<< orphan*/  YY_BUFFER_STATE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,int /*<<< orphan*/ ) ; 

YY_BUFFER_STATE FUNC2 (const char * yystr , yyscan_t yyscanner)
{
    
	return FUNC1( yystr, (int) FUNC0(yystr) , yyscanner);
}