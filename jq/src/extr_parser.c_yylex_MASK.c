#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  yyscan_t ;
struct locfile {int dummy; } ;
struct lexer_param {int /*<<< orphan*/  lexer; } ;
typedef  int /*<<< orphan*/  jv ;
typedef  int /*<<< orphan*/  block ;
struct TYPE_4__ {int /*<<< orphan*/  literal; } ;
typedef  TYPE_1__ YYSTYPE ;
typedef  int /*<<< orphan*/  YYLTYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ JV_KIND_STRING ; 
 int LITERAL ; 
 int QQSTRING_TEXT ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(YYSTYPE* yylval, YYLTYPE* yylloc, block* answer, int* errors,
          struct locfile* locations, struct lexer_param* lexer_param_ptr) {
  yyscan_t lexer = lexer_param_ptr->lexer;
  int tok = FUNC1(yylval, yylloc, lexer);
  if ((tok == LITERAL || tok == QQSTRING_TEXT) && !FUNC6(yylval->literal)) {
    jv msg = FUNC5(FUNC2(yylval->literal));
    if (FUNC4(msg) == JV_KIND_STRING) {
      FUNC0(*yylloc, FUNC8(msg));
    } else {
      FUNC0(*yylloc, "Invalid literal");
    }
    FUNC3(msg);
    FUNC3(yylval->literal);
    yylval->literal = FUNC7();
  }
  return tok;
}