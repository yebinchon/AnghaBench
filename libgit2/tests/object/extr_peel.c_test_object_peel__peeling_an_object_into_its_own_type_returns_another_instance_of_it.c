
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_OBJECT_BLOB ;
 int GIT_OBJECT_COMMIT ;
 int GIT_OBJECT_TAG ;
 int GIT_OBJECT_TREE ;
 int assert_peel (char*,int ,char*,int ) ;

void test_object_peel__peeling_an_object_into_its_own_type_returns_another_instance_of_it(void)
{
 assert_peel("e90810b8df3e80c413d903f631643c716887138d", GIT_OBJECT_COMMIT,
  "e90810b8df3e80c413d903f631643c716887138d", GIT_OBJECT_COMMIT);
 assert_peel("7b4384978d2493e851f9cca7858815fac9b10980", GIT_OBJECT_TAG,
  "7b4384978d2493e851f9cca7858815fac9b10980", GIT_OBJECT_TAG);
 assert_peel("53fc32d17276939fc79ed05badaef2db09990016", GIT_OBJECT_TREE,
  "53fc32d17276939fc79ed05badaef2db09990016", GIT_OBJECT_TREE);
 assert_peel("0266163a49e280c4f5ed1e08facd36a2bd716bcf", GIT_OBJECT_BLOB,
  "0266163a49e280c4f5ed1e08facd36a2bd716bcf", GIT_OBJECT_BLOB);
}
