
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int entry_t ;


 int assert (int) ;
 int black_list_get (int ,int) ;
 int buff ;
 int * fd ;
 int max_words ;
 int write (int ,int ,int) ;

int black_list_save (void) {
  int len = black_list_get (buff, max_words * sizeof (entry_t));
  len++;
  assert (write (fd[1], buff, len) == len);
  return len;
}
