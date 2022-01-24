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
struct mc_proxy_merge_functions {void (* load_saved_data ) (struct connection*) ;} ;
struct connection {int dummy; } ;

/* Variables and functions */
 struct mc_proxy_merge_functions* FUNC0 () ; 
 void FUNC1 (struct connection*) ; 

void FUNC2 (struct connection *c) {
  struct mc_proxy_merge_functions *func = FUNC0 ();
  return func->load_saved_data (c);
}