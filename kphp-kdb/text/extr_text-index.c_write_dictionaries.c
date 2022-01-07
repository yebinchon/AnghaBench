
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* user_list_offset; void* notword_dictionary_offset; void* word_dictionary_offset; void* notword_char_dictionary_offset; void* word_char_dictionary_offset; } ;


 TYPE_1__ Header ;
 int NotWordCharDict ;
 int NotWordList ;
 int WordCharDict ;
 int WordList ;
 int notword_codes_cnt ;
 int word_codes_cnt ;
 int write_char_dictionary (int *) ;
 void* write_pos ;
 int write_word_dictionary (int ,int ) ;

void write_dictionaries (void) {
  Header.word_char_dictionary_offset = write_pos;
  write_char_dictionary (&WordCharDict);
  Header.notword_char_dictionary_offset = write_pos;
  write_char_dictionary (&NotWordCharDict);
  Header.word_dictionary_offset = write_pos;
  write_word_dictionary (WordList, word_codes_cnt);
  Header.notword_dictionary_offset = write_pos;
  write_word_dictionary (NotWordList, notword_codes_cnt);
  Header.user_list_offset = write_pos;
}
