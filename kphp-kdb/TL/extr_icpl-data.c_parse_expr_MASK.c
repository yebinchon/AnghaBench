#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int type; size_t start; int /*<<< orphan*/  length; } ;
typedef  TYPE_1__ icpl_token_t ;
typedef  int /*<<< orphan*/  icpl_cell_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC7 (char const*,size_t,char*) ; 
#define  lt_any 133 
#define  lt_cbrace 132 
#define  lt_combinator 131 
#define  lt_nat 130 
#define  lt_obrace 129 
#define  lt_variable 128 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC8 (const char *input, icpl_token_t *a, int tokens, icpl_cell_t **R) {
  int i, j, s;
  icpl_cell_t *c, *r = NULL;
  *R = NULL;
  for (i = 0; i < tokens; i++) {
     switch (a[i].type) {
       case lt_obrace:
         s = 1;
         for (j = i + 1; s > 0 && j < tokens; j++) {
           switch (a[j].type) {
             case lt_obrace: s++; break;
             case lt_cbrace: s--; break;
             default: break;
           }
         }
         if (s > 0) {
           return FUNC7 (input, a[i].start, "closing bracket wasn't found");
         }
         //a[i]   : '('
         //a[j-1] : ')'
         if (FUNC8 (input, a + (i + 1), j - (i + 2), &c) < 0) {
           return -1;
         }
         r = FUNC4 (r, c);
         i = j;
       break;
       case lt_cbrace: return FUNC7 (input, a[i].start, "unexpected closing bracket");
       case lt_combinator: r = FUNC4 (r, FUNC2 (input + a[i].start, a[i].length)); break;
       case lt_nat: r = FUNC4 (r, FUNC3 (input + a[i].start, a[i].length)); break;
       case lt_variable: r = FUNC4 (r, FUNC5 (input[a[i].start])); break;
       case lt_any: r = FUNC4 (r, FUNC1 ()); break;
       default: FUNC6 (stderr, "Unexpected lt (%d) at pos %d\n", a[i].type, i); FUNC0 (0);
     }
  }
  *R = r;
  return 0;
}