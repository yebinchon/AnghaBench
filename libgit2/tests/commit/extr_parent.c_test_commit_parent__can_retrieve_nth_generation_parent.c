
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_nth_gen_parent (int,char*) ;

void test_commit_parent__can_retrieve_nth_generation_parent(void)
{
 assert_nth_gen_parent(0, "be3563ae3f795b2b4353bcce3a527ad0a4f7f644");
 assert_nth_gen_parent(1, "9fd738e8f7967c078dceed8190330fc8648ee56a");
 assert_nth_gen_parent(3, "5b5b025afb0b4c913b4c338a42934a3863bf3644");
 assert_nth_gen_parent(42, ((void*)0));
}
