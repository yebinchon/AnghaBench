
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_oid ;
typedef int git_odb ;
struct TYPE_5__ {int member_0; } ;
typedef TYPE_1__ git_indexer_progress ;
typedef int git_indexer ;
struct TYPE_6__ {int klass; } ;


 int GIT_ERROR_ZLIB ;
 int GIT_OBJECT_BLOB ;
 int base_obj ;
 int base_obj_len ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int corrupt_thin_pack ;
 int corrupt_thin_pack_len ;
 TYPE_4__* git_error_last () ;
 int git_indexer_append (int *,int ,int ,TYPE_1__*) ;
 int git_indexer_commit (int *,TYPE_1__*) ;
 int git_indexer_free (int *) ;
 int git_indexer_new (int **,char*,int ,int *,int *) ;
 int git_odb_free (int *) ;
 int git_odb_write (int *,int *,int ,int ,int ) ;
 int git_oid_fromstr (int *,char*) ;
 int git_repository_free (int *) ;
 int git_repository_init (int **,char*,int) ;
 int git_repository_odb (int **,int *) ;

void test_pack_indexer__corrupt_length(void)
{
 git_indexer *idx = ((void*)0);
 git_indexer_progress stats = { 0 };
 git_repository *repo;
 git_odb *odb;
 git_oid id, should_id;

 cl_git_pass(git_repository_init(&repo, "thin.git", 1));
 cl_git_pass(git_repository_odb(&odb, repo));


 cl_git_pass(git_odb_write(&id, odb, base_obj, base_obj_len, GIT_OBJECT_BLOB));
 git_oid_fromstr(&should_id, "e68fe8129b546b101aee9510c5328e7f21ca1d18");
 cl_assert_equal_oid(&should_id, &id);

 cl_git_pass(git_indexer_new(&idx, ".", 0, odb, ((void*)0)));
 cl_git_pass(git_indexer_append(
  idx, corrupt_thin_pack, corrupt_thin_pack_len, &stats));
 cl_git_fail(git_indexer_commit(idx, &stats));

 cl_assert(git_error_last() != ((void*)0));
 cl_assert_equal_i(git_error_last()->klass, GIT_ERROR_ZLIB);

 git_indexer_free(idx);
 git_odb_free(odb);
 git_repository_free(repo);
}
