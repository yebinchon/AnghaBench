
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trie {struct trie* fail; struct tree* links; } ;
struct tree {scalar_t__ label; struct trie* trie; struct tree* rlink; struct tree* llink; } ;



__attribute__((used)) static void
treefails (register struct tree const *tree, struct trie const *fail,
    struct trie *recourse)
{
  register struct tree *link;

  if (!tree)
    return;

  treefails(tree->llink, fail, recourse);
  treefails(tree->rlink, fail, recourse);



  while (fail)
    {
      link = fail->links;
      while (link && tree->label != link->label)
 if (tree->label < link->label)
   link = link->llink;
 else
   link = link->rlink;
      if (link)
 {
   tree->trie->fail = link->trie;
   return;
 }
      fail = fail->fail;
    }

  tree->trie->fail = recourse;
}
