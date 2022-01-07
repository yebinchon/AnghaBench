
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lanai_dev {int dummy; } ;


 int SRAM_BYTES ;
 int sram_test_word (struct lanai_dev const*,int,int ) ;

__attribute__((used)) static int sram_test_pass(const struct lanai_dev *lanai, u32 pattern)
{
 int offset, result = 0;
 for (offset = 0; offset < SRAM_BYTES && result == 0; offset += 4)
  result = sram_test_word(lanai, offset, pattern);
 return result;
}
