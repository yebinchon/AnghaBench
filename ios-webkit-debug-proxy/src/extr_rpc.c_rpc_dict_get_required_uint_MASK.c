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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  rpc_status ;
typedef  int /*<<< orphan*/  plist_t ;

/* Variables and functions */
 scalar_t__ PLIST_UINT ; 
 int /*<<< orphan*/  RPC_ERROR ; 
 int /*<<< orphan*/  RPC_SUCCESS ; 
 scalar_t__ UINT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 

rpc_status FUNC3(const plist_t node, const char *key,
    uint32_t *to_value) {
  if (!node || !key || !to_value) {
    return RPC_ERROR;
  }
  plist_t item = FUNC0(node, key);
  if (FUNC1(item) != PLIST_UINT) {
    return RPC_ERROR;
  }
  uint64_t value;
  FUNC2(item, &value);
  if (value > UINT32_MAX) {
    return RPC_ERROR;
  }
  *to_value = (uint32_t)value;
  return RPC_SUCCESS;
}