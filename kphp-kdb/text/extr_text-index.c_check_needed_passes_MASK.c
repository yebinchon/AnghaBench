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
 int FUNC0 (int,double) ; 
 int max_uid ; 

int FUNC1 (double threshold) {
  int k = 0, uid = 0;
  while (uid <= max_uid) {
    int t = FUNC0 (uid, threshold);
    if (t <= uid) {
      return 1000000000;
    }
    k++;
    uid = t;
  }
  return k;
}