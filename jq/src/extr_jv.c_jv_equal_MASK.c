#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ ptr; } ;
struct TYPE_17__ {scalar_t__ kind_flags; scalar_t__ size; TYPE_1__ u; } ;
typedef  TYPE_2__ jv ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__) ; 
#define  JV_KIND_ARRAY 131 
#define  JV_KIND_NUMBER 130 
#define  JV_KIND_OBJECT 129 
#define  JV_KIND_STRING 128 
 int /*<<< orphan*/  FUNC1 (TYPE_2__) ; 
 int FUNC2 (TYPE_2__) ; 
 int FUNC3 (TYPE_2__,TYPE_2__) ; 
 int FUNC4 (TYPE_2__,TYPE_2__) ; 
 int FUNC5 (TYPE_2__,TYPE_2__) ; 
 int FUNC6 (TYPE_2__,TYPE_2__) ; 

int FUNC7(jv a, jv b) {
  int r;
  if (FUNC2(a) != FUNC2(b)) {
    r = 0;
  } else if (FUNC0(a) &&
             FUNC0(b) &&
             a.kind_flags == b.kind_flags &&
             a.size == b.size &&
             a.u.ptr == b.u.ptr) {
    r = 1;
  } else {
    switch (FUNC2(a)) {
    case JV_KIND_NUMBER:
      r = FUNC4(a, b);
      break;
    case JV_KIND_ARRAY:
      r = FUNC3(a, b);
      break;
    case JV_KIND_STRING:
      r = FUNC6(a, b);
      break;
    case JV_KIND_OBJECT:
      r = FUNC5(a, b);
      break;
    default:
      r = 1;
      break;
    }
  }
  FUNC1(a);
  FUNC1(b);
  return r;
}