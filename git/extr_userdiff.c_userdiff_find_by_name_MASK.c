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
struct userdiff_driver {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 struct userdiff_driver* FUNC1 (char const*,int) ; 

struct userdiff_driver *FUNC2(const char *name)
{
	int len = FUNC0(name);
	return FUNC1(name, len);
}