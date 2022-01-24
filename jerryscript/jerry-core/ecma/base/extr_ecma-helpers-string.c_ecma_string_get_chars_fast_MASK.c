#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  lit_utf8_size_t ;
typedef  int /*<<< orphan*/  lit_utf8_byte_t ;
typedef  scalar_t__ lit_magic_string_ex_id_t ;
struct TYPE_15__ {int /*<<< orphan*/  size; } ;
typedef  TYPE_2__ ecma_utf8_string_t ;
struct TYPE_14__ {scalar_t__ magic_string_ex_id; } ;
struct TYPE_16__ {scalar_t__ refs_and_container; TYPE_1__ u; } ;
typedef  TYPE_3__ ecma_string_t ;
struct TYPE_17__ {int /*<<< orphan*/  size; } ;
typedef  TYPE_4__ ecma_long_utf8_string_t ;
struct TYPE_18__ {int /*<<< orphan*/  size; } ;
typedef  TYPE_5__ ecma_ascii_string_t ;

/* Variables and functions */
 int /*<<< orphan*/  const* FUNC0 (TYPE_3__ const*) ; 
 scalar_t__ ECMA_DIRECT_STRING_MAGIC ; 
 scalar_t__ FUNC1 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__ const*) ; 
 scalar_t__ FUNC3 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  const* FUNC4 (TYPE_3__ const*) ; 
#define  ECMA_STRING_CONTAINER_HEAP_ASCII_STRING 130 
#define  ECMA_STRING_CONTAINER_HEAP_LONG_UTF8_STRING 129 
#define  ECMA_STRING_CONTAINER_HEAP_UTF8_STRING 128 
 int ECMA_STRING_CONTAINER_MAGIC_STRING_EX ; 
 int FUNC5 (TYPE_3__ const*) ; 
 scalar_t__ ECMA_STRING_REF_ONE ; 
 int /*<<< orphan*/  const* FUNC6 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ LIT_MAGIC_STRING__COUNT ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  const* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  const* FUNC11 (scalar_t__) ; 

__attribute__((used)) static const lit_utf8_byte_t *
FUNC12 (const ecma_string_t *string_p, /**< ecma-string */
                            lit_utf8_size_t *size_p) /**< [out] size of the ecma string */
{
  if (FUNC3 (string_p))
  {
    if (FUNC1 (string_p) == ECMA_DIRECT_STRING_MAGIC)
    {
      uint32_t id = (uint32_t) FUNC2 (string_p);

      if (id >= LIT_MAGIC_STRING__COUNT)
      {
        id -= LIT_MAGIC_STRING__COUNT;

        *size_p = FUNC8 (id);
        return FUNC9 (id);
      }

      *size_p = FUNC10 (id);
      return FUNC11 (id);
    }
  }

  FUNC7 (string_p->refs_and_container >= ECMA_STRING_REF_ONE);

  switch (FUNC5 (string_p))
  {
    case ECMA_STRING_CONTAINER_HEAP_UTF8_STRING:
    {
      *size_p = ((ecma_utf8_string_t *) string_p)->size;
      return FUNC6 (string_p);
    }
    case ECMA_STRING_CONTAINER_HEAP_LONG_UTF8_STRING:
    {
      *size_p = ((ecma_long_utf8_string_t *) string_p)->size;
      return FUNC4 (string_p);
    }
    case ECMA_STRING_CONTAINER_HEAP_ASCII_STRING:
    {
      *size_p = ((ecma_ascii_string_t *) string_p)->size;
      return FUNC0 (string_p);
    }
    default:
    {
      FUNC7 (FUNC5 (string_p) == ECMA_STRING_CONTAINER_MAGIC_STRING_EX);

      lit_magic_string_ex_id_t id = LIT_MAGIC_STRING__COUNT - string_p->u.magic_string_ex_id;
      *size_p = FUNC8 (id);
      return FUNC9 (id);
    }
  }
}