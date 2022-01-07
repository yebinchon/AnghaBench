
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_retrieval (char*,int) ;

void test_refs_foreachglob__retrieve_partially_named_references(void)
{





 assert_retrieval("*test*", 4);
}
