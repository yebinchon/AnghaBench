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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  loader_block ;
typedef  int /*<<< orphan*/  amb_dev ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmds ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rxs ; 
 int /*<<< orphan*/  rxs_bs ; 
 int /*<<< orphan*/  txs ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(amb_dev *dev)
{
  loader_block lb;
  
  u32 version;
  
  if (FUNC1 (dev, 1)) {
    FUNC0 (KERN_ERR, "card reset failed!");
  } else {
    FUNC6 (dev, &lb);
    
    if (FUNC7 (&lb, dev, &version)) {
      FUNC0 (KERN_INFO, "failed to get loader version");
    } else {
      FUNC0 (KERN_INFO, "loader version is %08x", version);
      
      if (FUNC8 (&lb, dev)) {
	FUNC0 (KERN_ERR, "microcode failure");
      } else if (FUNC4 (dev, cmds, txs, rxs, rxs_bs)) {
	FUNC0 (KERN_ERR, "failed to get memory for queues");
      } else {
	
	if (FUNC2 (dev)) {
	  FUNC0 (KERN_ERR, "adapter did not accept queues");
	} else {
	  
	  FUNC3 (dev);
	  return 0;
	  
	} /* amb_talk */
	
	FUNC5 (dev);
      } /* create_queues, ucode_init */
      
      FUNC1 (dev, 0);
    } /* get_loader_version */
    
  } /* amb_reset */
  
  return -EINVAL;
}