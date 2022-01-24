#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
typedef  int /*<<< orphan*/  hrz_dev ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  CONTROL_0_REG ; 
 int SEEPROM_CS ; 
 int SEEPROM_DI ; 
 int SEEPROM_DO ; 
 int SEEPROM_SK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC3(const hrz_dev *dev, u16 addr)
{
  u32 ctrl = FUNC2 (dev, CONTROL_0_REG);
  
  const unsigned int addr_bits = 6;
  const unsigned int data_bits = 16;
  
  unsigned int i;
  
  u16 res;
  
  ctrl &= ~(SEEPROM_CS | SEEPROM_SK | SEEPROM_DI);
  FUNC1(dev, ctrl);
  
  // wake Serial EEPROM and send 110 (READ) command
  ctrl |=  (SEEPROM_CS | SEEPROM_DI);
  FUNC0(dev, ctrl);
  
  ctrl |= SEEPROM_DI;
  FUNC0(dev, ctrl);
  
  ctrl &= ~SEEPROM_DI;
  FUNC0(dev, ctrl);
  
  for (i=0; i<addr_bits; i++) {
    if (addr & (1 << (addr_bits-1)))
      ctrl |= SEEPROM_DI;
    else
      ctrl &= ~SEEPROM_DI;
    
    FUNC0(dev, ctrl);
    
    addr = addr << 1;
  }
  
  // we could check that we have DO = 0 here
  ctrl &= ~SEEPROM_DI;
  
  res = 0;
  for (i=0;i<data_bits;i++) {
    res = res >> 1;
    
    FUNC0(dev, ctrl);
    
    if (FUNC2 (dev, CONTROL_0_REG) & SEEPROM_DO)
      res |= (1 << (data_bits-1));
  }
  
  ctrl &= ~(SEEPROM_SK | SEEPROM_CS);
  FUNC1(dev, ctrl);
  
  return res;
}