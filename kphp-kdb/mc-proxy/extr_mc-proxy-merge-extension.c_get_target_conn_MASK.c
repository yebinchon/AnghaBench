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
struct connection {int /*<<< orphan*/  Out; } ;
struct conn_target {int custom_field; } ;

/* Variables and functions */
 scalar_t__ MAX_CLUSTER_SERVERS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct connection** get_connection ; 
 struct conn_target** get_target ; 
 struct connection* FUNC1 (struct conn_target*) ; 
 scalar_t__ get_targets ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

struct connection *FUNC3 (struct conn_target *S) {
  struct connection *d;
  int x;
  if (S->custom_field) {
    x = S->custom_field;
    if (x < 0) {
      x = -x;
    }
    x--;
    FUNC0 ((unsigned) x < (unsigned) get_targets);
    FUNC0 (get_target[x] == S);
    d = get_connection[x];
    if (S->custom_field > 0) {
      FUNC2 (&d->Out, " ", 1);
    } else {
      FUNC2 (&d->Out, "get ", 4);
      S->custom_field = - S->custom_field;
    }
  } else {
    d = FUNC1 (S);
    if (!d) {
      return 0;
    }
    FUNC0 (get_targets < MAX_CLUSTER_SERVERS);
    x = get_targets++;
    S->custom_field = x+1;
    get_target[x] = S;
    get_connection[x] = d;
    FUNC2 (&d->Out, "get ", 4);
  }
  return d;
}