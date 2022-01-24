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
struct hws_trailer_entry {int dummy; } ;
struct aux_buffer {unsigned long* sdb_index; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct aux_buffer*,unsigned long) ; 
 scalar_t__ FUNC1 (unsigned long) ; 

__attribute__((used)) static struct hws_trailer_entry *FUNC2(struct aux_buffer *aux,
						 unsigned long index)
{
	unsigned long sdb;

	index = FUNC0(aux, index);
	sdb = aux->sdb_index[index];
	return (struct hws_trailer_entry *)FUNC1(sdb);
}