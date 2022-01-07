
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hash_list_t ;


 int * save_words_hashlist_pattern (char const*,int,int,int ,int) ;

inline hash_list_t *save_words_hashlist (const char *str, int flags, int type) {
  return save_words_hashlist_pattern (str, flags, -1, 0, type);
}
