#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_10__ {int /*<<< orphan*/  outer_reference_cp; } ;
struct TYPE_9__ {int /*<<< orphan*/  property_list_cp; } ;
struct TYPE_11__ {int type_flags_refs; TYPE_2__ u2; TYPE_1__ u1; } ;
typedef  TYPE_3__ ecma_object_t ;

/* Variables and functions */
 int ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE ; 
 int ECMA_OBJECT_FLAG_BUILT_IN_OR_LEXICAL_ENV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  JMEM_CP_NULL ; 
 TYPE_3__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 

ecma_object_t *
FUNC3 (ecma_object_t *outer_lexical_environment_p) /**< outer lexical environment */
{
  ecma_object_t *new_lexical_environment_p = FUNC1 ();

  uint16_t type = ECMA_OBJECT_FLAG_BUILT_IN_OR_LEXICAL_ENV | ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE;
  new_lexical_environment_p->type_flags_refs = type;

  FUNC2 (new_lexical_environment_p);

  new_lexical_environment_p->u1.property_list_cp = JMEM_CP_NULL;

  FUNC0 (new_lexical_environment_p->u2.outer_reference_cp, outer_lexical_environment_p);

  return new_lexical_environment_p;
}