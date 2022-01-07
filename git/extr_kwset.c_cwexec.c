
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trie {int accepting; int shift; int depth; struct tree* links; } ;
struct tree {unsigned char label; struct trie* trie; struct tree* rlink; struct tree* llink; } ;
struct kwsmatch {int index; int* offset; int * size; } ;
struct kwset {size_t mind; unsigned char* delta; unsigned char* trans; int maxd; struct trie* trie; struct trie** next; } ;
typedef scalar_t__ kwset_t ;


 size_t U (char const) ;

__attribute__((used)) static size_t
cwexec (kwset_t kws, char const *text, size_t len, struct kwsmatch *kwsmatch)
{
  struct kwset const *kwset;
  struct trie * const *next;
  struct trie const *trie;
  struct trie const *accept;
  char const *beg, *lim, *mch, *lmch;
  register unsigned char c;
  register unsigned char const *delta;
  register int d;
  register char const *end, *qlim;
  register struct tree const *tree;
  register unsigned char const *trans;

  accept = ((void*)0);


  kwset = (struct kwset *) kws;
  if (len < kwset->mind)
    return -1;
  next = kwset->next;
  delta = kwset->delta;
  trans = kwset->trans;
  lim = text + len;
  end = text;
  if ((d = kwset->mind) != 0)
    mch = ((void*)0);
  else
    {
      mch = text, accept = kwset->trie;
      goto match;
    }

  if (len >= 4 * kwset->mind)
    qlim = lim - 4 * kwset->mind;
  else
    qlim = ((void*)0);

  while (lim - end >= d)
    {
      if (qlim && end <= qlim)
 {
   end += d - 1;
   while ((d = delta[c = *end]) && end < qlim)
     {
       end += d;
       end += delta[U(*end)];
       end += delta[U(*end)];
     }
   ++end;
 }
      else
 d = delta[c = (end += d)[-1]];
      if (d)
 continue;
      beg = end - 1;
      trie = next[c];
      if (trie->accepting)
 {
   mch = beg;
   accept = trie;
 }
      d = trie->shift;
      while (beg > text)
 {
   c = trans ? trans[U(*--beg)] : *--beg;
   tree = trie->links;
   while (tree && c != tree->label)
     if (c < tree->label)
       tree = tree->llink;
     else
       tree = tree->rlink;
   if (tree)
     {
       trie = tree->trie;
       if (trie->accepting)
  {
    mch = beg;
    accept = trie;
  }
     }
   else
     break;
   d = trie->shift;
 }
      if (mch)
 goto match;
    }
  return -1;

 match:



  if (lim - mch > kwset->maxd)
    lim = mch + kwset->maxd;
  lmch = ((void*)0);
  d = 1;
  while (lim - end >= d)
    {
      if ((d = delta[c = (end += d)[-1]]) != 0)
 continue;
      beg = end - 1;
      if (!(trie = next[c]))
 {
   d = 1;
   continue;
 }
      if (trie->accepting && beg <= mch)
 {
   lmch = beg;
   accept = trie;
 }
      d = trie->shift;
      while (beg > text)
 {
   c = trans ? trans[U(*--beg)] : *--beg;
   tree = trie->links;
   while (tree && c != tree->label)
     if (c < tree->label)
       tree = tree->llink;
     else
       tree = tree->rlink;
   if (tree)
     {
       trie = tree->trie;
       if (trie->accepting && beg <= mch)
  {
    lmch = beg;
    accept = trie;
  }
     }
   else
     break;
   d = trie->shift;
 }
      if (lmch)
 {
   mch = lmch;
   goto match;
 }
      if (!d)
 d = 1;
    }

  if (kwsmatch)
    {
      kwsmatch->index = accept->accepting / 2;
      kwsmatch->offset[0] = mch - text;
      kwsmatch->size[0] = accept->depth;
    }
  return mch - text;
}
