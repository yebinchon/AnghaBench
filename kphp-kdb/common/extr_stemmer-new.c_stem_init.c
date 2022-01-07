
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gen_double_eng () ;
 int gen_li_endings_eng () ;
 int gen_syllable_exceptions_eng () ;
 int gen_trie_eng () ;
 int gen_trie_rus () ;
 int gen_vowels_eng () ;
 int gen_vowels_rus () ;

void stem_init (void) {
  gen_trie_rus ();
  gen_vowels_rus ();

  gen_trie_eng ();
  gen_vowels_eng ();
  gen_double_eng ();
  gen_li_endings_eng ();
  gen_syllable_exceptions_eng ();
}
