#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * cdr; } ;
struct TYPE_6__ {TYPE_1__ p; } ;
struct tl_scheme_object {TYPE_2__ u; } ;
struct tl_compiler {TYPE_3__* serialized_first_function_expr; } ;
struct TYPE_7__ {struct TYPE_7__* right_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 char* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  obj_empty_list ; 
 int /*<<< orphan*/  FUNC2 (struct tl_compiler*) ; 
 int FUNC3 (struct tl_compiler*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct tl_scheme_object*) ; 
 struct tl_scheme_object* FUNC5 (struct tl_compiler*,char const* const) ; 
 int FUNC6 (struct tl_compiler*,struct tl_scheme_object*,int*,int) ; 

int FUNC7 (struct tl_compiler *C, const char *const text, int *out, int olen, char **result_typename) {
  struct tl_scheme_object *O = FUNC5 (C, text);
  *result_typename = NULL;
  if (O == NULL) {
    return -1;
  }
  if (O->u.p.cdr != &obj_empty_list) {
    FUNC2 (C);
    FUNC4 (O);
    return FUNC3 (C, "expected single rpc call");
  }

  int r = FUNC6 (C, O, out, olen);
  if (r >= 0 && result_typename != NULL) {
    FUNC0 (C->serialized_first_function_expr);
    FUNC0 (C->serialized_first_function_expr->right_name);
    *result_typename = FUNC1 (C->serialized_first_function_expr->right_name);
  }
  return r;
}