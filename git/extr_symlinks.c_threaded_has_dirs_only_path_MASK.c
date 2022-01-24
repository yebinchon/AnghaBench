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
struct cache_def {int dummy; } ;

/* Variables and functions */
 int FL_DIR ; 
 int FL_FULLPATH ; 
 int FUNC0 (struct cache_def*,char const*,int,int,int) ; 

__attribute__((used)) static int FUNC1(struct cache_def *cache, const char *name, int len, int prefix_len)
{
	return FUNC0(cache, name, len,
			   FL_DIR|FL_FULLPATH, prefix_len) &
		FL_DIR;
}