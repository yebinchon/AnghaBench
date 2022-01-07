
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int syscalls ;
struct user_regs_struct {int dummy; } ;
struct user_fpxregs_struct {int dummy; } ;
struct user_fpregs_struct {int dummy; } ;
struct _fpstate {int dummy; } ;


 int CS ;
 int DEFINE (int ,int) ;
 int DEFINE_LONGS (int ,int) ;
 int DS ;
 int EAX ;
 int EBP ;
 int EBX ;
 int ECX ;
 int EDI ;
 int EDX ;
 int EFL ;
 int EFLAGS ;
 int EIP ;
 int ES ;
 int ESI ;
 int FS ;
 int GS ;
 int HOST_AX ;
 int HOST_BP ;
 int HOST_BX ;
 int HOST_CS ;
 int HOST_CX ;
 int HOST_DI ;
 int HOST_DS ;
 int HOST_DX ;
 int HOST_EFLAGS ;
 int HOST_ES ;
 int HOST_FPX_SIZE ;
 int HOST_FP_SIZE ;
 int HOST_FS ;
 int HOST_GS ;
 int HOST_IP ;
 int HOST_ORIG_AX ;
 int HOST_R10 ;
 int HOST_R11 ;
 int HOST_R12 ;
 int HOST_R13 ;
 int HOST_R14 ;
 int HOST_R15 ;
 int HOST_R8 ;
 int HOST_R9 ;
 int HOST_SI ;
 int HOST_SP ;
 int HOST_SS ;
 int NR_syscalls ;
 int ORIG_EAX ;
 int ORIG_RAX ;
 int POLLIN ;
 int POLLOUT ;
 int POLLPRI ;
 int PROT_EXEC ;
 int PROT_READ ;
 int PROT_WRITE ;
 int R10 ;
 int R11 ;
 int R12 ;
 int R13 ;
 int R14 ;
 int R15 ;
 int R8 ;
 int R9 ;
 int RAX ;
 int RBP ;
 int RBX ;
 int RCX ;
 int RDI ;
 int RDX ;
 int RIP ;
 int RSI ;
 int RSP ;
 int SS ;
 int UESP ;
 int UM_FRAME_SIZE ;
 int UM_POLLIN ;
 int UM_POLLOUT ;
 int UM_POLLPRI ;
 int UM_PROT_EXEC ;
 int UM_PROT_READ ;
 int UM_PROT_WRITE ;
 int __NR_syscall_max ;

void foo(void)
{
 DEFINE(HOST_FP_SIZE, sizeof(struct _fpstate) / sizeof(unsigned long));

 DEFINE_LONGS(HOST_BX, RBX);
 DEFINE_LONGS(HOST_CX, RCX);
 DEFINE_LONGS(HOST_DI, RDI);
 DEFINE_LONGS(HOST_SI, RSI);
 DEFINE_LONGS(HOST_DX, RDX);
 DEFINE_LONGS(HOST_BP, RBP);
 DEFINE_LONGS(HOST_AX, RAX);
 DEFINE_LONGS(HOST_R8, R8);
 DEFINE_LONGS(HOST_R9, R9);
 DEFINE_LONGS(HOST_R10, R10);
 DEFINE_LONGS(HOST_R11, R11);
 DEFINE_LONGS(HOST_R12, R12);
 DEFINE_LONGS(HOST_R13, R13);
 DEFINE_LONGS(HOST_R14, R14);
 DEFINE_LONGS(HOST_R15, R15);
 DEFINE_LONGS(HOST_ORIG_AX, ORIG_RAX);
 DEFINE_LONGS(HOST_CS, CS);
 DEFINE_LONGS(HOST_SS, SS);
 DEFINE_LONGS(HOST_EFLAGS, EFLAGS);







 DEFINE_LONGS(HOST_IP, RIP);
 DEFINE_LONGS(HOST_SP, RSP);


 DEFINE(UM_FRAME_SIZE, sizeof(struct user_regs_struct));
 DEFINE(UM_POLLIN, POLLIN);
 DEFINE(UM_POLLPRI, POLLPRI);
 DEFINE(UM_POLLOUT, POLLOUT);

 DEFINE(UM_PROT_READ, PROT_READ);
 DEFINE(UM_PROT_WRITE, PROT_WRITE);
 DEFINE(UM_PROT_EXEC, PROT_EXEC);

 DEFINE(__NR_syscall_max, sizeof(syscalls) - 1);
 DEFINE(NR_syscalls, sizeof(syscalls));
}
