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
typedef  int /*<<< orphan*/  rpc_status ;
typedef  int /*<<< orphan*/  plist_t ;

/* Variables and functions */
 scalar_t__ PLIST_DATA ; 
 int /*<<< orphan*/  RPC_ERROR ; 
 int /*<<< orphan*/  RPC_SUCCESS ; 
 scalar_t__ UINT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char**,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

rpc_status FUNC4(const plist_t node, const char *key,
    char **to_value, size_t *to_length) {
  if (!node || !key || !to_value || !to_length) {
    return RPC_ERROR;
  }
  *to_value = NULL;
  *to_length = 0;
  plist_t item = FUNC1(node, key);
  if (FUNC3(item) != PLIST_DATA) {
    return RPC_ERROR;
  }
  char *data = NULL;
  uint64_t length = 0;
  FUNC2(item, &data, &length);
  if (length > UINT32_MAX) {
    FUNC0(data);
    return RPC_ERROR;
  }
  *to_value = data;
  *to_length = (size_t)length;
  return RPC_SUCCESS;
}