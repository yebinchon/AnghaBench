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
typedef  int uint32_t ;
struct multi_pack_index {scalar_t__ chunk_object_offsets; } ;

/* Variables and functions */
 int MIDX_CHUNK_OFFSET_WIDTH ; 
 int FUNC0 (scalar_t__) ; 

__attribute__((used)) static uint32_t FUNC1(struct multi_pack_index *m, uint32_t pos)
{
	return FUNC0(m->chunk_object_offsets + pos * MIDX_CHUNK_OFFSET_WIDTH);
}