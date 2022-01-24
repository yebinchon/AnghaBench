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
struct mc_proxy_merge_functions {int (* generate_preget_query ) (char*,char const*,int,void*,int) ;} ;

/* Variables and functions */
 struct mc_proxy_merge_functions* FUNC0 () ; 
 int FUNC1 (char*,char const*,int,void*,int) ; 

int FUNC2 (char *buff, const char *key, int key_len, void *E, int n) {
  struct mc_proxy_merge_functions *func = FUNC0 ();
  return func->generate_preget_query (buff, key, key_len, E, n);  
}