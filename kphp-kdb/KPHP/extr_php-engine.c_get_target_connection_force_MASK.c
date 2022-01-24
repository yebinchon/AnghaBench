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
struct conn_target {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct conn_target*) ; 
 struct connection* FUNC1 (struct conn_target*,int) ; 

struct connection *FUNC2 (struct conn_target *S) {
  struct connection *res = FUNC1 (S, 0);

  if (res == NULL) {
    FUNC0 (S);
    res = FUNC1 (S, 1);
  }

  return res;
}