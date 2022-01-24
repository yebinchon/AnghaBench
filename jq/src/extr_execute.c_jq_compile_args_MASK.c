#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct locfile {int dummy; } ;
typedef  int /*<<< orphan*/  jv ;
struct TYPE_8__ {int /*<<< orphan*/ * bc; int /*<<< orphan*/  nomem_handler_data; int /*<<< orphan*/  nomem_handler; } ;
typedef  TYPE_1__ jq_state ;
typedef  int /*<<< orphan*/  block ;

/* Variables and functions */
 scalar_t__ JV_KIND_ARRAY ; 
 scalar_t__ JV_KIND_OBJECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,struct locfile*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*) ; 
 int FUNC11 (TYPE_1__*,struct locfile*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct locfile*) ; 
 struct locfile* FUNC13 (TYPE_1__*,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char const*) ; 

int FUNC16(jq_state *jq, const char* str, jv args) {
  FUNC9(jq->nomem_handler, jq->nomem_handler_data);
  FUNC1(FUNC8(args) == JV_KIND_ARRAY || FUNC8(args) == JV_KIND_OBJECT);
  struct locfile* locations;
  locations = FUNC13(jq, "<top-level>", str, FUNC15(str));
  block program;
  FUNC6(jq);
  if (jq->bc) {
    FUNC4(jq->bc);
    jq->bc = 0;
  }
  int nerrors = FUNC11(jq, locations, &program);
  if (nerrors == 0) {
    nerrors = FUNC3(jq, &program);
    if (nerrors == 0) {
      nerrors = FUNC2(program, &jq->bc, locations, args = FUNC0(args));
    }
  } else
    FUNC7(args);
  if (nerrors)
    FUNC5(jq, FUNC10("jq: %d compile %s", nerrors, nerrors > 1 ? "errors" : "error"));
  if (jq->bc)
    jq->bc = FUNC14(jq->bc);
  FUNC12(locations);
  return jq->bc != NULL;
}