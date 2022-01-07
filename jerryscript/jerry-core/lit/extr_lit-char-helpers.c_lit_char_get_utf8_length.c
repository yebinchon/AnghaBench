
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_char_t ;


 int LIT_UTF8_1_BYTE_CODE_POINT_MAX ;
 int LIT_UTF8_2_BYTE_CODE_POINT_MAX ;

size_t
lit_char_get_utf8_length (ecma_char_t chr)
{
  if (!(chr & ~LIT_UTF8_1_BYTE_CODE_POINT_MAX))
  {

    return 1;
  }

  if (!(chr & ~LIT_UTF8_2_BYTE_CODE_POINT_MAX))
  {

    return 2;
  }


  return 3;
}
