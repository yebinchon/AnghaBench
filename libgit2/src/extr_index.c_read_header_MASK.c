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
struct index_header {void* entry_count; void* version; void* signature; } ;

/* Variables and functions */
 void* INDEX_HEADER_SIG ; 
 void* INDEX_VERSION_NUMBER_LB ; 
 void* INDEX_VERSION_NUMBER_UB ; 
 int FUNC0 (char*) ; 
 void* FUNC1 (void*) ; 

__attribute__((used)) static int FUNC2(struct index_header *dest, const void *buffer)
{
	const struct index_header *source = buffer;

	dest->signature = FUNC1(source->signature);
	if (dest->signature != INDEX_HEADER_SIG)
		return FUNC0("incorrect header signature");

	dest->version = FUNC1(source->version);
	if (dest->version < INDEX_VERSION_NUMBER_LB ||
		dest->version > INDEX_VERSION_NUMBER_UB)
		return FUNC0("incorrect header version");

	dest->entry_count = FUNC1(source->entry_count);
	return 0;
}