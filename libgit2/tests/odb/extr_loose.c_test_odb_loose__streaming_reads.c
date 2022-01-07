
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ARRAY_SIZE (size_t*) ;
 int commit ;
 int one ;
 int some ;
 int tag ;
 int test_readstream_object (int *,size_t) ;
 int tree ;
 int two ;
 int zero ;

void test_odb_loose__streaming_reads(void)
{
 size_t blocksizes[] = { 1, 2, 4, 16, 99, 1024, 123456789 };
 size_t i;

 for (i = 0; i < ARRAY_SIZE(blocksizes); i++) {
  test_readstream_object(&commit, blocksizes[i]);
  test_readstream_object(&tree, blocksizes[i]);
  test_readstream_object(&tag, blocksizes[i]);
  test_readstream_object(&zero, blocksizes[i]);
  test_readstream_object(&one, blocksizes[i]);
  test_readstream_object(&two, blocksizes[i]);
  test_readstream_object(&some, blocksizes[i]);
 }
}
