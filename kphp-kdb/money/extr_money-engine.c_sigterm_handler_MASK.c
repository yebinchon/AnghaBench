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

/* Variables and functions */
 int SIGTERM ; 
 int global_engine_status ; 
 scalar_t__ now ; 
 int pending_signals ; 
 scalar_t__ quit_at ; 
 int /*<<< orphan*/  FUNC0 (int,void (*) (int const)) ; 

__attribute__((used)) static void FUNC1 (const int sig) {
  if (global_engine_status != 1) {
    pending_signals |= (1 << SIGTERM);
    return;
  }
  global_engine_status = 2;
  if (!quit_at) {
    quit_at = now + 3;
  }
  FUNC0(SIGTERM, sigterm_handler);
}