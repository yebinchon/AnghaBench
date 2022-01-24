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
 int FUNC0 (int) ; 
 int FUNC1 (char const*,int) ; 

int FUNC2 (const char *text, int len, int owner_id) {
  int L = FUNC1 (text, len);
  if (L < 0) {
    return L;
  }
  return FUNC0 (owner_id);
}