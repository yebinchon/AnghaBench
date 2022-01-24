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
struct gather_data {int /*<<< orphan*/  key; int /*<<< orphan*/  key_len; } ;
struct conn_query {int dummy; } ;

/* Variables and functions */
 struct gather_data* FUNC0 (struct conn_query*) ; 
 int /*<<< orphan*/  FUNC1 (struct conn_query*) ; 
 int /*<<< orphan*/  gather_timeouts ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,struct conn_query*) ; 

int FUNC4 (struct conn_query *q) {
  FUNC3 (3, "Query %p timeout.\n", q);
  struct gather_data *G = FUNC0(q);
  FUNC2 ("Query on key %.*s timeout\n", G->key_len, G->key);
  gather_timeouts++;
  FUNC1 (q);
  return 0;
}