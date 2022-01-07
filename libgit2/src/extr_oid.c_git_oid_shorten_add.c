
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* tail; size_t* children; } ;
typedef TYPE_1__ trie_node ;
typedef size_t node_index ;
struct TYPE_7__ {int min_length; scalar_t__ full; TYPE_1__* nodes; } ;
typedef TYPE_2__ git_oid_shorten ;


 int GIT_ERROR_INVALID ;
 int GIT_OID_HEXSZ ;
 int git__fromhex (char const) ;
 int git_error_set (int ,char*) ;
 TYPE_1__* push_leaf (TYPE_2__*,size_t,int,char const*) ;

int git_oid_shorten_add(git_oid_shorten *os, const char *text_oid)
{
 int i;
 bool is_leaf;
 node_index idx;

 if (os->full) {
  git_error_set(GIT_ERROR_INVALID, "unable to shorten OID - OID set full");
  return -1;
 }

 if (text_oid == ((void*)0))
  return os->min_length;

 idx = 0;
 is_leaf = 0;

 for (i = 0; i < GIT_OID_HEXSZ; ++i) {
  int c = git__fromhex(text_oid[i]);
  trie_node *node;

  if (c == -1) {
   git_error_set(GIT_ERROR_INVALID, "unable to shorten OID - invalid hex value");
   return -1;
  }

  node = &os->nodes[idx];

  if (is_leaf) {
   const char *tail;

   tail = node->tail;
   node->tail = ((void*)0);

   node = push_leaf(os, idx, git__fromhex(tail[0]), &tail[1]);
   if (node == ((void*)0)) {
    if (os->full)
     git_error_set(GIT_ERROR_INVALID, "unable to shorten OID - OID set full");
    return -1;
   }
  }

  if (node->children[c] == 0) {
   if (push_leaf(os, idx, c, &text_oid[i + 1]) == ((void*)0)) {
    if (os->full)
     git_error_set(GIT_ERROR_INVALID, "unable to shorten OID - OID set full");
    return -1;
   }
   break;
  }

  idx = node->children[c];
  is_leaf = 0;

  if (idx < 0) {
   node->children[c] = idx = -idx;
   is_leaf = 1;
  }
 }

 if (++i > os->min_length)
  os->min_length = i;

 return os->min_length;
}
