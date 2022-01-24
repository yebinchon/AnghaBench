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
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ hrz_dev ;

/* Variables and functions */
 int DBG_ERR ; 
 int DBG_TX ; 
 int /*<<< orphan*/  MASTER_TX_COUNT_REG_OFF ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tx_busy ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4 (hrz_dev * dev) {
  if (FUNC1 (tx_busy, &dev->flags)) {
    FUNC2 (dev, 1);
  } else {
    FUNC0 (DBG_TX|DBG_ERR, "unexpected TX bus master completion");
    // clear interrupt condition on adapter
    FUNC3 (dev, MASTER_TX_COUNT_REG_OFF, 0);
  }
  return;
}