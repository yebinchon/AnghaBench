
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int CHECK_BE (int,int,int) ;
 int CHECK_LE (int,int,int) ;

__attribute__((used)) static void test_bitops_incr(void)
{
  uint8_t buf[4];
  { write32_be((0), buf); for (size_t i = 0; i < (1); i++) incr_be(buf, sizeof buf); TEST_CHECK(read32_be(buf) == (1)); };
  { write32_be((0), buf); for (size_t i = 0; i < (256); i++) incr_be(buf, sizeof buf); TEST_CHECK(read32_be(buf) == (256)); };
  { write32_be((256), buf); for (size_t i = 0; i < (256); i++) incr_be(buf, sizeof buf); TEST_CHECK(read32_be(buf) == (512)); };
  { write32_be((0xffffffff), buf); for (size_t i = 0; i < (1); i++) incr_be(buf, sizeof buf); TEST_CHECK(read32_be(buf) == (0)); };

  { write32_le((0), buf); for (size_t i = 0; i < (1); i++) incr_le(buf, sizeof buf); TEST_CHECK(read32_le(buf) == (1)); };
  { write32_le((0), buf); for (size_t i = 0; i < (256); i++) incr_le(buf, sizeof buf); TEST_CHECK(read32_le(buf) == (256)); };
  { write32_le((0x7fffffff), buf); for (size_t i = 0; i < (1); i++) incr_le(buf, sizeof buf); TEST_CHECK(read32_le(buf) == (0x80000000)); };
  { write32_le((0xffffffff), buf); for (size_t i = 0; i < (1); i++) incr_le(buf, sizeof buf); TEST_CHECK(read32_le(buf) == (0)); };



}
