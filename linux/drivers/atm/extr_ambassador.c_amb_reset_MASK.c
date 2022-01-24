#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  amb_dev ;
struct TYPE_3__ {int /*<<< orphan*/  result; int /*<<< orphan*/  ready; } ;
struct TYPE_4__ {TYPE_1__ loader; } ;

/* Variables and functions */
 int AMB_DOORBELL_BITS ; 
 int AMB_RESET_BITS ; 
 int DBG_ERR ; 
 int DBG_FLOW ; 
 int DBG_LOAD ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int GPINT_TST_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int SELF_TEST_FAILURE ; 
 int SRAM_FAILURE ; 
 int SUNI_DATA_BITS_FAILURE ; 
 int SUNI_DATA_PATTERN_FAILURE ; 
 int SUNI_FIFO_FAILURE ; 
 int SUNI_UTOPIA_FAILURE ; 
 int /*<<< orphan*/  amb_mem ; 
 int /*<<< orphan*/  interrupt ; 
 int /*<<< orphan*/  interrupt_control ; 
 TYPE_2__ mb ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned long FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reset_control ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9 (amb_dev * dev, int diags) {
  u32 word;
  
  FUNC0 (DBG_FLOW|DBG_LOAD, "amb_reset");
  
  word = FUNC5 (dev, FUNC3(amb_mem, reset_control));
  // put card into reset state
  FUNC8 (dev, FUNC3(amb_mem, reset_control), word | AMB_RESET_BITS);
  // wait a short while
  FUNC7 (10);
#if 1
  // put card into known good state
  FUNC8 (dev, FUNC3(amb_mem, interrupt_control), AMB_DOORBELL_BITS);
  // clear all interrupts just in case
  FUNC8 (dev, FUNC3(amb_mem, interrupt), -1);
#endif
  // clear self-test done flag
  FUNC8 (dev, FUNC3(amb_mem, mb.loader.ready), 0);
  // take card out of reset state
  FUNC8 (dev, FUNC3(amb_mem, reset_control), word &~ AMB_RESET_BITS);
  
  if (diags) { 
    unsigned long timeout;
    // 4.2 second wait
    FUNC1(4200);
    // half second time-out
    timeout = 500;
    while (!FUNC5 (dev, FUNC3(amb_mem, mb.loader.ready)))
      if (timeout) {
	timeout = FUNC2(timeout);
      } else {
	FUNC0 (DBG_LOAD|DBG_ERR, "reset timed out");
	return -ETIMEDOUT;
      }
    
    // get results of self-test
    // XXX double check byte-order
    word = FUNC4 (dev, FUNC3(amb_mem, mb.loader.result));
    if (word & SELF_TEST_FAILURE) {
      if (word & GPINT_TST_FAILURE)
	FUNC6 ("interrupt");
      if (word & SUNI_DATA_PATTERN_FAILURE)
	FUNC6 ("SUNI data pattern");
      if (word & SUNI_DATA_BITS_FAILURE)
	FUNC6 ("SUNI data bits");
      if (word & SUNI_UTOPIA_FAILURE)
	FUNC6 ("SUNI UTOPIA interface");
      if (word & SUNI_FIFO_FAILURE)
	FUNC6 ("SUNI cell buffer FIFO");
      if (word & SRAM_FAILURE)
	FUNC6 ("bad SRAM");
      // better return value?
      return -EIO;
    }
    
  }
  return 0;
}