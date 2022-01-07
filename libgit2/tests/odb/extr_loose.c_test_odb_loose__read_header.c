
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int commit ;
 int one ;
 int some ;
 int tag ;
 int test_read_header (int *) ;
 int tree ;
 int two ;
 int zero ;

void test_odb_loose__read_header(void)
{
 test_read_header(&commit);
 test_read_header(&tree);
 test_read_header(&tag);
 test_read_header(&zero);
 test_read_header(&one);
 test_read_header(&two);
 test_read_header(&some);
}
