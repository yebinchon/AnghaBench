
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_oid ;
struct TYPE_8__ {size_t seconds; } ;
struct TYPE_7__ {size_t seconds; } ;
struct TYPE_9__ {char* path; int file_size; int mode; TYPE_2__ mtime; TYPE_1__ ctime; int id; } ;
typedef TYPE_3__ git_index_entry ;
typedef int git_index ;


 int * _index ;
 int _repo ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,size_t) ;
 int cl_git_pass (int ) ;
 int git_index_add (int *,TYPE_3__*) ;
 size_t git_index_entrycount (int *) ;
 int git_index_free (int *) ;
 TYPE_3__* git_index_get_byindex (int *,size_t) ;
 int git_index_new (int **) ;
 int git_index_read_index (int *,int *) ;
 int git_index_read_tree (int *,int *) ;
 int git_index_write_tree (int *,int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int *) ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ strcmp (char*,char*) ;

void test_index_read_index__maintains_stat_cache(void)
{
 git_index *new_index;
 git_oid index_id;
 git_index_entry new_entry;
 const git_index_entry *e;
 git_tree *tree;
 size_t i;

 cl_assert_equal_i(4, git_index_entrycount(_index));


 cl_git_pass(git_index_write_tree(&index_id, _index));


 git_tree_lookup(&tree, _repo, &index_id);
 cl_git_pass(git_index_new(&new_index));
 cl_git_pass(git_index_read_tree(new_index, tree));
 git_tree_free(tree);


 memset(&new_entry, 0, sizeof(git_index_entry));
 new_entry.path = "Hello";
 git_oid_fromstr(&new_entry.id, "0123456789012345678901234567890123456789");
 new_entry.file_size = 1234;
 new_entry.mode = 0100644;
 cl_git_pass(git_index_add(new_index, &new_entry));
 cl_assert_equal_i(5, git_index_entrycount(new_index));

 cl_git_pass(git_index_read_index(_index, new_index));
 git_index_free(new_index);

 cl_assert_equal_i(5, git_index_entrycount(_index));

 for (i = 0; i < git_index_entrycount(_index); i++) {
  e = git_index_get_byindex(_index, i);

  if (strcmp(e->path, "Hello") == 0) {
   cl_assert_equal_i(0, e->ctime.seconds);
   cl_assert_equal_i(0, e->mtime.seconds);
  } else {
   cl_assert(0 != e->ctime.seconds);
   cl_assert(0 != e->mtime.seconds);
  }
 }
}
