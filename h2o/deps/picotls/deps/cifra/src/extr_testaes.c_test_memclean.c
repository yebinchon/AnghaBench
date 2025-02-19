
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int TEST_CHECK (int) ;
 int mem_clean (int*,int) ;
 int memcpy (int*,int*,int) ;
 int memset (int*,int,int) ;

__attribute__((used)) static void test_memclean(void)
{
  uint8_t buf[32], buf2[32];
  memset(buf, 0xff, sizeof buf);
  mem_clean(buf + 1, sizeof buf - 2);
  TEST_CHECK(buf[0] == 0xff);
  TEST_CHECK(buf[1] == 0x00);
  TEST_CHECK(buf[16] == 0x00);
  TEST_CHECK(buf[30] == 0x00);
  TEST_CHECK(buf[31] == 0xff);

  memcpy(buf2, buf, sizeof buf);
  TEST_CHECK(buf2[0] == 0xff);
  TEST_CHECK(buf2[1] == 0x00);
  TEST_CHECK(buf2[16] == 0x00);
  TEST_CHECK(buf2[30] == 0x00);
  TEST_CHECK(buf2[31] == 0xff);

  memset(buf2, 0xee, sizeof buf);
  TEST_CHECK(buf2[0] == 0xee);
  TEST_CHECK(buf2[1] == 0xee);
  TEST_CHECK(buf2[2] == 0xee);
  TEST_CHECK(buf2[3] == 0xee);
  TEST_CHECK(buf2[30] == 0xee);
  TEST_CHECK(buf2[31] == 0xee);
}
