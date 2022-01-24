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

/* Variables and functions */
 int /*<<< orphan*/  alloc_history_strings ; 
 unsigned short alloc_history_strings_size ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static inline void FUNC1 (long aux_addr) {
#ifdef __LP64__
  aux_addr &= (1LL << 56) - 1;
#endif
  alloc_history_strings--;
  alloc_history_strings_size -= *(unsigned short *)(aux_addr - 2) + 3;
  FUNC0 ((char *) aux_addr - 2);
}