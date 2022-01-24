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
typedef  int /*<<< orphan*/  rpc_t ;
typedef  int /*<<< orphan*/  rpc_status ;
typedef  int /*<<< orphan*/  plist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

rpc_status FUNC3(rpc_t self, const plist_t rpc_dict) {
  char *selector = NULL;
  FUNC1(FUNC0(rpc_dict, "__selector"), &selector);
  plist_t args = FUNC0(rpc_dict, "__argument");
  return FUNC2(self, selector, args);
}