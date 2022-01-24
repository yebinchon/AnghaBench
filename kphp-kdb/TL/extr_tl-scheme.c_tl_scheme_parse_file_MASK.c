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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (struct tl_compiler*,char const* const) ; 
 struct tl_scheme_object* FUNC2 (struct tl_compiler*,char*) ; 

struct tl_scheme_object *FUNC3 (struct tl_compiler *C, const char *const filename) {
  char *a = FUNC1 (C, filename);
  if (a == NULL) {
    return NULL;
  }
  struct tl_scheme_object *O = FUNC2 (C, a);
  FUNC0 (a);
  return O;
}