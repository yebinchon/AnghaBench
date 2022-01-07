
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_oid ;
struct TYPE_6__ {int mode; char* path; int dev; int ino; int uid; int file_size; int id; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;
typedef int git_filebuf ;
typedef int git_blob ;


 int GIT_FILEBUF_INIT ;
 int GIT_FILEMODE_BLOB ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,int) ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_pass (int ) ;
 int cl_set_cleanup (int *,int *) ;
 int cleanup_myrepo ;
 int git_blob_free (int *) ;
 int git_blob_lookup (int **,int *,int *) ;
 int git_blob_rawcontent (int *) ;
 int git_filebuf_commit (int *) ;
 int git_filebuf_open (int *,char*,int ,int) ;
 int git_filebuf_write (int *,char const*,int ) ;
 int git_futils_mkpath2file (char*,int) ;
 int git_index_add_bypath (int *,char*) ;
 int git_index_add_from_buffer (int *,TYPE_1__*,char const*,int ) ;
 int git_index_entrycount (int *) ;
 int git_index_free (int *) ;
 TYPE_1__* git_index_get_byindex (int *,int ) ;
 TYPE_1__* git_index_get_bypath (int *,char*,int ) ;
 int git_oid_fromstr (int *,char*) ;
 int git_repository_free (int *) ;
 int git_repository_index (int **,int *) ;
 int git_repository_init (int **,char*,int ) ;
 int memset (TYPE_1__*,int,int) ;
 int strlen (char const*) ;

void test_index_tests__add_frombuffer_reset_entry(void)
{
 git_index *index;
 git_repository *repo;
        git_index_entry entry;
 const git_index_entry *returned_entry;
 git_filebuf file = GIT_FILEBUF_INIT;

 git_oid id1;
 git_blob *blob;
 const char *old_content = "here\n";
 const char *content = "hey there\n";

 cl_set_cleanup(&cleanup_myrepo, ((void*)0));


 cl_git_pass(git_repository_init(&repo, "./myrepo", 0));
 cl_git_pass(git_repository_index(&index, repo));
 cl_git_pass(git_futils_mkpath2file("myrepo/test.txt", 0777));
 cl_git_pass(git_filebuf_open(&file, "myrepo/test.txt", 0, 0666));
 cl_git_pass(git_filebuf_write(&file, old_content, strlen(old_content)));
 cl_git_pass(git_filebuf_commit(&file));





 cl_git_pass(git_oid_fromstr(&id1, "a8233120f6ad708f843d861ce2b7228ec4e3dec6"));

 cl_git_pass(git_index_add_bypath(index, "test.txt"));


 memset(&entry, 0x0, sizeof(git_index_entry));
 entry.mode = GIT_FILEMODE_BLOB;
 entry.path = "test.txt";
 cl_git_pass(git_index_add_from_buffer(index, &entry,
  content, strlen(content)));


 cl_assert(git_index_entrycount(index) == 1);
 returned_entry = git_index_get_byindex(index, 0);


 cl_assert_equal_oid(&id1, &returned_entry->id);

 cl_assert_equal_i(GIT_FILEMODE_BLOB, returned_entry->mode);


 cl_assert((returned_entry = git_index_get_bypath(index, "test.txt", 0)) != ((void*)0));
 cl_assert_equal_oid(&id1, &returned_entry->id);
 cl_assert_equal_i(0, returned_entry->dev);
 cl_assert_equal_i(0, returned_entry->ino);
 cl_assert_equal_i(0, returned_entry->uid);
 cl_assert_equal_i(0, returned_entry->uid);
 cl_assert_equal_i(10, returned_entry->file_size);


 cl_git_pass(git_blob_lookup(&blob, repo, &id1));
 cl_assert_equal_s(content, git_blob_rawcontent(blob));
 git_blob_free(blob);

 git_index_free(index);
 git_repository_free(repo);
}
