
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_oid ;


 int blob_parsing (int *) ;
 int check_error (int,char*) ;
 int commit_parsing (int *) ;
 int commit_writing (int *) ;
 int config_files (char*,int *) ;
 int git_libgit2_init () ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,char*) ;
 int index_walking (int *) ;
 int object_database (int *,int *) ;
 int oid_parsing (int *) ;
 int reference_listing (int *) ;
 int revwalking (int *) ;
 int tag_parsing (int *) ;
 int tree_parsing (int *) ;

int lg2_general(git_repository *repo, int argc, char** argv)
{
 int error;
 git_oid oid;
 char *repo_path;





 git_libgit2_init();
 repo_path = (argc > 1) ? argv[1] : "/opt/libgit2-test/.git";

 error = git_repository_open(&repo, repo_path);
 check_error(error, "opening repository");

 oid_parsing(&oid);
 object_database(repo, &oid);
 commit_writing(repo);
 commit_parsing(repo);
 tag_parsing(repo);
 tree_parsing(repo);
 blob_parsing(repo);
 revwalking(repo);
 index_walking(repo);
 reference_listing(repo);
 config_files(repo_path, repo);




 git_repository_free(repo);

 return 0;
}
