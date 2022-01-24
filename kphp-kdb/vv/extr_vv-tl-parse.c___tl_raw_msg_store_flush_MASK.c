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
struct udp_target {int dummy; } ;
struct raw_message {int dummy; } ;

/* Variables and functions */
 scalar_t__ TL_OUT ; 
 scalar_t__ TL_OUT_EXTRA ; 
 scalar_t__ TL_OUT_RAW_MSG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct udp_target*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 

__attribute__((used)) static inline void FUNC3 (void) {
//  struct udp_target *S = (struct udp_target *)TL_OUT_EXTRA;
  FUNC0 (TL_OUT_RAW_MSG);
  FUNC0 (TL_OUT_EXTRA);
  FUNC1 ((struct udp_target *)TL_OUT_EXTRA, TL_OUT_RAW_MSG, 0);
  FUNC2 (TL_OUT_RAW_MSG, sizeof (struct raw_message));
  TL_OUT = 0;
  //udp_target_flush ((struct udp_target *)TL_OUT_EXTRA);
}