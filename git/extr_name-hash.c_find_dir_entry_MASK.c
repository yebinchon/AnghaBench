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
struct index_state {int dummy; } ;
struct dir_entry {int dummy; } ;

/* Variables and functions */
 struct dir_entry* FUNC0 (struct index_state*,char const*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,unsigned int) ; 

__attribute__((used)) static struct dir_entry *FUNC2(struct index_state *istate,
		const char *name, unsigned int namelen)
{
	return FUNC0(istate, name, namelen, FUNC1(name, namelen));
}