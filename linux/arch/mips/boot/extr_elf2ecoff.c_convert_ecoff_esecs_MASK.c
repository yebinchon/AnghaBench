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
struct scnhdr {void* s_flags; void* s_nlnno; void* s_nreloc; void* s_lnnoptr; void* s_relptr; void* s_scnptr; void* s_size; void* s_vaddr; void* s_paddr; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 

__attribute__((used)) static void FUNC2(struct scnhdr *s, int num)
{
	int i;

	for (i = 0; i < num; i++, s++) {
		s->s_paddr = FUNC1(s->s_paddr);
		s->s_vaddr = FUNC1(s->s_vaddr);
		s->s_size = FUNC1(s->s_size);
		s->s_scnptr = FUNC1(s->s_scnptr);
		s->s_relptr = FUNC1(s->s_relptr);
		s->s_lnnoptr = FUNC1(s->s_lnnoptr);
		s->s_nreloc = FUNC0(s->s_nreloc);
		s->s_nlnno = FUNC0(s->s_nlnno);
		s->s_flags = FUNC1(s->s_flags);
	}
}