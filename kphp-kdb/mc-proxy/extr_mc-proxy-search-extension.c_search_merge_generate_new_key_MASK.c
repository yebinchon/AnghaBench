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

/* Variables and functions */
 int FUNC0 (char*,char*,int,int) ; 
 int FUNC1 (char*,int) ; 

int FUNC2 (char *buff, char *key, int key_len, void *E) {
  int i = FUNC1 (key, key_len);
  return FUNC0 (buff, key, key_len, i);
}