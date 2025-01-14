
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ fast_handler ;
 scalar_t__ fast_handler_end ;

__attribute__((used)) static inline void copy_fast_tlb_miss_handler(unsigned int addr)
{
 unsigned int start = (unsigned int) fast_handler;
 unsigned int end = (unsigned int) fast_handler_end;
 volatile unsigned int tmp = 0;

 __asm__ __volatile__ (
  "1:\n"
  "	ldw	%3,0(%0)\n"
  "	stw	%3,0(%1)\n"
  "	flushd	0(%1)\n"
  "	flushi	%1\n"
  "	flushp\n"
  "	addi	%0,%0,4\n"
  "	addi	%1,%1,4\n"
  "	bne	%0,%2,1b\n"
  :
  : "r" (start), "r" (addr), "r" (end), "r" (tmp)
  : "memory"
 );
}
