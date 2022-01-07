
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_STASH_DEFAULT ;
 int GIT_STATUS_WT_NEW ;
 int assert_blob_oid (char*,char*) ;
 int cl_assert_equal_i (int ,unsigned int) ;
 int cl_git_pass (int ) ;
 int git_stash_save (int *,int ,int ,int *,int ) ;
 int git_status_file (unsigned int*,int ,char*) ;
 int repo ;
 int signature ;
 int stash_tip_oid ;

void test_stash_save__does_not_keep_index_by_default(void)
{
 unsigned int status;

 cl_git_pass(git_stash_save(&stash_tip_oid, repo, signature, ((void*)0), GIT_STASH_DEFAULT));
 cl_git_pass(git_status_file(&status, repo, "when"));

 assert_blob_oid("refs/stash:what", "bc99dc98b3eba0e9157e94769cd4d49cb49de449");
 assert_blob_oid("refs/stash:how", "e6d64adb2c7f3eb8feb493b556cc8070dca379a3");
 assert_blob_oid("refs/stash:who", "a0400d4954659306a976567af43125a0b1aa8595");
 assert_blob_oid("refs/stash:when", ((void*)0));
 assert_blob_oid("refs/stash:why", "88c2533e21f098b89c91a431d8075cbdbe422a51");
 assert_blob_oid("refs/stash:where", "e3d6434ec12eb76af8dfa843a64ba6ab91014a0b");
 assert_blob_oid("refs/stash:.gitignore", "ac4d88de61733173d9959e4b77c69b9f17a00980");
 assert_blob_oid("refs/stash:just.ignore", ((void*)0));

 assert_blob_oid("refs/stash^2:what", "dd7e1c6f0fefe118f0b63d9f10908c460aa317a6");
 assert_blob_oid("refs/stash^2:how", "e6d64adb2c7f3eb8feb493b556cc8070dca379a3");
 assert_blob_oid("refs/stash^2:who", "cc628ccd10742baea8241c5924df992b5c019f71");
 assert_blob_oid("refs/stash^2:when", ((void*)0));
 assert_blob_oid("refs/stash^2:why", "88c2533e21f098b89c91a431d8075cbdbe422a51");
 assert_blob_oid("refs/stash^2:where", "e08f7fbb9a42a0c5367cf8b349f1f08c3d56bd72");
 assert_blob_oid("refs/stash^2:.gitignore", "ac4d88de61733173d9959e4b77c69b9f17a00980");
 assert_blob_oid("refs/stash^2:just.ignore", ((void*)0));

 assert_blob_oid("refs/stash^3", ((void*)0));

 cl_assert_equal_i(GIT_STATUS_WT_NEW, status);
}
