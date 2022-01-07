
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_sg_division {scalar_t__ proportion_of_total; } ;


 unsigned int TEST_SG_TOTAL ;

__attribute__((used)) static unsigned int count_test_sg_divisions(const struct test_sg_division *divs)
{
 unsigned int remaining = TEST_SG_TOTAL;
 unsigned int ndivs = 0;

 do {
  remaining -= divs[ndivs++].proportion_of_total;
 } while (remaining);

 return ndivs;
}
