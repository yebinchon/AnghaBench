
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_refdb ;
typedef int git_odb ;
typedef int git_config ;


 int _repo ;
 int cl_git_pass (int ) ;
 int git_config_free (int *) ;
 int git_config_new (int **) ;
 int git_odb_free (int *) ;
 int git_odb_new (int **) ;
 int git_refdb_free (int *) ;
 int git_refdb_new (int **,int ) ;
 int git_repository_new (int *) ;
 int git_repository_set_config (int ,int *) ;
 int git_repository_set_odb (int ,int *) ;
 int git_repository_set_refdb (int ,int *) ;

void test_odb_backend_nobackend__initialize(void)
{
 git_config *config;
 git_odb *odb;
 git_refdb *refdb;

 cl_git_pass(git_repository_new(&_repo));
 cl_git_pass(git_config_new(&config));
 cl_git_pass(git_odb_new(&odb));
 cl_git_pass(git_refdb_new(&refdb, _repo));

 git_repository_set_config(_repo, config);
 git_repository_set_odb(_repo, odb);
 git_repository_set_refdb(_repo, refdb);


 git_config_free(config);
 git_odb_free(odb);
 git_refdb_free(refdb);
}
