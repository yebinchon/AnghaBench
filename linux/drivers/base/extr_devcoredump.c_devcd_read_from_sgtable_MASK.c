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
struct scatterlist {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  size_t loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*,int /*<<< orphan*/ ,char*,size_t,size_t) ; 

__attribute__((used)) static ssize_t FUNC2(char *buffer, loff_t offset,
				       size_t buf_len, void *data,
				       size_t data_len)
{
	struct scatterlist *table = data;

	if (offset > data_len)
		return -EINVAL;

	if (offset + buf_len > data_len)
		buf_len = data_len - offset;
	return FUNC1(table, FUNC0(table), buffer, buf_len,
				  offset);
}