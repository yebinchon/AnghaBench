
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;
typedef int uint32_t ;


 int JERRY_ASSERT (int) ;

__attribute__((used)) static bool
ecma_builtin_global_object_character_is_in (uint32_t character,
                                            const uint8_t *bitset)
{
  JERRY_ASSERT (character < 128);
  return (bitset[character >> 3] & (1u << (character & 0x7))) != 0;
}
