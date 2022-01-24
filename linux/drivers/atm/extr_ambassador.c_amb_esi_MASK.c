#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_5__ {int /*<<< orphan*/  upper2; int /*<<< orphan*/  lower4; } ;
struct TYPE_6__ {TYPE_1__ bia; } ;
struct TYPE_7__ {TYPE_2__ args; int /*<<< orphan*/  request; } ;
typedef  TYPE_3__ command ;
typedef  int /*<<< orphan*/  amb_dev ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_INIT ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 unsigned int ESI_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRB_GET_BIA ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(amb_dev *dev, u8 *esi)
{
  u32 lower4;
  u16 upper2;
  command cmd;
  
  cmd.request = FUNC7 (SRB_GET_BIA);
  while (FUNC6 (dev, &cmd)) {
    FUNC9(TASK_UNINTERRUPTIBLE);
    FUNC8();
  }
  lower4 = FUNC4 (cmd.args.bia.lower4);
  upper2 = FUNC4 (cmd.args.bia.upper2);
  FUNC0 (DBG_LOAD, "BIA: lower4: %08x, upper2 %04x", lower4, upper2);
  
  if (esi) {
    unsigned int i;
    
    FUNC1 (DBG_INIT, "ESI:");
    for (i = 0; i < ESI_LEN; ++i) {
      if (i < 4)
	  esi[i] = FUNC5(lower4>>(8*i));
      else
	  esi[i] = FUNC5(upper2>>(8*(i-4)));
      FUNC3 (DBG_INIT, " %02x", esi[i]);
    }
    
    FUNC2 (DBG_INIT, "");
  }
  
  return;
}