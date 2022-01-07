
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct commit_list {struct commit_list* next; TYPE_2__* item; } ;
struct commit {struct commit_list* parents; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ object; } ;


 int TMP_MARK ;
 int commit_list_count (struct commit_list*) ;
 int die (char*,int,int,int,int) ;
 int free_commit_list (struct commit_list*) ;
 struct commit_list* reduce_heads (struct commit_list*) ;

__attribute__((used)) static int mark_redundant_parents(struct commit *commit)
{
 struct commit_list *h = reduce_heads(commit->parents);
 int i = 0, marked = 0;
 struct commit_list *po, *pn;


 int orig_cnt = commit_list_count(commit->parents);
 int cnt = commit_list_count(h);






 po = commit->parents;
 pn = h;
 while (po) {
  if (pn && po->item == pn->item) {
   pn = pn->next;
   i++;
  } else {
   po->item->object.flags |= TMP_MARK;
   marked++;
  }
  po=po->next;
 }

 if (i != cnt || cnt+marked != orig_cnt)
  die("mark_redundant_parents %d %d %d %d", orig_cnt, cnt, i, marked);

 free_commit_list(h);

 return marked;
}
