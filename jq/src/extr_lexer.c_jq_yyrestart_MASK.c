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
typedef  scalar_t__ yyscan_t ;
struct yyguts_t {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  YY_BUF_SIZE ; 
 int /*<<< orphan*/  YY_CURRENT_BUFFER ; 
 int /*<<< orphan*/  YY_CURRENT_BUFFER_LVALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  yyin ; 

void FUNC4  (FILE * input_file , yyscan_t yyscanner)
{
    struct yyguts_t * yyg = (struct yyguts_t*)yyscanner;

	if ( ! YY_CURRENT_BUFFER ){
        FUNC3 (yyscanner);
		YY_CURRENT_BUFFER_LVALUE =
            FUNC0( yyin, YY_BUF_SIZE , yyscanner);
	}

	FUNC1( YY_CURRENT_BUFFER, input_file , yyscanner);
	FUNC2( yyscanner );
}