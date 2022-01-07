
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int read; } ;
struct TYPE_6__ {int * tree; TYPE_1__ reader; } ;
typedef TYPE_2__ tree_reader ;
typedef int git_tree ;
typedef int git_reader ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_2__*) ;
 int assert (int) ;
 TYPE_2__* git__calloc (int,int) ;
 int tree_reader_read ;

int git_reader_for_tree(git_reader **out, git_tree *tree)
{
 tree_reader *reader;

 assert(out && tree);

 reader = git__calloc(1, sizeof(tree_reader));
 GIT_ERROR_CHECK_ALLOC(reader);

 reader->reader.read = tree_reader_read;
 reader->tree = tree;

 *out = (git_reader *)reader;
 return 0;
}
