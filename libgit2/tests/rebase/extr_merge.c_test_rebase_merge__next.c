
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int git_status_list ;
struct TYPE_10__ {TYPE_2__* head_to_index; } ;
typedef TYPE_3__ git_status_entry ;
typedef int git_reference ;
struct TYPE_11__ {int id; int type; } ;
typedef TYPE_4__ git_rebase_operation ;
typedef int git_rebase ;
typedef int git_oid ;
typedef int git_annotated_commit ;
struct TYPE_8__ {int id; int path; } ;
struct TYPE_9__ {TYPE_1__ new_file; } ;


 int GIT_REBASE_OPERATION_PICK ;
 int cl_assert (TYPE_3__ const*) ;
 int cl_assert_equal_file (char*,int,char*) ;
 int cl_assert_equal_i (int,int ) ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_from_ref (int **,int ,int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_rebase_free (int *) ;
 int git_rebase_init (int **,int ,int *,int *,int *,int *) ;
 int git_rebase_next (TYPE_4__**,int *) ;
 int * git_rebase_onto_id (int *) ;
 int git_rebase_onto_name (int *) ;
 int * git_rebase_orig_head_id (int *) ;
 int git_rebase_orig_head_name (int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 TYPE_3__* git_status_byindex (int *,int ) ;
 int git_status_list_entrycount (int *) ;
 int git_status_list_free (int *) ;
 int git_status_list_new (int **,int ,int *) ;
 int repo ;

void test_rebase_merge__next(void)
{
 git_rebase *rebase;
 git_reference *branch_ref, *upstream_ref;
 git_annotated_commit *branch_head, *upstream_head;
 git_rebase_operation *rebase_operation;
 git_status_list *status_list;
 const git_status_entry *status_entry;
 git_oid pick_id, file1_id;
 git_oid master_id, beef_id;

 git_oid_fromstr(&master_id, "efad0b11c47cb2f0220cbd6f5b0f93bb99064b00");
 git_oid_fromstr(&beef_id, "b146bd7608eac53d9bf9e1a6963543588b555c64");

 cl_git_pass(git_reference_lookup(&branch_ref, repo, "refs/heads/beef"));
 cl_git_pass(git_reference_lookup(&upstream_ref, repo, "refs/heads/master"));

 cl_git_pass(git_annotated_commit_from_ref(&branch_head, repo, branch_ref));
 cl_git_pass(git_annotated_commit_from_ref(&upstream_head, repo, upstream_ref));

 cl_git_pass(git_rebase_init(&rebase, repo, branch_head, upstream_head, ((void*)0), ((void*)0)));

 cl_assert_equal_s("refs/heads/beef", git_rebase_orig_head_name(rebase));
 cl_assert_equal_oid(&beef_id, git_rebase_orig_head_id(rebase));

 cl_assert_equal_s("master", git_rebase_onto_name(rebase));
 cl_assert_equal_oid(&master_id, git_rebase_onto_id(rebase));

 cl_git_pass(git_rebase_next(&rebase_operation, rebase));

 git_oid_fromstr(&pick_id, "da9c51a23d02d931a486f45ad18cda05cf5d2b94");

 cl_assert_equal_i(GIT_REBASE_OPERATION_PICK, rebase_operation->type);
 cl_assert_equal_oid(&pick_id, &rebase_operation->id);
 cl_assert_equal_file("da9c51a23d02d931a486f45ad18cda05cf5d2b94\n", 41, "rebase/.git/rebase-merge/current");
 cl_assert_equal_file("1\n", 2, "rebase/.git/rebase-merge/msgnum");

 cl_git_pass(git_status_list_new(&status_list, repo, ((void*)0)));
 cl_assert_equal_i(1, git_status_list_entrycount(status_list));
 cl_assert(status_entry = git_status_byindex(status_list, 0));

 cl_assert_equal_s("beef.txt", status_entry->head_to_index->new_file.path);

 git_oid_fromstr(&file1_id, "8d95ea62e621f1d38d230d9e7d206e41096d76af");
 cl_assert_equal_oid(&file1_id, &status_entry->head_to_index->new_file.id);

 git_status_list_free(status_list);
 git_annotated_commit_free(branch_head);
 git_annotated_commit_free(upstream_head);
 git_reference_free(branch_ref);
 git_reference_free(upstream_ref);
 git_rebase_free(rebase);
}
