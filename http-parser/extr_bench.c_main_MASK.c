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
typedef  int int64_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 scalar_t__ data_len ; 
 int kBytes ; 
 scalar_t__ FUNC1 (char*,char*) ; 

int FUNC2(int argc, char** argv) {
  int64_t iterations;

  iterations = kBytes / (int64_t) data_len;
  if (argc == 2 && FUNC1(argv[1], "infinite") == 0) {
    for (;;)
      FUNC0(iterations, 1);
    return 0;
  } else {
    return FUNC0(iterations, 0);
  }
}