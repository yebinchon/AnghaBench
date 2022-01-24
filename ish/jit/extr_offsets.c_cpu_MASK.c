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
 int /*<<< orphan*/  AF_FLAG ; 
 int /*<<< orphan*/  AF_OPS ; 
 int /*<<< orphan*/  CPU ; 
 int /*<<< orphan*/  DF_FLAG ; 
 int /*<<< orphan*/  JIT_BLOCK ; 
 int /*<<< orphan*/  LOCAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEM_READ ; 
 int /*<<< orphan*/  MEM_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PF_FLAG ; 
 int /*<<< orphan*/  PF_RES ; 
 int /*<<< orphan*/  SF_FLAG ; 
 int /*<<< orphan*/  SF_RES ; 
 int /*<<< orphan*/  TLB ; 
 int /*<<< orphan*/  TLB_ENTRY ; 
 int /*<<< orphan*/  ZF_FLAG ; 
 int /*<<< orphan*/  ZF_RES ; 
 int /*<<< orphan*/  ax ; 
 int /*<<< orphan*/  bp ; 
 int /*<<< orphan*/  bx ; 
 int /*<<< orphan*/  cf ; 
 int /*<<< orphan*/  code ; 
 int /*<<< orphan*/  cpu_state ; 
 int /*<<< orphan*/  cx ; 
 int /*<<< orphan*/  data_minus_addr ; 
 int /*<<< orphan*/  df_offset ; 
 int /*<<< orphan*/  di ; 
 int /*<<< orphan*/  dirty_page ; 
 int /*<<< orphan*/  dx ; 
 int /*<<< orphan*/  eax ; 
 int /*<<< orphan*/  ebp ; 
 int /*<<< orphan*/  ebx ; 
 int /*<<< orphan*/  ecx ; 
 int /*<<< orphan*/  edi ; 
 int /*<<< orphan*/  edx ; 
 int /*<<< orphan*/  eflags ; 
 int /*<<< orphan*/  eip ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  esi ; 
 int /*<<< orphan*/  esp ; 
 int /*<<< orphan*/  flags_res ; 
 int /*<<< orphan*/  fsw ; 
 int /*<<< orphan*/  gs ; 
 int /*<<< orphan*/  jit_block ; 
 int /*<<< orphan*/  jit_frame ; 
 int /*<<< orphan*/  last_block ; 
 int /*<<< orphan*/  of ; 
 int /*<<< orphan*/  op1 ; 
 int /*<<< orphan*/  op2 ; 
 int /*<<< orphan*/  page ; 
 int /*<<< orphan*/  page_if_writable ; 
 int /*<<< orphan*/  res ; 
 int /*<<< orphan*/  ret_cache ; 
 int /*<<< orphan*/  segfault_addr ; 
 int /*<<< orphan*/  segfault_type ; 
 int /*<<< orphan*/  si ; 
 int /*<<< orphan*/  sp ; 
 int /*<<< orphan*/  tlb ; 
 int /*<<< orphan*/  tlb_entry ; 
 int /*<<< orphan*/  tls_ptr ; 
 int /*<<< orphan*/  value ; 
 int /*<<< orphan*/  value_addr ; 
 int /*<<< orphan*/  xmm ; 

void FUNC2() {
    FUNC1(CPU, cpu_state, eax);
    FUNC1(CPU, cpu_state, ebx);
    FUNC1(CPU, cpu_state, ecx);
    FUNC1(CPU, cpu_state, edx);
    FUNC1(CPU, cpu_state, esi);
    FUNC1(CPU, cpu_state, edi);
    FUNC1(CPU, cpu_state, ebp);
    FUNC1(CPU, cpu_state, esp);
    FUNC1(CPU, cpu_state, ax);
    FUNC1(CPU, cpu_state, bx);
    FUNC1(CPU, cpu_state, cx);
    FUNC1(CPU, cpu_state, dx);
    FUNC1(CPU, cpu_state, si);
    FUNC1(CPU, cpu_state, di);
    FUNC1(CPU, cpu_state, bp);
    FUNC1(CPU, cpu_state, sp);
    FUNC1(CPU, cpu_state, eip);
    FUNC1(CPU, cpu_state, gs);
    FUNC1(CPU, cpu_state, tls_ptr);

    FUNC1(CPU, cpu_state, eflags);
    FUNC1(CPU, cpu_state, of);
    FUNC1(CPU, cpu_state, cf);
    FUNC1(CPU, cpu_state, res);
    FUNC1(CPU, cpu_state, op1);
    FUNC1(CPU, cpu_state, op2);
    FUNC1(CPU, cpu_state, flags_res);
    FUNC1(CPU, cpu_state, df_offset);
    FUNC1(CPU, cpu_state, fsw);
    FUNC1(CPU, cpu_state, xmm);
    FUNC0(PF_RES);
    FUNC0(ZF_RES);
    FUNC0(SF_RES);
    FUNC0(AF_OPS);
    FUNC0(PF_FLAG);
    FUNC0(AF_FLAG);
    FUNC0(ZF_FLAG);
    FUNC0(SF_FLAG);
    FUNC0(DF_FLAG);

    FUNC1(LOCAL, jit_frame, bp);
    FUNC1(LOCAL, jit_frame, value);
    FUNC1(LOCAL, jit_frame, value_addr);
    FUNC1(LOCAL, jit_frame, last_block);
    FUNC1(LOCAL, jit_frame, ret_cache);
    FUNC1(CPU, cpu_state, segfault_addr);
    FUNC1(CPU, cpu_state, segfault_type);
    FUNC0(MEM_READ);
    FUNC0(MEM_WRITE);

    FUNC1(JIT_BLOCK, jit_block, code);

    FUNC1(TLB, tlb, entries);
    FUNC1(TLB, tlb, dirty_page);
    FUNC1(TLB_ENTRY, tlb_entry, page);
    FUNC1(TLB_ENTRY, tlb_entry, page_if_writable);
    FUNC1(TLB_ENTRY, tlb_entry, data_minus_addr);
}