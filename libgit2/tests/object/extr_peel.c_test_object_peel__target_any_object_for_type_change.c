
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_OBJECT_ANY ;
 int GIT_OBJECT_COMMIT ;
 int GIT_OBJECT_TREE ;
 int assert_peel (char*,int ,char*,int ) ;

void test_object_peel__target_any_object_for_type_change(void)
{

 assert_peel("7b4384978d2493e851f9cca7858815fac9b10980", GIT_OBJECT_ANY,
  "e90810b8df3e80c413d903f631643c716887138d", GIT_OBJECT_COMMIT);


 assert_peel("e90810b8df3e80c413d903f631643c716887138d", GIT_OBJECT_ANY,
  "53fc32d17276939fc79ed05badaef2db09990016", GIT_OBJECT_TREE);
}
