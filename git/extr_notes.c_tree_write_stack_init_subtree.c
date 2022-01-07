
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree_write_stack {char* path; struct tree_write_stack* next; int buf; } ;
struct TYPE_2__ {int hexsz; } ;


 int assert (int) ;
 int strbuf_init (int *,int) ;
 TYPE_1__* the_hash_algo ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void tree_write_stack_init_subtree(struct tree_write_stack *tws,
  const char *path)
{
 struct tree_write_stack *n;
 assert(!tws->next);
 assert(tws->path[0] == '\0' && tws->path[1] == '\0');
 n = (struct tree_write_stack *)
  xmalloc(sizeof(struct tree_write_stack));
 n->next = ((void*)0);
 strbuf_init(&n->buf, 256 * (32 + the_hash_algo->hexsz));
 n->path[0] = n->path[1] = '\0';
 tws->next = n;
 tws->path[0] = path[0];
 tws->path[1] = path[1];
}
