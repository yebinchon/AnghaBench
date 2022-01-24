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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  rpc_status ;
typedef  int /*<<< orphan*/  plist_t ;

/* Variables and functions */
 scalar_t__ PLIST_BOOLEAN ; 
 int /*<<< orphan*/  RPC_ERROR ; 
 int /*<<< orphan*/  RPC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

rpc_status FUNC3(const plist_t node, const char *key,
    bool *to_value) {
  if (!node || !key || !to_value) {
    return RPC_ERROR;
  }
  plist_t item = FUNC0(node, key);
  if (FUNC2(item) != PLIST_BOOLEAN) {
    return RPC_ERROR;
  }
  uint8_t value = 0;
  FUNC1(item, &value);
  *to_value = (value ? true : false);
  return RPC_SUCCESS;
}