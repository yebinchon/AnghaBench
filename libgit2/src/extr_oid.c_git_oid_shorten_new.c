
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int node_count; int min_length; } ;
typedef TYPE_1__ git_oid_shorten ;


 int assert (int) ;
 TYPE_1__* git__calloc (int,int) ;
 int git__free (TYPE_1__*) ;
 scalar_t__ resize_trie (TYPE_1__*,int) ;

git_oid_shorten *git_oid_shorten_new(size_t min_length)
{
 git_oid_shorten *os;

 assert((size_t)((int)min_length) == min_length);

 os = git__calloc(1, sizeof(git_oid_shorten));
 if (os == ((void*)0))
  return ((void*)0);

 if (resize_trie(os, 16) < 0) {
  git__free(os);
  return ((void*)0);
 }

 os->node_count = 1;
 os->min_length = (int)min_length;

 return os;
}
