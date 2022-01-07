
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct common_dir {scalar_t__ path; } ;


 int add_to_trie (int *,scalar_t__,struct common_dir*) ;
 struct common_dir* common_list ;
 int common_trie ;
 int common_trie_done_setup ;

__attribute__((used)) static void init_common_trie(void)
{
 struct common_dir *p;

 if (common_trie_done_setup)
  return;

 for (p = common_list; p->path; p++)
  add_to_trie(&common_trie, p->path, p);

 common_trie_done_setup = 1;
}
