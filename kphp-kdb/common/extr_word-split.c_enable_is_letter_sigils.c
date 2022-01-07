
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int declare_sigil (char) ;
 int declare_special (char) ;
 int* is_letter ;
 int sigil_word_detect ;
 int std_sigil_word_detect ;

void enable_is_letter_sigils (void) {
  declare_sigil ('@');
  declare_sigil ('#');
  declare_sigil ('$');
  declare_sigil ('%');
  declare_sigil ('*');
  declare_sigil ('[');
  declare_special (']');
  declare_special ('_');
  declare_special ('-');
  declare_special ('.');
  is_letter['_'] = 4;
  sigil_word_detect = std_sigil_word_detect;
}
