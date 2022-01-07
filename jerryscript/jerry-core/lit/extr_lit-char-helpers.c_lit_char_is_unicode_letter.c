
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_char_t ;


 int NUM_OF_ELEMENTS (int ) ;
 int lit_unicode_letter_chars ;
 int lit_unicode_letter_interval_lengths ;
 int lit_unicode_letter_interval_sps ;
 scalar_t__ search_char_in_char_array (int ,int ,int ) ;
 scalar_t__ search_char_in_interval_array (int ,int ,int ,int ) ;

__attribute__((used)) static bool
lit_char_is_unicode_letter (ecma_char_t c)
{
  return (search_char_in_interval_array (c,
                                         lit_unicode_letter_interval_sps,
                                         lit_unicode_letter_interval_lengths,
                                         NUM_OF_ELEMENTS (lit_unicode_letter_interval_sps))
          || search_char_in_char_array (c, lit_unicode_letter_chars, NUM_OF_ELEMENTS (lit_unicode_letter_chars)));
}
