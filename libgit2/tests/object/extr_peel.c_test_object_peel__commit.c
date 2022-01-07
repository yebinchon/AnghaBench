
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_EINVALIDSPEC ;
 int GIT_OBJECT_ANY ;
 int GIT_OBJECT_BLOB ;
 int GIT_OBJECT_COMMIT ;
 int GIT_OBJECT_TAG ;
 int GIT_OBJECT_TREE ;
 int assert_peel (char*,int ,char*,int ) ;
 int assert_peel_error (int ,char*,int ) ;

void test_object_peel__commit(void)
{
 assert_peel_error(GIT_EINVALIDSPEC, "e90810b8df3e80c413d903f631643c716887138d", GIT_OBJECT_BLOB);
 assert_peel("e90810b8df3e80c413d903f631643c716887138d", GIT_OBJECT_TREE,
      "53fc32d17276939fc79ed05badaef2db09990016", GIT_OBJECT_TREE);
 assert_peel("e90810b8df3e80c413d903f631643c716887138d", GIT_OBJECT_COMMIT,
      "e90810b8df3e80c413d903f631643c716887138d", GIT_OBJECT_COMMIT);
 assert_peel_error(GIT_EINVALIDSPEC, "e90810b8df3e80c413d903f631643c716887138d", GIT_OBJECT_TAG);
 assert_peel("e90810b8df3e80c413d903f631643c716887138d", GIT_OBJECT_ANY,
      "53fc32d17276939fc79ed05badaef2db09990016", GIT_OBJECT_TREE);
}
