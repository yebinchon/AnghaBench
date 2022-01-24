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
struct mc_proxy_merge_functions {int (* generate_new_key ) (char*,char*,int,void*) ;} ;

/* Variables and functions */
 struct mc_proxy_merge_functions* FUNC0 () ; 
 int FUNC1 (char*,char*,int,void*) ; 

int FUNC2 (char *buff, char *key, int len, void *E) {
  struct mc_proxy_merge_functions *func = FUNC0 ();
  return func->generate_new_key (buff, key, len, E);
}