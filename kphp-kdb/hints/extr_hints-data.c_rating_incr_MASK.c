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
typedef  int rating ;

/* Variables and functions */
 int MAX_RATING ; 
 int RATING_NORM ; 
 int FUNC0 (int) ; 
 scalar_t__ fading ; 
 int ratingT ; 

void FUNC1 (rating *a, int cnt, int now_time) {
  if (fading) {
    rating dt = ((rating)(now_time - ratingT)) / RATING_NORM;
    *a += FUNC0 (dt) * cnt;
  } else {
    *a += cnt - 128;
    if (*a < -MAX_RATING) {
      *a = -MAX_RATING;
    }
    if (*a > MAX_RATING) {
      *a = MAX_RATING;
    }
  }
}