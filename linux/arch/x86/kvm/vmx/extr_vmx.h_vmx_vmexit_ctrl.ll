; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.h_vmx_vmexit_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.h_vmx_vmexit_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@vmcs_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@pt_mode = common dso_local global i64 0, align 8
@PT_MODE_SYSTEM = common dso_local global i64 0, align 8
@VM_EXIT_PT_CONCEAL_PIP = common dso_local global i32 0, align 4
@VM_EXIT_CLEAR_IA32_RTIT_CTL = common dso_local global i32 0, align 4
@VM_EXIT_LOAD_IA32_PERF_GLOBAL_CTRL = common dso_local global i32 0, align 4
@VM_EXIT_LOAD_IA32_EFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vmx_vmexit_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_vmexit_ctrl() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmcs_config, i32 0, i32 0), align 4
  store i32 %2, i32* %1, align 4
  %3 = load i64, i64* @pt_mode, align 8
  %4 = load i64, i64* @PT_MODE_SYSTEM, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %0
  %7 = load i32, i32* @VM_EXIT_PT_CONCEAL_PIP, align 4
  %8 = load i32, i32* @VM_EXIT_CLEAR_IA32_RTIT_CTL, align 4
  %9 = or i32 %7, %8
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %1, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %1, align 4
  br label %13

13:                                               ; preds = %6, %0
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @VM_EXIT_LOAD_IA32_PERF_GLOBAL_CTRL, align 4
  %16 = load i32, i32* @VM_EXIT_LOAD_IA32_EFER, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = and i32 %14, %18
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
