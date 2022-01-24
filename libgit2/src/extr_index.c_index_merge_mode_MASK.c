#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int mode; } ;
typedef  TYPE_1__ git_index_entry ;
struct TYPE_6__ {scalar_t__ distrust_filemode; scalar_t__ no_symlinks; } ;
typedef  TYPE_2__ git_index ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 

__attribute__((used)) static unsigned int FUNC3(
	git_index *index, git_index_entry *existing, unsigned int mode)
{
	if (index->no_symlinks && FUNC1(mode) &&
		existing && FUNC0(existing->mode))
		return existing->mode;

	if (index->distrust_filemode && FUNC1(mode))
		return (existing && FUNC1(existing->mode)) ?
			existing->mode : FUNC2(0666);

	return FUNC2(mode);
}