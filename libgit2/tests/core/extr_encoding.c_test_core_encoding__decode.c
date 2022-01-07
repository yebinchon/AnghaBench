
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert (int) ;
 unsigned long long git_decode_varint (unsigned char const*,size_t*) ;

void test_core_encoding__decode(void)
{
 const unsigned char *buf = (unsigned char *)"AB";
 size_t size;

 cl_assert(git_decode_varint(buf, &size) == 65);
 cl_assert(size == 1);

 buf = (unsigned char *)"\xfe\xdc\xbaXY";
 cl_assert(git_decode_varint(buf, &size) == 267869656);
 cl_assert(size == 4);

 buf = (unsigned char *)"\xaa\xaa\xfe\xdc\xbaXY";
 cl_assert(git_decode_varint(buf, &size) == 1489279344088ULL);
 cl_assert(size == 6);

 buf = (unsigned char *)"\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xfe\xdc\xbaXY";
 cl_assert(git_decode_varint(buf, &size) == 0);
 cl_assert(size == 0);

}
