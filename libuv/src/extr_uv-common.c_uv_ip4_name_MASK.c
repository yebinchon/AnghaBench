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
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,size_t) ; 

int FUNC1(const struct sockaddr_in* src, char* dst, size_t size) {
  return FUNC0(AF_INET, &src->sin_addr, dst, size);
}