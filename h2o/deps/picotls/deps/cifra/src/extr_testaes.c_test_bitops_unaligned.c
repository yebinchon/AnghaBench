
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int CHECK (int,int,int) ;
 int write32_be (int,int *) ;

__attribute__((used)) static void test_bitops_unaligned(void)
{
  uint8_t in[4], out[4];
  write32_be(0x11223344, in);

  { memset(out, 0, sizeof out); copy_bytes_unaligned(out, in, 4, 0); TEST_CHECK(read32_be(out) == (0x11223344)); };
  { memset(out, 0, sizeof out); copy_bytes_unaligned(out, in, 3, 1); TEST_CHECK(read32_be(out) == (0x22446600)); };
  { memset(out, 0, sizeof out); copy_bytes_unaligned(out, in, 3, 2); TEST_CHECK(read32_be(out) == (0x4488cd00)); };
  { memset(out, 0, sizeof out); copy_bytes_unaligned(out, in, 3, 3); TEST_CHECK(read32_be(out) == (0x89119a00)); };
  { memset(out, 0, sizeof out); copy_bytes_unaligned(out, in, 3, 4); TEST_CHECK(read32_be(out) == (0x12233400)); };
  { memset(out, 0, sizeof out); copy_bytes_unaligned(out, in, 3, 5); TEST_CHECK(read32_be(out) == (0x24466800)); };
  { memset(out, 0, sizeof out); copy_bytes_unaligned(out, in, 3, 6); TEST_CHECK(read32_be(out) == (0x488cd100)); };
  { memset(out, 0, sizeof out); copy_bytes_unaligned(out, in, 3, 7); TEST_CHECK(read32_be(out) == (0x9119a200)); };
  { memset(out, 0, sizeof out); copy_bytes_unaligned(out, in, 3, 8); TEST_CHECK(read32_be(out) == (0x22334400)); };
  { memset(out, 0, sizeof out); copy_bytes_unaligned(out, in, 2, 9); TEST_CHECK(read32_be(out) == (0x44660000)); };
  { memset(out, 0, sizeof out); copy_bytes_unaligned(out, in, 2, 16); TEST_CHECK(read32_be(out) == (0x33440000)); };


}
