
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_config ;


 int _repo ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_config_free (int *) ;
 int git_config_set_string (int *,char*,char*) ;
 int git_remote_list (TYPE_1__*,int ) ;
 int git_repository_config (int **,int ) ;
 int git_strarray_free (TYPE_1__*) ;

void test_network_remote_remotes__list(void)
{
 git_strarray list;
 git_config *cfg;

 cl_git_pass(git_remote_list(&list, _repo));
 cl_assert(list.count == 5);
 git_strarray_free(&list);

 cl_git_pass(git_repository_config(&cfg, _repo));


 cl_git_pass(git_config_set_string(cfg, "remote.specless.url", "http://example.com"));


 cl_git_pass(git_config_set_string(cfg, "remote.no-remote-url.pushurl", "http://example.com"));

 cl_git_pass(git_remote_list(&list, _repo));
 cl_assert(list.count == 7);
 git_strarray_free(&list);

 git_config_free(cfg);
}
