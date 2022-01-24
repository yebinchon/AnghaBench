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
 char* FUNC0 (unsigned int) ; 
 char* FUNC1 (unsigned char const*) ; 

__attribute__((used)) static inline char *FUNC2 (unsigned ip, const unsigned char ipv6[16]) { return ip ? FUNC0 (ip) : FUNC1 (ipv6); }