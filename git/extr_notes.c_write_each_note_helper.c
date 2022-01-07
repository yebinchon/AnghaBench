
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_write_stack {int buf; struct tree_write_stack* next; } ;
struct object_id {int hash; } ;


 int assert (int ) ;
 scalar_t__ matches_tree_write_stack (struct tree_write_stack*,char const*) ;
 int * memchr (char const*,char,size_t) ;
 size_t strlen (char const*) ;
 int tree_write_stack_finish_subtree (struct tree_write_stack*) ;
 int tree_write_stack_init_subtree (struct tree_write_stack*,char const*) ;
 int write_tree_entry (int *,unsigned int,char const*,size_t,int ) ;

__attribute__((used)) static int write_each_note_helper(struct tree_write_stack *tws,
  const char *path, unsigned int mode,
  const struct object_id *oid)
{
 size_t path_len = strlen(path);
 unsigned int n = 0;
 int ret;


 while (tws && 3 * n < path_len &&
        matches_tree_write_stack(tws, path + 3 * n)) {
  n++;
  tws = tws->next;
 }


 ret = tree_write_stack_finish_subtree(tws);
 if (ret)
  return ret;


 while (3 * n + 2 < path_len && path[3 * n + 2] == '/') {
  tree_write_stack_init_subtree(tws, path + 3 * n);
  n++;
  tws = tws->next;
 }


 assert(memchr(path + 3 * n, '/', path_len - (3 * n)) == ((void*)0));


 write_tree_entry(&tws->buf, mode, path + 3 * n, path_len - (3 * n),
    oid->hash);

 return 0;
}
