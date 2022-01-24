#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {double d; int i; long long l; char* s; } ;
struct tl_scheme_object {TYPE_1__ u; } ;
struct tl_compiler {int dummy; } ;

/* Variables and functions */
 int CODE_double ; 
 int CODE_int ; 
 int CODE_long ; 
 int CODE_string ; 
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int FUNC2 (struct tl_compiler*,char*,...) ; 
 int FUNC3 (int*,int,char**,int /*<<< orphan*/ *,int) ; 
 struct tl_scheme_object* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tlso_double ; 
 int /*<<< orphan*/  tlso_int ; 
 int /*<<< orphan*/  tlso_long ; 
 int /*<<< orphan*/  tlso_str ; 
 int FUNC5 (char const) ; 

int FUNC6 (struct tl_compiler *C, int *input, int ilen, const char *name, struct tl_scheme_object **R) {
  if (name == NULL) {
    return 0;
  }
  int i = 0;
  switch (FUNC5 (name[0])) {
    case 'd':
      if (!FUNC1 (name + 1, "ouble")) {
        if (FUNC0 (name[0])) {
          if (i >= ilen) {
            return FUNC2 (C, "not enough input to unserialize %s", name);
          }
          if (input[i] != CODE_double) {
            return FUNC2 (C, "unserialize Double failed, expected magic 0x%08x but 0x%08x found", CODE_double, input[i]);
          }
          i++;
        }
        if (i >= ilen - 1) {
          return FUNC2 (C, "not enough input to unserialize %s", name);
        }
        *R = FUNC4 (tlso_double);
        (*R)->u.d = *((double *) &input[i]);
        i += 2;
        return i;
      }
    break;
    case 'i':
      if (!FUNC1 (name + 1, "nt")) {
        if (FUNC0 (name[0])) {
          if (i >= ilen) {
            return FUNC2 (C, "not enough input to unserialize %s", name);
          }
          if (input[i] != CODE_int) {
            return FUNC2 (C, "unserialize Int failed, expected magic 0x%08x but 0x%08x found", CODE_int, input[i]);
          }
          i++;
        }
        if (i >= ilen) {
          return FUNC2 (C, "not enough input to unserialize %s", name);
        }
        *R = FUNC4 (tlso_int);
        (*R)->u.i = input[i++];
        return i;
      }
    break;
    case 'l':
      if (!FUNC1 (name + 1, "ong")) {
        if (FUNC0 (name[0])) {
          if (i >= ilen) {
            return FUNC2 (C, "not enough input to unserialize %s", name);
          }
          if (input[i] != CODE_long) {
            return FUNC2 (C, "unserialize Long failed, expected magic 0x%08x but 0x%08x found", CODE_long, input[i]);
          }
          i++;
        }
        if (i >= ilen - 1) {
          return FUNC2 (C, "not enough input to unserialize %s", name);
        }
        *R = FUNC4 (tlso_long);
        (*R)->u.l = *((long long *) &input[i]);
        i += 2;
        return i;
      }
    break;
    case 's':
      if (!FUNC1 (name + 1, "tring")) {
        if (FUNC0 (name[0])) {
          if (i >= ilen) {
            return FUNC2 (C, "not enough input to unserialize %s", name);
          }
          if (input[i] != CODE_string) {
            return FUNC2 (C, "unserialize String failed, expected magic 0x%08x but 0x%08x found", CODE_string, input[i]);
          }
          i++;
        }
        if (i >= ilen) {
          return FUNC2 (C, "not enough input to unserialize %s", name);
        }
        char *s;
        int l = FUNC3 (input + i, ilen - i, &s, NULL, 1);
        if (l < 0) {
          return FUNC2 (C, "tl_fetch_string fail");
        }
        *R = FUNC4 (tlso_str);
        (*R)->u.s = s;
        return i + l;
      }
    break;
  }
  return 0;
}