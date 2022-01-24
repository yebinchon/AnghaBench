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
struct tl_scheme_object {int dummy; } ;
struct tl_compiler {int dummy; } ;
struct tl_buffer {int dummy; } ;

/* Variables and functions */
 int TL_SECTION_TYPES ; 
 int /*<<< orphan*/  FUNC0 (struct tl_compiler*) ; 
 int FUNC1 (struct tl_compiler*,int*,int,int,char*,struct tl_scheme_object**) ; 
 int /*<<< orphan*/  FUNC2 (struct tl_scheme_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct tl_buffer*,struct tl_scheme_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct tl_buffer*,struct tl_scheme_object*,int /*<<< orphan*/ ) ; 

int FUNC5 (struct tl_compiler *C, struct tl_buffer *b, int *input, int ilen, char *result_typename, int indentation) {
  struct tl_scheme_object *O = NULL;
  FUNC0 (C);
  int r = FUNC1 (C, input, ilen, 1 << TL_SECTION_TYPES, result_typename, &O);
  if (r >= 0 && O != NULL) {
    if (indentation) {
      FUNC4 (b, O, 0);
    } else {
      FUNC3 (b, O);
    }
    FUNC2 (O);
  }
  return r;
}