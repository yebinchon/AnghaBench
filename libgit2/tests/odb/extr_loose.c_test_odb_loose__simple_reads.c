
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int commit ;
 int one ;
 int some ;
 int tag ;
 int test_read_object (int *) ;
 int tree ;
 int two ;
 int zero ;

void test_odb_loose__simple_reads(void)
{
 test_read_object(&commit);
 test_read_object(&tree);
 test_read_object(&tag);
 test_read_object(&zero);
 test_read_object(&one);
 test_read_object(&two);
 test_read_object(&some);
}
