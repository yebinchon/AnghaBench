#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ user ;
typedef  double rating ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 double RATING_NORM ; 
 double FUNC1 (double) ; 
 scalar_t__ fading ; 
 scalar_t__ now ; 
 scalar_t__ ratingT ; 
 double* FUNC2 (TYPE_1__*,int,int) ; 

rating FUNC3 (user *u, int local_id, int num) {
  if (FUNC0(u->flags) == 0) {
    return 0.0;
  }

  rating r = *FUNC2 (u, local_id, num);
  if (fading) {
    r *= FUNC1 (((rating)(ratingT - now)) / RATING_NORM);
  }
  return r;
}