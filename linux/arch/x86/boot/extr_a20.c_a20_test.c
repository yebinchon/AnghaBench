
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ A20_TEST_ADDR ;
 int io_delay () ;
 int rdfs32 (scalar_t__) ;
 int rdgs32 (scalar_t__) ;
 int set_fs (int) ;
 int set_gs (int) ;
 int wrfs32 (int,scalar_t__) ;

__attribute__((used)) static int a20_test(int loops)
{
 int ok = 0;
 int saved, ctr;

 set_fs(0x0000);
 set_gs(0xffff);

 saved = ctr = rdfs32(A20_TEST_ADDR);

 while (loops--) {
  wrfs32(++ctr, A20_TEST_ADDR);
  io_delay();
  ok = rdgs32(A20_TEST_ADDR+0x10) ^ ctr;
  if (ok)
   break;
 }

 wrfs32(saved, A20_TEST_ADDR);
 return ok;
}
