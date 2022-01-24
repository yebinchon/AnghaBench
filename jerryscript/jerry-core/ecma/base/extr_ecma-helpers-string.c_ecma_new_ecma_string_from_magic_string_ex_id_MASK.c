#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ lit_magic_string_ex_id_t ;
struct TYPE_5__ {scalar_t__ magic_string_ex_id; } ;
struct TYPE_6__ {int refs_and_container; TYPE_1__ u; } ;
typedef  TYPE_2__ ecma_string_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,uintptr_t) ; 
 int /*<<< orphan*/  ECMA_DIRECT_STRING_MAGIC ; 
 uintptr_t ECMA_DIRECT_STRING_MAX_IMM ; 
 int ECMA_STRING_CONTAINER_MAGIC_STRING_EX ; 
 int ECMA_STRING_REF_ONE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ LIT_MAGIC_STRING__COUNT ; 
 TYPE_2__* FUNC3 () ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static ecma_string_t *
FUNC5 (lit_magic_string_ex_id_t id) /**< identifier of externl magic string */
{
  FUNC1 (id < FUNC4 ());

  uintptr_t string_id = (uintptr_t) (id + LIT_MAGIC_STRING__COUNT);

  if (FUNC2 (string_id <= ECMA_DIRECT_STRING_MAX_IMM))
  {
    return (ecma_string_t *) FUNC0 (ECMA_DIRECT_STRING_MAGIC, string_id);
  }

  ecma_string_t *string_desc_p = FUNC3 ();

  string_desc_p->refs_and_container = ECMA_STRING_CONTAINER_MAGIC_STRING_EX | ECMA_STRING_REF_ONE;
  string_desc_p->u.magic_string_ex_id = id + LIT_MAGIC_STRING__COUNT;

  return string_desc_p;
}