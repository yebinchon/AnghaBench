
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int dummy; } ;
typedef int ssize_t ;
typedef int git_repository ;
typedef int git_oid ;
typedef int git_odb ;
struct TYPE_4__ {int local_objects; int indexed_objects; int received_objects; int total_objects; int member_0; } ;
typedef TYPE_1__ git_indexer_progress ;
typedef int git_indexer ;
typedef int buffer ;


 int GIT_OBJECT_BLOB ;
 int O_RDONLY ;
 int base_obj ;
 int base_obj_len ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int ,int) ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_git_pass (int ) ;
 int git_indexer_append (int *,unsigned char*,int,TYPE_1__*) ;
 int git_indexer_commit (int *,TYPE_1__*) ;
 int git_indexer_free (int *) ;
 int * git_indexer_hash (int *) ;
 int git_indexer_new (int **,char*,int ,int *,int *) ;
 int git_odb_free (int *) ;
 int git_odb_write (int *,int *,int ,int ,int ) ;
 int git_oid_fromstr (int *,char*) ;
 int git_repository_free (int *) ;
 int git_repository_init (int **,char*,int) ;
 int git_repository_odb (int **,int *) ;
 int p_close (int) ;
 int p_open (char const*,int ) ;
 int p_read (int,unsigned char*,int) ;
 int p_stat (char const*,struct stat*) ;
 unsigned char* thin_pack ;
 int thin_pack_len ;

void test_pack_indexer__fix_thin(void)
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
 cl_git_pass(git_indexer_append(idx, thin_pack, thin_pack_len, &stats));
 cl_git_pass(git_indexer_commit(idx, &stats));

 cl_assert_equal_i(stats.total_objects, 2);
 cl_assert_equal_i(stats.received_objects, 2);
 cl_assert_equal_i(stats.indexed_objects, 2);
 cl_assert_equal_i(stats.local_objects, 1);

 git_oid_fromstr(&should_id, "fefdb2d740a3a6b6c03a0c7d6ce431c6d5810e13");
 cl_assert_equal_oid(&should_id, git_indexer_hash(idx));

 git_indexer_free(idx);
 git_odb_free(odb);
 git_repository_free(repo);






 {
  unsigned char buffer[128];
  int fd;
  ssize_t read;
  struct stat st;
  const char *name = "pack-fefdb2d740a3a6b6c03a0c7d6ce431c6d5810e13.pack";

  fd = p_open(name, O_RDONLY);
  cl_assert(fd != -1);

  cl_git_pass(p_stat(name, &st));

  cl_git_pass(git_indexer_new(&idx, ".", 0, ((void*)0), ((void*)0)));
  read = p_read(fd, buffer, sizeof(buffer));
  cl_assert(read != -1);
  p_close(fd);

  cl_git_pass(git_indexer_append(idx, buffer, read, &stats));
  cl_git_pass(git_indexer_commit(idx, &stats));

  cl_assert_equal_i(stats.total_objects, 3);
  cl_assert_equal_i(stats.received_objects, 3);
  cl_assert_equal_i(stats.indexed_objects, 3);
  cl_assert_equal_i(stats.local_objects, 0);

  git_indexer_free(idx);
 }
}
