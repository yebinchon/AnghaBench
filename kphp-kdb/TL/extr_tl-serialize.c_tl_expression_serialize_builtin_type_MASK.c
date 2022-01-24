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
struct tl_int_array {int dummy; } ;
struct tl_compiler {int dummy; } ;

/* Variables and functions */
 int CODE_double ; 
 int CODE_int ; 
 int CODE_long ; 
 int CODE_string ; 
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char const* const,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct tl_int_array*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tl_int_array*,double) ; 
 int /*<<< orphan*/  FUNC4 (struct tl_int_array*,long long) ; 
 int /*<<< orphan*/  FUNC5 (struct tl_int_array*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct tl_scheme_object*,double*) ; 
 int /*<<< orphan*/  FUNC7 (struct tl_scheme_object*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct tl_scheme_object*,long long*) ; 
 int /*<<< orphan*/  FUNC9 (struct tl_scheme_object*,char**) ; 
 int FUNC10 (struct tl_compiler*,struct tl_scheme_object*,char*) ; 
 int FUNC11 (char const) ; 

int FUNC12 (struct tl_compiler *C, struct tl_scheme_object *E, const char *const name, struct tl_int_array *a) {
  int i;
  long long l;
  double d;
  char *s;
  switch (FUNC11 (name[0])) {
    case 'd':
      if (!FUNC1 (name + 1, "ouble")) {
        if (FUNC6 (E, &d) < 0) {
          return FUNC10 (C, E, "isn't of type 'double'");
        }
        if (FUNC0 (name[0])) {
          if (FUNC2 (a, CODE_double) < 0) {
            return FUNC10 (C, E, "output buffer overflow");
          }
        }
        if (FUNC3 (a, d) < 0) {
          return FUNC10 (C, E, "output buffer overflow");
        }
        return 1;
      }
    break;
    case 'i':
      if (!FUNC1 (name + 1, "nt")) {
        if (FUNC7 (E, &i) < 0) {
          return FUNC10 (C, E, "isn't of type 'int'");
        }
        if (FUNC0 (name[0])) {
          if (FUNC2 (a, CODE_int) < 0) {
            return FUNC10 (C, E, "output buffer overflow");
          }
        }
        if (FUNC2 (a, i) < 0) {
          return FUNC10 (C, E, "output buffer overflow");
        }
        return 1;
      }
    break;
    case 'l':
      if (!FUNC1 (name + 1, "ong")) {
        if (FUNC8 (E, &l) < 0) {
          return FUNC10 (C, E, "isn't of type 'long'");
        }
        if (FUNC0 (name[0])) {
          if (FUNC2 (a, CODE_long) < 0) {
            return FUNC10 (C, E, "output buffer overflow");
          }
        }
        if (FUNC4 (a, l) < 0) {
          return FUNC10 (C, E, "output buffer overflow");
        }
        return 1;
      }
    break;
    case 's':
      if (!FUNC1 (name + 1, "tring")) {
        if (FUNC9 (E, &s) < 0) {
          return FUNC10 (C, E, "isn't of type 'string'");
        }
        if (FUNC0 (name[0])) {
          if (FUNC2 (a, CODE_string) < 0) {
            return FUNC10 (C, E, "output buffer overflow");
          }
        }
        if (FUNC5 (a, s) < 0) {
          return FUNC10 (C, E, "output buffer overflow");
        }
        return 1;
      }
    break;
  }

  return 0;
}