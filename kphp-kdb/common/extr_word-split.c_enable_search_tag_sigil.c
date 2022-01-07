
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int declare_sigil (int) ;
 int sigil_word_detect ;
 int std_sigil_word_detect ;

void enable_search_tag_sigil (void) {
  declare_sigil (0x1f);
  sigil_word_detect = std_sigil_word_detect;
}
