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
typedef  size_t ssize_t ;
typedef  scalar_t__ s64 ;
typedef  int loff_t ;

/* Variables and functions */
 size_t EIO ; 
 scalar_t__ OPAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int nvram_size ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,size_t,int) ; 

__attribute__((used)) static ssize_t FUNC2(char *buf, size_t count, loff_t *index)
{
	s64 rc;
	int off;

	if (*index >= nvram_size)
		return 0;
	off = *index;
	if ((off + count) > nvram_size)
		count = nvram_size - off;
	rc = FUNC1(FUNC0(buf), count, off);
	if (rc != OPAL_SUCCESS)
		return -EIO;
	*index += count;
	return count;
}