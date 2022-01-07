
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct char_dictionary {int* code_len; int freq; } ;


 int initcrc () ;
 int write_freq_int_array (int ) ;
 int writecrc () ;
 int writeout (int*,int) ;

void write_char_dictionary (struct char_dictionary *Dict) {
  static int dict_size = 256;
  initcrc ();
  writeout (&dict_size, 4);
  writeout (Dict->code_len, 256);
  writecrc ();
  write_freq_int_array (Dict->freq);
  writecrc ();
}
