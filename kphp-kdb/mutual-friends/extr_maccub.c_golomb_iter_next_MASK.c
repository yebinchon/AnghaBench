#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ len; int k; int p; scalar_t__ a; scalar_t__ M; } ;
typedef  TYPE_1__ golomb_iterator ;

/* Variables and functions */
 scalar_t__ cur_bit ; 
 int /*<<< orphan*/  FUNC0 () ; 

void FUNC1 (golomb_iterator *it) {
  if (it->len <= 0) {
    it->a = 0;
    return;
  }

  it->len--;

  int d = 0, i;
  while (cur_bit) {
    it->a -= it->M;
    FUNC0();
  }
  FUNC0();
  for (i = it->k; i > 1; i--) {
    d <<= 1;
    if (cur_bit) {
      d++;
    }
    FUNC0();
  }
  if (d >= it->p) {
    d <<= 1;
    if (cur_bit) {
      d++;
    }
    FUNC0();
    d -= it->p;
  }

  it->a -= d;
}