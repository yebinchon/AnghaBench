
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cur_wordlist_head ;
 scalar_t__ cur_wordlist_size ;

__attribute__((used)) static void clear_cur_wordlist (void) {
  cur_wordlist_size = 0;
  cur_wordlist_head = 0;
}
