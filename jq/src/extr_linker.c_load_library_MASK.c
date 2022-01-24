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
struct locfile {int dummy; } ;
struct lib_loading_state {int ct; void** defs; void** names; } ;
typedef  int /*<<< orphan*/  jv ;
typedef  int /*<<< orphan*/  jq_state ;
typedef  void* block ;

/* Variables and functions */
 int /*<<< orphan*/  OP_IS_CALL_PSEUDO ; 
 void* FUNC0 (void*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 void* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct locfile*,void**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 void* FUNC14 (void**,int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct locfile*) ; 
 struct locfile* FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,struct lib_loading_state*) ; 
 void* FUNC22 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC23(jq_state *jq, jv lib_path, int is_data, int raw, int optional, const char *as, block *out_block, struct lib_loading_state *lib_state) {
  int nerrors = 0;
  struct locfile* src = NULL;
  block program;
  jv data;
  if (is_data && !raw)
    data = FUNC13(FUNC18(lib_path), 0);
  else
    data = FUNC13(FUNC18(lib_path), 1);
  int state_idx;
  if (!FUNC12(data)) {
    program = FUNC4();
    if (!optional) {
      if (FUNC11(FUNC8(data)))
        data = FUNC10(data);
      else
        data = FUNC15("unknown error");
      FUNC7(jq, FUNC16("jq: error loading data file %s: %s\n", FUNC18(lib_path), FUNC18(data)));
      nerrors++;
    }
    goto out;
  } else if (is_data) {
    // import "foo" as $bar;
    program = FUNC3(FUNC8(data), as);
  } else {
    // import "foo" as bar;
    src = FUNC20(jq, FUNC18(lib_path), FUNC18(data), FUNC17(FUNC8(data)));
    nerrors += FUNC6(src, &program);
    FUNC19(src);
    if (nerrors == 0) {
      char *lib_origin = FUNC22(FUNC18(lib_path));
      nerrors += FUNC21(jq, FUNC5(jq),
                                      FUNC15(FUNC1(lib_origin)),
                                      &program, lib_state);
      FUNC2(lib_origin);
      program = FUNC0(program, OP_IS_CALL_PSEUDO);
    }
  }
  state_idx = lib_state->ct++;
  lib_state->names = FUNC14(lib_state->names, lib_state->ct * sizeof(const char *));
  lib_state->defs = FUNC14(lib_state->defs, lib_state->ct * sizeof(block));
  lib_state->names[state_idx] = FUNC22(FUNC18(lib_path));
  lib_state->defs[state_idx] = program;
out:
  *out_block = program;
  FUNC9(lib_path);
  FUNC9(data);
  return nerrors;
}