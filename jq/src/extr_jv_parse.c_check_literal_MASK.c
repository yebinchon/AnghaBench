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
struct jv_parser {int tokenpos; int* tokenbuf; int /*<<< orphan*/  dtoa; } ;
typedef  char* pfunc ;
typedef  int /*<<< orphan*/  jv ;

/* Variables and functions */
 scalar_t__ JV_KIND_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (double) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 double FUNC7 (int /*<<< orphan*/ *,char const*,char**) ; 
 int /*<<< orphan*/  FUNC8 (struct jv_parser*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static pfunc FUNC9(struct jv_parser* p) {
  if (p->tokenpos == 0) return 0;

  const char* pattern = 0;
  int plen;
  jv v;
  switch (p->tokenbuf[0]) {
  case 't': pattern = "true"; plen = 4; v = FUNC6(); break;
  case 'f': pattern = "false"; plen = 5; v = FUNC1(); break;
  case 'n': pattern = "null"; plen = 4; v = FUNC3(); break;
  }
  if (pattern) {
    if (p->tokenpos != plen) return "Invalid literal";
    for (int i=0; i<plen; i++)
      if (p->tokenbuf[i] != pattern[i])
        return "Invalid literal";
    FUNC0(FUNC8(p, v));
  } else {
    // FIXME: better parser
    p->tokenbuf[p->tokenpos] = 0;
#ifdef USE_DECNUM
    jv number = jv_number_with_literal(p->tokenbuf);
    if (jv_get_kind(number) == JV_KIND_INVALID) {
      return "Invalid numeric literal";
    }
    TRY(value(p, number));
#else
    char *end = 0;
    double d = FUNC7(&p->dtoa, p->tokenbuf, &end);
    if (end == 0 || *end != 0) {
      return "Invalid numeric literal";
    }
    FUNC0(FUNC8(p, FUNC4(d)));
#endif
  }
  p->tokenpos = 0;
  return 0;
}