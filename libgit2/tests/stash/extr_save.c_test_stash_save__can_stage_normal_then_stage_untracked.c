
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ENOTFOUND ;
 int GIT_OBJECT_COMMIT ;
 int GIT_STASH_DEFAULT ;
 int GIT_STASH_INCLUDE_UNTRACKED ;
 int GIT_STATUS_CURRENT ;
 int GIT_STATUS_IGNORED ;
 int GIT_STATUS_INDEX_MODIFIED ;
 int GIT_STATUS_WT_MODIFIED ;
 int GIT_STATUS_WT_NEW ;
 int assert_blob_oid (char*,char*) ;
 int assert_object_oid (char*,int *,int ) ;
 int assert_status (int ,char*,int) ;
 int cl_git_pass (int ) ;
 int git_stash_save (int *,int ,int ,int *,int ) ;
 int repo ;
 int signature ;
 int stash_tip_oid ;

void test_stash_save__can_stage_normal_then_stage_untracked(void)
{
 assert_status(repo, "what", GIT_STATUS_WT_MODIFIED | GIT_STATUS_INDEX_MODIFIED);
 assert_status(repo, "how", GIT_STATUS_INDEX_MODIFIED);
 assert_status(repo, "who", GIT_STATUS_WT_MODIFIED);
 assert_status(repo, "when", GIT_STATUS_WT_NEW);
 assert_status(repo, "just.ignore", GIT_STATUS_IGNORED);

 cl_git_pass(git_stash_save(&stash_tip_oid, repo, signature, ((void*)0), GIT_STASH_DEFAULT));
 assert_status(repo, "what", GIT_STATUS_CURRENT);
 assert_status(repo, "how", GIT_STATUS_CURRENT);
 assert_status(repo, "who", GIT_STATUS_CURRENT);
 assert_status(repo, "when", GIT_STATUS_WT_NEW);
 assert_status(repo, "just.ignore", GIT_STATUS_IGNORED);

 cl_git_pass(git_stash_save(&stash_tip_oid, repo, signature, ((void*)0), GIT_STASH_INCLUDE_UNTRACKED));
 assert_status(repo, "what", GIT_STATUS_CURRENT);
 assert_status(repo, "how", GIT_STATUS_CURRENT);
 assert_status(repo, "who", GIT_STATUS_CURRENT);
 assert_status(repo, "when", GIT_ENOTFOUND);
 assert_status(repo, "just.ignore", GIT_STATUS_IGNORED);


 assert_blob_oid("stash@{1}^0:what", "bc99dc98b3eba0e9157e94769cd4d49cb49de449");
 assert_blob_oid("stash@{1}^0:how", "e6d64adb2c7f3eb8feb493b556cc8070dca379a3");
 assert_blob_oid("stash@{1}^0:who", "a0400d4954659306a976567af43125a0b1aa8595");
 assert_blob_oid("stash@{1}^0:when", ((void*)0));

 assert_blob_oid("stash@{1}^2:what", "dd7e1c6f0fefe118f0b63d9f10908c460aa317a6");
 assert_blob_oid("stash@{1}^2:how", "e6d64adb2c7f3eb8feb493b556cc8070dca379a3");
 assert_blob_oid("stash@{1}^2:who", "cc628ccd10742baea8241c5924df992b5c019f71");
 assert_blob_oid("stash@{1}^2:when", ((void*)0));

 assert_object_oid("stash@{1}^3", ((void*)0), GIT_OBJECT_COMMIT);

 assert_blob_oid("stash@{0}^0:what", "ce013625030ba8dba906f756967f9e9ca394464a");
 assert_blob_oid("stash@{0}^0:how", "ac790413e2d7a26c3767e78c57bb28716686eebc");
 assert_blob_oid("stash@{0}^0:who", "cc628ccd10742baea8241c5924df992b5c019f71");
 assert_blob_oid("stash@{0}^0:when", ((void*)0));

 assert_blob_oid("stash@{0}^2:what", "ce013625030ba8dba906f756967f9e9ca394464a");
 assert_blob_oid("stash@{0}^2:how", "ac790413e2d7a26c3767e78c57bb28716686eebc");
 assert_blob_oid("stash@{0}^2:who", "cc628ccd10742baea8241c5924df992b5c019f71");
 assert_blob_oid("stash@{0}^2:when", ((void*)0));

 assert_blob_oid("stash@{0}^3:when", "b6ed15e81e2593d7bb6265eb4a991d29dc3e628b");
}
