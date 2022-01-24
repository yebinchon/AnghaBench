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
 int UV_EINVAL ; 
 int UV_ENOBUFS ; 
 int FUNC0 (char*,size_t,char*,unsigned int) ; 
 int FUNC1 (int) ; 

int FUNC2(unsigned int ifindex, char* buffer, size_t* size) {
  int r;

  if (buffer == NULL || size == NULL || *size == 0)
    return UV_EINVAL;

  r = FUNC0(buffer, *size, "%d", ifindex);

  if (r < 0)
    return FUNC1(r);

  if (r >= (int) *size) {
    *size = r + 1;
    return UV_ENOBUFS;
  }

  *size = r;
  return 0;
}