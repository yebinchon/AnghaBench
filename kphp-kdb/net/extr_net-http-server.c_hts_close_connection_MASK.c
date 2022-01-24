#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct connection {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* ht_close ) (struct connection*,int) ;} ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  http_connections ; 
 int FUNC1 (struct connection*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct connection*,int) ; 

int FUNC3 (struct connection *c, int who) {
  http_connections--;

  if (FUNC0(c)->ht_close != NULL) {
    FUNC0(c)->ht_close (c, who);
  } 

  return FUNC1 (c, who);
}