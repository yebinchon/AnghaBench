
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {size_t attr; int oid; int filename; } ;
typedef TYPE_1__ git_tree_entry ;
struct TYPE_10__ {int object; } ;
typedef TYPE_2__ git_tree ;
typedef int git_oid ;
typedef int git_object ;
struct TYPE_11__ {int attr; int filename; int oid; } ;
typedef TYPE_3__ expected_entry ;


 int GIT_OBJECT_TREE ;
 int cl_assert (TYPE_1__ const*) ;
 int cl_assert_equal_i (int ,size_t) ;
 int cl_assert_equal_oid (int *,int ) ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_object__from_raw (int **,char const*,size_t,int ) ;
 int git_object_free (int *) ;
 int git_oid_fromstr (int *,int ) ;
 TYPE_1__* git_tree_entry_byname (TYPE_2__*,int ) ;
 int git_tree_entrycount (TYPE_2__*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void assert_tree_parses(const char *data, size_t datalen,
 expected_entry *expected_entries, size_t expected_nentries)
{
 git_tree *tree;
 size_t n;

 if (!datalen)
  datalen = strlen(data);
 cl_git_pass(git_object__from_raw((git_object **) &tree, data, datalen, GIT_OBJECT_TREE));

 cl_assert_equal_i(git_tree_entrycount(tree), expected_nentries);

 for (n = 0; n < expected_nentries; n++) {
  expected_entry *expected = expected_entries + n;
  const git_tree_entry *entry;
  git_oid oid;

  cl_git_pass(git_oid_fromstr(&oid, expected->oid));

  cl_assert(entry = git_tree_entry_byname(tree, expected->filename));
  cl_assert_equal_s(expected->filename, entry->filename);
  cl_assert_equal_i(expected->attr, entry->attr);
  cl_assert_equal_oid(&oid, entry->oid);
 }

 git_object_free(&tree->object);
}
