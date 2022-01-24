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
struct connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * Connections ; 
 scalar_t__ MAX_RES ; 
 scalar_t__ R ; 
 scalar_t__ R_end ; 
 int max_connection ; 
 int FUNC0 (struct connection*,char const*,int,int,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2 (struct connection *c, const char *key, int key_len) {
  int i;
  R_end = R;
  for (i = 0; i <= max_connection && R_end < R + MAX_RES; i++) {
    FUNC1 (&Connections[i]);
  }
  return FUNC0 (c, key, key_len, max_connection+1, 5, R, R_end - R);
}