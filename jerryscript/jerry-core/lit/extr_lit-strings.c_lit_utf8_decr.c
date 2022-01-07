
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lit_utf8_byte_t ;
typedef scalar_t__* current_p ;


 int JERRY_ASSERT (int const*) ;
 scalar_t__ LIT_UTF8_EXTRA_BYTE_MARKER ;
 int LIT_UTF8_EXTRA_BYTE_MASK ;

void
lit_utf8_decr (const lit_utf8_byte_t **buf_p)
{
  JERRY_ASSERT (*buf_p);
  const lit_utf8_byte_t *current_p = *buf_p;

  do
  {
    current_p--;
  }
  while ((*(current_p) & LIT_UTF8_EXTRA_BYTE_MASK) == LIT_UTF8_EXTRA_BYTE_MARKER);

  *buf_p = current_p;
}
