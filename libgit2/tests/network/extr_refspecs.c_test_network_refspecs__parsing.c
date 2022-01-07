
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_DIRECTION_FETCH ;
 int GIT_DIRECTION_PUSH ;
 int assert_refspec (int ,char*,int) ;

void test_network_refspecs__parsing(void)
{


 assert_refspec(GIT_DIRECTION_PUSH, "", 0);
 assert_refspec(GIT_DIRECTION_PUSH, ":", 1);
 assert_refspec(GIT_DIRECTION_PUSH, "::", 0);
 assert_refspec(GIT_DIRECTION_PUSH, "+:", 1);

 assert_refspec(GIT_DIRECTION_FETCH, "", 1);
 assert_refspec(GIT_DIRECTION_PUSH, ":", 1);
 assert_refspec(GIT_DIRECTION_FETCH, "::", 0);

 assert_refspec(GIT_DIRECTION_PUSH, "refs/heads/*:refs/remotes/frotz/*", 1);
 assert_refspec(GIT_DIRECTION_PUSH, "refs/heads/*:refs/remotes/frotz", 0);
 assert_refspec(GIT_DIRECTION_PUSH, "refs/heads:refs/remotes/frotz/*", 0);
 assert_refspec(GIT_DIRECTION_PUSH, "refs/heads/master:refs/remotes/frotz/xyzzy", 1);
 assert_refspec(GIT_DIRECTION_FETCH, "refs/heads/*:refs/remotes/frotz/*", 1);
 assert_refspec(GIT_DIRECTION_FETCH, "refs/heads/*:refs/remotes/frotz", 0);
 assert_refspec(GIT_DIRECTION_FETCH, "refs/heads:refs/remotes/frotz/*", 0);
 assert_refspec(GIT_DIRECTION_FETCH, "refs/heads/master:refs/remotes/frotz/xyzzy", 1);
 assert_refspec(GIT_DIRECTION_FETCH, "refs/heads/master::refs/remotes/frotz/xyzzy", 0);
 assert_refspec(GIT_DIRECTION_FETCH, "refs/heads/maste :refs/remotes/frotz/xyzzy", 0);

 assert_refspec(GIT_DIRECTION_PUSH, "master~1:refs/remotes/frotz/backup", 1);
 assert_refspec(GIT_DIRECTION_FETCH, "master~1:refs/remotes/frotz/backup", 0);
 assert_refspec(GIT_DIRECTION_PUSH, "HEAD~4:refs/remotes/frotz/new", 1);
 assert_refspec(GIT_DIRECTION_FETCH, "HEAD~4:refs/remotes/frotz/new", 0);

 assert_refspec(GIT_DIRECTION_PUSH, "HEAD", 1);
 assert_refspec(GIT_DIRECTION_FETCH, "HEAD", 1);
 assert_refspec(GIT_DIRECTION_PUSH, "refs/heads/ nitfol", 0);
 assert_refspec(GIT_DIRECTION_FETCH, "refs/heads/ nitfol", 0);

 assert_refspec(GIT_DIRECTION_PUSH, "HEAD:", 0);
 assert_refspec(GIT_DIRECTION_FETCH, "HEAD:", 1);
 assert_refspec(GIT_DIRECTION_PUSH, "refs/heads/ nitfol:", 0);
 assert_refspec(GIT_DIRECTION_FETCH, "refs/heads/ nitfol:", 0);

 assert_refspec(GIT_DIRECTION_PUSH, ":refs/remotes/frotz/deleteme", 1);
 assert_refspec(GIT_DIRECTION_FETCH, ":refs/remotes/frotz/HEAD-to-me", 1);
 assert_refspec(GIT_DIRECTION_PUSH, ":refs/remotes/frotz/delete me", 0);
 assert_refspec(GIT_DIRECTION_FETCH, ":refs/remotes/frotz/HEAD to me", 0);

 assert_refspec(GIT_DIRECTION_FETCH, "refs/heads/*/for-linus:refs/remotes/mine/*-blah", 1);
 assert_refspec(GIT_DIRECTION_PUSH, "refs/heads/*/for-linus:refs/remotes/mine/*-blah", 1);

 assert_refspec(GIT_DIRECTION_FETCH, "refs/heads*/for-linus:refs/remotes/mine/*", 1);
 assert_refspec(GIT_DIRECTION_PUSH, "refs/heads*/for-linus:refs/remotes/mine/*", 1);

 assert_refspec(GIT_DIRECTION_FETCH, "refs/heads/*/*/for-linus:refs/remotes/mine/*", 0);
 assert_refspec(GIT_DIRECTION_PUSH, "refs/heads/*/*/for-linus:refs/remotes/mine/*", 0);

 assert_refspec(GIT_DIRECTION_FETCH, "refs/heads/*g*/for-linus:refs/remotes/mine/*", 0);
 assert_refspec(GIT_DIRECTION_PUSH, "refs/heads/*g*/for-linus:refs/remotes/mine/*", 0);

 assert_refspec(GIT_DIRECTION_FETCH, "refs/heads/*/for-linus:refs/remotes/mine/*", 1);
 assert_refspec(GIT_DIRECTION_PUSH, "refs/heads/*/for-linus:refs/remotes/mine/*", 1);

 assert_refspec(GIT_DIRECTION_FETCH, "master", 1);
 assert_refspec(GIT_DIRECTION_PUSH, "master", 1);

 assert_refspec(GIT_DIRECTION_FETCH, "refs/pull/*/head:refs/remotes/origin/pr/*", 1);
}
