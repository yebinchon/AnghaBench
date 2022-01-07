
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

void test_object_peel__blob(void)
{
 assert_peel("0266163a49e280c4f5ed1e08facd36a2bd716bcf", GIT_OBJECT_BLOB,
      "0266163a49e280c4f5ed1e08facd36a2bd716bcf", GIT_OBJECT_BLOB);
 assert_peel_error(GIT_EINVALIDSPEC, "0266163a49e280c4f5ed1e08facd36a2bd716bcf", GIT_OBJECT_TREE);
 assert_peel_error(GIT_EINVALIDSPEC, "0266163a49e280c4f5ed1e08facd36a2bd716bcf", GIT_OBJECT_COMMIT);
 assert_peel_error(GIT_EINVALIDSPEC, "0266163a49e280c4f5ed1e08facd36a2bd716bcf", GIT_OBJECT_TAG);
 assert_peel_error(GIT_EINVALIDSPEC, "0266163a49e280c4f5ed1e08facd36a2bd716bcf", GIT_OBJECT_ANY);
}
