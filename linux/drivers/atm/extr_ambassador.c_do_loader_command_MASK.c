#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t loader_command ;
struct TYPE_5__ {void* result; void* valid; void* command; } ;
typedef  TYPE_1__ loader_block ;
typedef  int /*<<< orphan*/  amb_dev ;

/* Variables and functions */
 size_t COMMAND_IN_PROGRESS ; 
 int DBG_ERR ; 
 int DBG_FLOW ; 
 int DBG_LOAD ; 
 size_t DMA_VALID ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 size_t adapter_start ; 
 int /*<<< orphan*/  amb_mem ; 
 size_t FUNC1 (void*) ; 
 int* command_timeouts ; 
 void* FUNC2 (size_t) ; 
 int FUNC3 (size_t,size_t) ; 
 int /*<<< orphan*/  doorbell ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ volatile*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 unsigned long FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int onegigmask ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__ volatile*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(volatile loader_block *lb, const amb_dev *dev,
			     loader_command cmd)
{
  
  unsigned long timeout;
  
  FUNC0 (DBG_FLOW|DBG_LOAD, "do_loader_command");
  
  /* do a command
     
     Set the return value to zero, set the command type and set the
     valid entry to the right magic value. The payload is already
     correctly byte-ordered so we leave it alone. Hit the doorbell
     with the bus address of this structure.
     
  */
  
  lb->result = 0;
  lb->command = FUNC2 (cmd);
  lb->valid = FUNC2 (DMA_VALID);
  // dump_registers (dev);
  // dump_loader_block (lb);
  FUNC10 (dev, FUNC7(amb_mem, doorbell), FUNC9 (lb) & ~onegigmask);
  
  timeout = command_timeouts[cmd] * 10;
  
  while (!lb->result || lb->result == FUNC2 (COMMAND_IN_PROGRESS))
    if (timeout) {
      timeout = FUNC6(timeout);
    } else {
      FUNC0 (DBG_LOAD|DBG_ERR, "command %d timed out", cmd);
      FUNC5 (dev);
      FUNC4 (lb);
      return -ETIMEDOUT;
    }
  
  if (cmd == adapter_start) {
    // wait for start command to acknowledge...
    timeout = 100;
    while (FUNC8 (dev, FUNC7(amb_mem, doorbell)))
      if (timeout) {
	timeout = FUNC6(timeout);
      } else {
	FUNC0 (DBG_LOAD|DBG_ERR, "start command did not clear doorbell, res=%08x",
		FUNC1 (lb->result));
	FUNC5 (dev);
	return -ETIMEDOUT;
      }
    return 0;
  } else {
    return FUNC3 (cmd, FUNC1 (lb->result));
  }
  
}