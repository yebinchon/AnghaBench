; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_traps.c_hv_nmi_check_nonrecoverable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_traps.c_hv_nmi_check_nonrecoverable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i32 }

@MSR_HV = common dso_local global i32 0, align 4
@MSR_PR = common dso_local global i32 0, align 4
@MSR_RI = common dso_local global i32 0, align 4
@_stext = common dso_local global i64 0, align 8
@end_real_trampolines = common dso_local global i64 0, align 8
@end_virt_trampolines = common dso_local global i64 0, align 8
@start_real_trampolines = common dso_local global i64 0, align 8
@start_virt_trampolines = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hv_nmi_check_nonrecoverable(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
