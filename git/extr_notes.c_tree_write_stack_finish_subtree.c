
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int buf; } ;
struct tree_write_stack {char* path; TYPE_1__ buf; struct tree_write_stack* next; } ;
struct object_id {int hash; } ;


 int free (struct tree_write_stack*) ;
 int strbuf_release (TYPE_1__*) ;
 int tree_type ;
 int write_object_file (int ,int ,int ,struct object_id*) ;
 int write_tree_entry (TYPE_1__*,int,char*,int,int ) ;

__attribute__((used)) static int tree_write_stack_finish_subtree(struct tree_write_stack *tws)
{
 int ret;
 struct tree_write_stack *n = tws->next;
 struct object_id s;
 if (n) {
  ret = tree_write_stack_finish_subtree(n);
  if (ret)
   return ret;
  ret = write_object_file(n->buf.buf, n->buf.len, tree_type, &s);
  if (ret)
   return ret;
  strbuf_release(&n->buf);
  free(n);
  tws->next = ((void*)0);
  write_tree_entry(&tws->buf, 040000, tws->path, 2, s.hash);
  tws->path[0] = tws->path[1] = '\0';
 }
 return 0;
}
