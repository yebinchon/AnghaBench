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
struct raw_message {int dummy; } ;
struct connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct raw_message*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct connection*,struct raw_message*,int /*<<< orphan*/ ) ; 

void FUNC3 (struct connection *c, int len, void *Q) {
  FUNC0 (!(len & 3));
  struct raw_message r;
  FUNC0 (FUNC1 (&r, Q, len) == len);
  FUNC2 (c, &r, 0);
}