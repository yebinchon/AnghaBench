
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fpr_t ;


 int * RESERVED_WORDS_F ;
 int assert (int) ;
 int get_cmd_f (char const*,int) ;
 int vkprintf (int,char*,char const*,int) ;

__attribute__((used)) static int add_reserved_word (const char* cmd, fpr_t f) {
  int i = get_cmd_f (cmd, 1);
  assert (i >= 0);
  RESERVED_WORDS_F[i] = f;
  vkprintf (3, "add_reserved_word %s at slot %d\n", cmd, i);
  return i;
}
