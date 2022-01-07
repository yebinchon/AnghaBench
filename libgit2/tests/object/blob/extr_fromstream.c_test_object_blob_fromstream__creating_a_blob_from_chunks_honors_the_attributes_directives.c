
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_named_chunked_blob (char*,char*) ;
 int repo ;
 int write_attributes (int ) ;

void test_object_blob_fromstream__creating_a_blob_from_chunks_honors_the_attributes_directives(void)
{
 write_attributes(repo);

 assert_named_chunked_blob("321cbdf08803c744082332332838df6bd160f8f9", "dummy.data");
 assert_named_chunked_blob("e9671e138a780833cb689753570fd10a55be84fb", "dummy.txt");
 assert_named_chunked_blob("e9671e138a780833cb689753570fd10a55be84fb", "dummy.dunno");
}
