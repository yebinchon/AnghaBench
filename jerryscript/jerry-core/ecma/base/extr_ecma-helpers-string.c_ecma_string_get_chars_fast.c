
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int lit_utf8_size_t ;
typedef int lit_utf8_byte_t ;
typedef scalar_t__ lit_magic_string_ex_id_t ;
struct TYPE_15__ {int size; } ;
typedef TYPE_2__ ecma_utf8_string_t ;
struct TYPE_14__ {scalar_t__ magic_string_ex_id; } ;
struct TYPE_16__ {scalar_t__ refs_and_container; TYPE_1__ u; } ;
typedef TYPE_3__ ecma_string_t ;
struct TYPE_17__ {int size; } ;
typedef TYPE_4__ ecma_long_utf8_string_t ;
struct TYPE_18__ {int size; } ;
typedef TYPE_5__ ecma_ascii_string_t ;


 int const* ECMA_ASCII_STRING_GET_BUFFER (TYPE_3__ const*) ;
 scalar_t__ ECMA_DIRECT_STRING_MAGIC ;
 scalar_t__ ECMA_GET_DIRECT_STRING_TYPE (TYPE_3__ const*) ;
 int ECMA_GET_DIRECT_STRING_VALUE (TYPE_3__ const*) ;
 scalar_t__ ECMA_IS_DIRECT_STRING (TYPE_3__ const*) ;
 int const* ECMA_LONG_UTF8_STRING_GET_BUFFER (TYPE_3__ const*) ;



 int ECMA_STRING_CONTAINER_MAGIC_STRING_EX ;
 int ECMA_STRING_GET_CONTAINER (TYPE_3__ const*) ;
 scalar_t__ ECMA_STRING_REF_ONE ;
 int const* ECMA_UTF8_STRING_GET_BUFFER (TYPE_3__ const*) ;
 int JERRY_ASSERT (int) ;
 scalar_t__ LIT_MAGIC_STRING__COUNT ;
 int lit_get_magic_string_ex_size (scalar_t__) ;
 int const* lit_get_magic_string_ex_utf8 (scalar_t__) ;
 int lit_get_magic_string_size (scalar_t__) ;
 int const* lit_get_magic_string_utf8 (scalar_t__) ;

__attribute__((used)) static const lit_utf8_byte_t *
ecma_string_get_chars_fast (const ecma_string_t *string_p,
                            lit_utf8_size_t *size_p)
{
  if (ECMA_IS_DIRECT_STRING (string_p))
  {
    if (ECMA_GET_DIRECT_STRING_TYPE (string_p) == ECMA_DIRECT_STRING_MAGIC)
    {
      uint32_t id = (uint32_t) ECMA_GET_DIRECT_STRING_VALUE (string_p);

      if (id >= LIT_MAGIC_STRING__COUNT)
      {
        id -= LIT_MAGIC_STRING__COUNT;

        *size_p = lit_get_magic_string_ex_size (id);
        return lit_get_magic_string_ex_utf8 (id);
      }

      *size_p = lit_get_magic_string_size (id);
      return lit_get_magic_string_utf8 (id);
    }
  }

  JERRY_ASSERT (string_p->refs_and_container >= ECMA_STRING_REF_ONE);

  switch (ECMA_STRING_GET_CONTAINER (string_p))
  {
    case 128:
    {
      *size_p = ((ecma_utf8_string_t *) string_p)->size;
      return ECMA_UTF8_STRING_GET_BUFFER (string_p);
    }
    case 129:
    {
      *size_p = ((ecma_long_utf8_string_t *) string_p)->size;
      return ECMA_LONG_UTF8_STRING_GET_BUFFER (string_p);
    }
    case 130:
    {
      *size_p = ((ecma_ascii_string_t *) string_p)->size;
      return ECMA_ASCII_STRING_GET_BUFFER (string_p);
    }
    default:
    {
      JERRY_ASSERT (ECMA_STRING_GET_CONTAINER (string_p) == ECMA_STRING_CONTAINER_MAGIC_STRING_EX);

      lit_magic_string_ex_id_t id = LIT_MAGIC_STRING__COUNT - string_p->u.magic_string_ex_id;
      *size_p = lit_get_magic_string_ex_size (id);
      return lit_get_magic_string_ex_utf8 (id);
    }
  }
}
