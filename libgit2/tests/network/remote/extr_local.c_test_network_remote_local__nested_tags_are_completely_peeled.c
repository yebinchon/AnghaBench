
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int oid; int name; } ;
typedef TYPE_1__ git_remote_head ;


 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int connect_to_local_repository (int ) ;
 int git_oid_streq (int *,char*) ;
 int git_remote_ls (TYPE_1__ const***,size_t*,int ) ;
 int remote ;
 int strcmp (int ,char*) ;

void test_network_remote_local__nested_tags_are_completely_peeled(void)
{
 const git_remote_head **refs;
 size_t refs_len, i;

 connect_to_local_repository(cl_fixture("testrepo.git"));

 cl_git_pass(git_remote_ls(&refs, &refs_len, remote));

 for (i = 0; i < refs_len; i++) {
  if (!strcmp(refs[i]->name, "refs/tags/test^{}"))
   cl_git_pass(git_oid_streq(&refs[i]->oid, "e90810b8df3e80c413d903f631643c716887138d"));
 }
}
