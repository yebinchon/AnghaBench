
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trie {scalar_t__ shift; scalar_t__ depth; int * fail; int * next; int * parent; int * links; scalar_t__ accepting; } ;
struct kwset {int maxd; unsigned char const* trans; int * target; int mind; struct trie* trie; int obstack; scalar_t__ words; } ;
typedef int * kwset_t ;


 int INT_MAX ;
 int kwsfree (int *) ;
 scalar_t__ obstack_alloc (int *,int) ;
 int obstack_init (int *) ;
 scalar_t__ xmalloc (int) ;

kwset_t
kwsalloc (unsigned char const *trans)
{
  struct kwset *kwset;

  kwset = (struct kwset *) xmalloc(sizeof (struct kwset));

  obstack_init(&kwset->obstack);
  kwset->words = 0;
  kwset->trie
    = (struct trie *) obstack_alloc(&kwset->obstack, sizeof (struct trie));
  if (!kwset->trie)
    {
      kwsfree((kwset_t) kwset);
      return ((void*)0);
    }
  kwset->trie->accepting = 0;
  kwset->trie->links = ((void*)0);
  kwset->trie->parent = ((void*)0);
  kwset->trie->next = ((void*)0);
  kwset->trie->fail = ((void*)0);
  kwset->trie->depth = 0;
  kwset->trie->shift = 0;
  kwset->mind = INT_MAX;
  kwset->maxd = -1;
  kwset->target = ((void*)0);
  kwset->trans = trans;

  return (kwset_t) kwset;
}
