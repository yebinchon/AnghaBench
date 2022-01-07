; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_fpu.c_fill_sigfpe_signo.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_fpu.c_fill_sigfpe_signo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FPCSR_mskDBZT = common dso_local global i32 0, align 4
@FPCSR_mskIEXT = common dso_local global i32 0, align 4
@FPCSR_mskIVOT = common dso_local global i32 0, align 4
@FPCSR_mskOVFT = common dso_local global i32 0, align 4
@FPCSR_mskUDFT = common dso_local global i32 0, align 4
@FPE_FLTDIV = common dso_local global i32 0, align 4
@FPE_FLTINV = common dso_local global i32 0, align 4
@FPE_FLTOVF = common dso_local global i32 0, align 4
@FPE_FLTRES = common dso_local global i32 0, align 4
@FPE_FLTUND = common dso_local global i32 0, align 4

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
