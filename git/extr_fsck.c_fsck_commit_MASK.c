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
struct fsck_options {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct commit*,char const*,unsigned long,struct fsck_options*) ; 
 char const* FUNC1 (struct commit*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct commit*,char const*) ; 

__attribute__((used)) static int FUNC3(struct commit *commit, const char *data,
	unsigned long size, struct fsck_options *options)
{
	const char *buffer = data ?  data : FUNC1(commit, &size);
	int ret = FUNC0(commit, buffer, size, options);
	if (!data)
		FUNC2(commit, buffer);
	return ret;
}