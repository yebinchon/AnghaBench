
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert (int) ;
 int git_encode_varint (unsigned char*,int,unsigned long long) ;
 int memcmp (unsigned char*,char*,int) ;

void test_core_encoding__encode(void)
{
 unsigned char buf[100];
 cl_assert(git_encode_varint(buf, 100, 65) == 1);
 cl_assert(buf[0] == 'A');

 cl_assert(git_encode_varint(buf, 1, 1) == 1);
 cl_assert(!memcmp(buf, "\x01", 1));

 cl_assert(git_encode_varint(buf, 100, 267869656) == 4);
 cl_assert(!memcmp(buf, "\xfe\xdc\xbaX", 4));

 cl_assert(git_encode_varint(buf, 100, 1489279344088ULL) == 6);
 cl_assert(!memcmp(buf, "\xaa\xaa\xfe\xdc\xbaX", 6));

 cl_assert(git_encode_varint(buf, 1, 1489279344088ULL) == -1);
}
