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
struct jv_parser {int dummy; } ;
typedef  int /*<<< orphan*/  jv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct jv_parser*) ; 
 int /*<<< orphan*/  FUNC7 (struct jv_parser*,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct jv_parser*) ; 
 int /*<<< orphan*/  FUNC12 (struct jv_parser*,int /*<<< orphan*/ ) ; 

jv FUNC13(const char* string, int length) {
  struct jv_parser parser;
  FUNC12(&parser, 0);
  FUNC7(&parser, string, length, 0);
  jv value = FUNC6(&parser);
  if (FUNC5(value)) {
    jv next = FUNC6(&parser);
    if (FUNC5(next)) {
      // multiple JSON values, we only wanted one
      FUNC1(value);
      FUNC1(next);
      value = FUNC4(FUNC8("Unexpected extra JSON values"));
    } else if (FUNC3(FUNC0(next))) {
      // parser error after the first JSON value
      FUNC1(value);
      value = next;
    } else {
      // a single valid JSON value
      FUNC1(next);
    }
  } else if (FUNC3(FUNC0(value))) {
    // parse error, we'll return it
  } else {
    // no value at all
    FUNC1(value);
    value = FUNC4(FUNC8("Expected JSON value"));
  }
  FUNC11(&parser);

  if (!FUNC5(value) && FUNC3(FUNC0(value))) {
    jv msg = FUNC2(value);
    value = FUNC4(FUNC9("%s (while parsing '%s')",
                                              FUNC10(msg),
                                              string));
    FUNC1(msg);
  }
  return value;
}