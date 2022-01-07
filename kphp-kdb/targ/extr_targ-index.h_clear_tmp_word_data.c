
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tmp_word_data ;
 int tmp_word_data_cur ;

__attribute__((used)) static inline void clear_tmp_word_data (void) {
  tmp_word_data_cur = tmp_word_data;
}
