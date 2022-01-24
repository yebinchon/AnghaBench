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
struct nb_reader {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct nb_reader*) ; 

int FUNC2 (struct nb_reader *I, int *x, int *c) {
  int sgn = 0, r = 0;
  *c = FUNC1 (I);
  if (*c == '-') {
    sgn = 1;
    *c = FUNC1 (I);
  } 
  
  if (*c < 0 || !FUNC0(*c)) {
    return 0; 
  }
  
  do {
    if (r > 0x7fffffff / 10) {
      return 0;
    }
    r = r * 10 + (*c - '0');
    if (r < 0) {
      return 0;
    }
    *c = FUNC1 (I);
  } while (*c >= 0 && FUNC0(*c));

  if (sgn) {
    r = -r;
  }
  *x = r;
  return 1;
}