#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int /*<<< orphan*/  start; } ;
struct TYPE_6__ {TYPE_1__ payload; } ;
typedef  TYPE_2__ loader_block ;
typedef  int /*<<< orphan*/  amb_dev ;

/* Variables and functions */
 int DBG_FLOW ; 
 int DBG_LOAD ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  adapter_start ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(loader_block *lb, const amb_dev *dev, u32 address)
{
  FUNC0 (DBG_FLOW|DBG_LOAD, "loader_start");
  
  lb->payload.start = FUNC1 (address);
  return FUNC2 (lb, dev, adapter_start);
}