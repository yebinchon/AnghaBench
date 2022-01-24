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
struct udp_target_set {int state; struct udp_target* last; struct udp_target* S; } ;
struct udp_target {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct udp_target_set*) ; 
 int /*<<< orphan*/  FUNC1 (struct udp_target_set*) ; 

struct udp_target *FUNC2 (struct udp_target_set *ST) {
  FUNC0 (ST);
  switch (ST->state) {
  case 0:
    return 0;
  case 1:
    FUNC1 (ST);
  case 2:
    return ST->S;
  case 3:
    return ST->last;
  default:
    FUNC0 (0);
    return 0;
  }
}