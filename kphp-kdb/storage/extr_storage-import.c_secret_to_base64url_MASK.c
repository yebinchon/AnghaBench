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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (unsigned char*,int,char*,int) ; 

__attribute__((used)) static void FUNC2 (unsigned long long secret, char output[12]) {
  int r = FUNC1 ((unsigned char *) &secret, 8, output, 12);
  FUNC0 (!r);
}