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
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,int /*<<< orphan*/ *,void*,size_t) ; 

__attribute__((used)) static ssize_t FUNC1(char *buffer, loff_t offset, size_t count,
			   void *data, size_t datalen)
{
	return FUNC0(buffer, count, &offset, data, datalen);
}