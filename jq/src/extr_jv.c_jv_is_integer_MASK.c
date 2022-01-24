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
typedef  int /*<<< orphan*/  jv ;

/* Variables and functions */
 scalar_t__ DBL_EPSILON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JV_KIND_NUMBER ; 
 scalar_t__ FUNC1 (double) ; 
 double FUNC2 (int /*<<< orphan*/ ) ; 
 double FUNC3 (double,double*) ; 

int FUNC4(jv j){
  if(!FUNC0(j, JV_KIND_NUMBER)){
    return 0;
  }

  double x = FUNC2(j);

  double ipart;
  double fpart = FUNC3(x, &ipart);

  return FUNC1(fpart) < DBL_EPSILON;
}