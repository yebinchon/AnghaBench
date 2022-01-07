
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int unique; int usp; } ;
struct thread_info {TYPE_1__ pcb; } ;
struct switch_stack {int r15; int r14; int r13; int r12; int r11; int r10; int r9; } ;
struct pt_regs {int pc; int gp; int r28; int r27; int r26; int r25; int r24; int r23; int r22; int r21; int r20; int r19; int r18; int r17; int r16; int r8; int r7; int r6; int r5; int r4; int r3; int r2; int r1; int r0; } ;
typedef int elf_greg_t ;


 struct thread_info* current_thread_info () ;
 int rdusp () ;

void
dump_elf_thread(elf_greg_t *dest, struct pt_regs *pt, struct thread_info *ti)
{

 struct switch_stack * sw = ((struct switch_stack *) pt) - 1;

 dest[ 0] = pt->r0;
 dest[ 1] = pt->r1;
 dest[ 2] = pt->r2;
 dest[ 3] = pt->r3;
 dest[ 4] = pt->r4;
 dest[ 5] = pt->r5;
 dest[ 6] = pt->r6;
 dest[ 7] = pt->r7;
 dest[ 8] = pt->r8;
 dest[ 9] = sw->r9;
 dest[10] = sw->r10;
 dest[11] = sw->r11;
 dest[12] = sw->r12;
 dest[13] = sw->r13;
 dest[14] = sw->r14;
 dest[15] = sw->r15;
 dest[16] = pt->r16;
 dest[17] = pt->r17;
 dest[18] = pt->r18;
 dest[19] = pt->r19;
 dest[20] = pt->r20;
 dest[21] = pt->r21;
 dest[22] = pt->r22;
 dest[23] = pt->r23;
 dest[24] = pt->r24;
 dest[25] = pt->r25;
 dest[26] = pt->r26;
 dest[27] = pt->r27;
 dest[28] = pt->r28;
 dest[29] = pt->gp;
 dest[30] = ti == current_thread_info() ? rdusp() : ti->pcb.usp;
 dest[31] = pt->pc;




 dest[32] = ti->pcb.unique;
}
