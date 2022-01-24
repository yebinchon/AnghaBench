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
struct locfile {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct lexer_param {int /*<<< orphan*/  lexer; } ;
typedef  int /*<<< orphan*/  block ;
typedef  int /*<<< orphan*/  YY_BUFFER_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*,struct locfile*,struct lexer_param*) ; 

int FUNC7(struct locfile* locations, block* answer) {
  struct lexer_param scanner;
  YY_BUFFER_STATE buf;
  FUNC5(0, &scanner.lexer);
  buf = FUNC3(locations->data, locations->length, scanner.lexer);
  int errors = 0;
  *answer = FUNC1();
  FUNC6(answer, &errors, locations, &scanner);
  FUNC2(buf, scanner.lexer);
  FUNC4(scanner.lexer);
  if (errors > 0) {
    FUNC0(*answer);
    *answer = FUNC1();
  }
  return errors;
}