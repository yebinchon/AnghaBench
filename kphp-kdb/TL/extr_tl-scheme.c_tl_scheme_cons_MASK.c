#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct tl_scheme_object* cdr; struct tl_scheme_object* car; } ;
struct TYPE_4__ {TYPE_1__ p; } ;
struct tl_scheme_object {scalar_t__ type; TYPE_2__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct tl_scheme_object*) ; 
 scalar_t__ tlso_list ; 
 int verbosity ; 
 struct tl_scheme_object* FUNC2 (int) ; 

struct tl_scheme_object *FUNC3 (struct tl_scheme_object *A, struct tl_scheme_object *B) {
  if (verbosity >= 3) {
    FUNC0 (stderr, "(cons ");
    FUNC1 (stderr, A);
    FUNC0 (stderr, " ");
    FUNC1 (stderr, B);
    FUNC0 (stderr, ")\n");
  }
  if (B->type != tlso_list) {
    return NULL;
  }
  struct tl_scheme_object *O = FUNC2 (sizeof (struct tl_scheme_object));
  O->type = tlso_list;
  O->u.p.car = A;
  O->u.p.cdr = B;
  return O;
}