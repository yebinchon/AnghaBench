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
struct mc_proxy_merge_functions {void* (* store_gather_extra ) (char const*,int) ;} ;

/* Variables and functions */
 struct mc_proxy_merge_functions* FUNC0 () ; 
 void* FUNC1 (char const*,int) ; 

void *FUNC2 (const char *key, int key_len) {
  struct mc_proxy_merge_functions *func = FUNC0 ();
  return func->store_gather_extra (key, key_len);
}