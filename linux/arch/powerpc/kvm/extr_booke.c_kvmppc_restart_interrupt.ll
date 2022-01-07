; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvmppc_restart_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvmppc_restart_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pt_regs = type { i32 }

@SPRN_DBSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32)* @kvmppc_restart_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_restart_interrupt(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_regs, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %30 [
    i32 131, label %7
    i32 133, label %10
    i32 130, label %13
    i32 129, label %14
    i32 128, label %17
    i32 135, label %20
    i32 134, label %23
  ]

7:                                                ; preds = %2
  %8 = call i32 @kvmppc_fill_pt_regs(%struct.pt_regs* %5)
  %9 = call i32 @do_IRQ(%struct.pt_regs* %5)
  br label %30

10:                                               ; preds = %2
  %11 = call i32 @kvmppc_fill_pt_regs(%struct.pt_regs* %5)
  %12 = call i32 @timer_interrupt(%struct.pt_regs* %5)
  br label %30

13:                                               ; preds = %2
  br label %30

14:                                               ; preds = %2
  %15 = call i32 @kvmppc_fill_pt_regs(%struct.pt_regs* %5)
  %16 = call i32 @performance_monitor_exception(%struct.pt_regs* %5)
  br label %30

17:                                               ; preds = %2
  %18 = call i32 @kvmppc_fill_pt_regs(%struct.pt_regs* %5)
  %19 = call i32 @unknown_exception(%struct.pt_regs* %5)
  br label %30

20:                                               ; preds = %2
  %21 = call i32 @kvmppc_fill_pt_regs(%struct.pt_regs* %5)
  %22 = call i32 @unknown_exception(%struct.pt_regs* %5)
  br label %30

23:                                               ; preds = %2
  %24 = load i32, i32* @SPRN_DBSR, align 4
  %25 = call i32 @mfspr(i32 %24)
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %27 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = call i32 (...) @kvmppc_clear_dbsr()
  br label %30

30:                                               ; preds = %2, %23, %20, %17, %14, %13, %10, %7
  ret void
}

declare dso_local i32 @kvmppc_fill_pt_regs(%struct.pt_regs*) #1

declare dso_local i32 @do_IRQ(%struct.pt_regs*) #1

declare dso_local i32 @timer_interrupt(%struct.pt_regs*) #1

declare dso_local i32 @performance_monitor_exception(%struct.pt_regs*) #1

declare dso_local i32 @unknown_exception(%struct.pt_regs*) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @kvmppc_clear_dbsr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
