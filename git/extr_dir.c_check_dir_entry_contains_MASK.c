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
struct dir_entry {int len; char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 

int FUNC1(const struct dir_entry *out, const struct dir_entry *in)
{
	return (out->len < in->len) &&
		(out->name[out->len - 1] == '/') &&
		!FUNC0(out->name, in->name, out->len);
}