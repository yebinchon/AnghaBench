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
struct rpc_app_struct {int dummy; } ;
typedef  scalar_t__ rpc_app_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 

rpc_app_t FUNC2() {
  rpc_app_t app = (rpc_app_t)FUNC0(sizeof(struct rpc_app_struct));
  if (app) {
    FUNC1(app, 0, sizeof(struct rpc_app_struct));
  }
  return app;
}