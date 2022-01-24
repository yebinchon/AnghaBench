#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct object_slot {void* value; void* string; } ;
struct TYPE_13__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_14__ {TYPE_1__ u; } ;
typedef  TYPE_2__ jv ;
struct TYPE_15__ {int /*<<< orphan*/  next_free; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__,int /*<<< orphan*/ ) ; 
 scalar_t__ JV_KIND_NULL ; 
 int /*<<< orphan*/  JV_KIND_OBJECT ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 void* FUNC2 (void*) ; 
 scalar_t__ FUNC3 (void*) ; 
 int* FUNC4 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__) ; 
 struct object_slot* FUNC6 (TYPE_2__,int) ; 
 TYPE_2__ FUNC7 (int) ; 
 TYPE_6__* FUNC8 (TYPE_2__) ; 
 int FUNC9 (TYPE_2__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int*,int*,int) ; 

__attribute__((used)) static jv FUNC12(jv object) {
  FUNC1(FUNC0(object, JV_KIND_OBJECT));
  if (FUNC10(object.u.ptr))
    return object;

  jv new_object = FUNC7(FUNC9(object));
  FUNC8(new_object)->next_free = FUNC8(object)->next_free;
  for (int i=0; i<FUNC9(new_object); i++) {
    struct object_slot* old_slot = FUNC6(object, i);
    struct object_slot* new_slot = FUNC6(new_object, i);
    *new_slot = *old_slot;
    if (FUNC3(old_slot->string) != JV_KIND_NULL) {
      new_slot->string = FUNC2(old_slot->string);
      new_slot->value = FUNC2(old_slot->value);
    }
  }

  int* old_buckets = FUNC4(object);
  int* new_buckets = FUNC4(new_object);
  FUNC11(new_buckets, old_buckets, sizeof(int) * FUNC9(new_object)*2);

  FUNC5(object);
  FUNC1(FUNC10(new_object.u.ptr));
  return new_object;
}