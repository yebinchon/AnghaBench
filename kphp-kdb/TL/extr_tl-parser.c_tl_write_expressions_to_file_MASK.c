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
struct tl_compiler {int /*<<< orphan*/ * expr; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t TL_SECTION_FUNCTIONS ; 
 size_t TL_SECTION_TYPES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const* const,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (struct tl_compiler*,char*,char const* const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct tl_compiler*,int /*<<< orphan*/ *) ; 

int FUNC5 (struct tl_compiler *C, const char *const filename) {
  FILE *f = FUNC1 (filename, "w");
  if (f == NULL) {
    return FUNC3 (C, "fopen (\"%s\", \"w\") fail. %m", filename);
  }
  FUNC4 (f, C, &C->expr[TL_SECTION_TYPES]);
  FUNC2 (f, "---functions---\n");
  FUNC4 (f, C, &C->expr[TL_SECTION_FUNCTIONS]);
  FUNC0 (f);
  return 0;
}