
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int git_status_list ;
typedef int git_reference ;
struct TYPE_10__ {int inmemory; } ;
typedef TYPE_2__ git_rebase_options ;
struct TYPE_11__ {int id; int type; } ;
typedef TYPE_3__ git_rebase_operation ;
typedef int git_rebase ;
typedef int git_oid ;
struct TYPE_9__ {int member_0; } ;
struct TYPE_12__ {char* path; int id; int mode; TYPE_1__ member_0; } ;
typedef TYPE_4__ git_index_entry ;
typedef int git_index ;
typedef int git_annotated_commit ;


 int GIT_EUNMERGED ;
 int GIT_FILEMODE_BLOB ;
 int GIT_REBASE_OPERATION_PICK ;
 TYPE_2__ GIT_REBASE_OPTIONS_INIT ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_annotated_commit_free (int *) ;
 int git_annotated_commit_from_ref (int **,int ,int *) ;
 int git_index_add (int *,TYPE_4__*) ;
 int git_index_conflict_remove (int *,char*) ;
 int git_index_free (int *) ;
 int git_index_has_conflicts (int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_rebase_commit (int *,int *,int *,int ,int *,int *) ;
 int git_rebase_free (int *) ;
 int git_rebase_init (int **,int ,int *,int *,int *,TYPE_2__*) ;
 int git_rebase_inmemory_index (int **,int *) ;
 int git_rebase_next (TYPE_3__**,int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_repository_index (int **,int ) ;
 int git_status_list_entrycount (int *) ;
 int git_status_list_free (int *) ;
 int git_status_list_new (int **,int ,int *) ;
 int repo ;
 int signature ;

void test_rebase_inmemory__can_resolve_conflicts(void)
{
 git_rebase *rebase;
 git_reference *branch_ref, *upstream_ref;
 git_annotated_commit *branch_head, *upstream_head;
 git_rebase_operation *rebase_operation;
 git_status_list *status_list;
 git_oid pick_id, commit_id, expected_commit_id;
 git_index *rebase_index, *repo_index;
 git_index_entry resolution = {{0}};
 git_rebase_options opts = GIT_REBASE_OPTIONS_INIT;

 opts.inmemory = 1;

 cl_git_pass(git_reference_lookup(&branch_ref, repo, "refs/heads/asparagus"));
 cl_git_pass(git_reference_lookup(&upstream_ref, repo, "refs/heads/master"));

 cl_git_pass(git_annotated_commit_from_ref(&branch_head, repo, branch_ref));
 cl_git_pass(git_annotated_commit_from_ref(&upstream_head, repo, upstream_ref));

 cl_git_pass(git_rebase_init(&rebase, repo, branch_head, upstream_head, ((void*)0), &opts));

 cl_git_pass(git_rebase_next(&rebase_operation, rebase));

 git_oid_fromstr(&pick_id, "33f915f9e4dbd9f4b24430e48731a59b45b15500");

 cl_assert_equal_i(GIT_REBASE_OPERATION_PICK, rebase_operation->type);
 cl_assert_equal_oid(&pick_id, &rebase_operation->id);


 cl_git_pass(git_repository_index(&repo_index, repo));
 cl_assert(!git_index_has_conflicts(repo_index));

 cl_git_pass(git_status_list_new(&status_list, repo, ((void*)0)));
 cl_assert_equal_i(0, git_status_list_entrycount(status_list));


 cl_git_pass(git_rebase_inmemory_index(&rebase_index, rebase));
 cl_assert(git_index_has_conflicts(rebase_index));

 cl_git_fail_with(GIT_EUNMERGED, git_rebase_commit(&commit_id, rebase, ((void*)0), signature, ((void*)0), ((void*)0)));


 resolution.path = "asparagus.txt";
 resolution.mode = GIT_FILEMODE_BLOB;
 git_oid_fromstr(&resolution.id, "414dfc71ead79c07acd4ea47fecf91f289afc4b9");
 cl_git_pass(git_index_conflict_remove(rebase_index, "asparagus.txt"));
 cl_git_pass(git_index_add(rebase_index, &resolution));


 cl_git_pass(git_rebase_commit(&commit_id, rebase, ((void*)0), signature, ((void*)0), ((void*)0)));

 cl_git_pass(git_oid_fromstr(&expected_commit_id, "db7af47222181e548810da2ab5fec0e9357c5637"));
 cl_assert_equal_oid(&commit_id, &expected_commit_id);

 git_status_list_free(status_list);
 git_annotated_commit_free(branch_head);
 git_annotated_commit_free(upstream_head);
 git_reference_free(branch_ref);
 git_reference_free(upstream_ref);
 git_index_free(repo_index);
 git_index_free(rebase_index);
 git_rebase_free(rebase);
}
