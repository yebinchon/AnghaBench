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
struct counter {int type; int views; } ;

/* Variables and functions */
 struct counter* FUNC0 (long long,int,int) ; 

int FUNC1 (long long counter_id, int version) {
  struct counter *C = FUNC0 (counter_id, version, 1);
  if (!C) { return -1;}
  if (C->type == -2) { return -2;}
  return C->views;
}