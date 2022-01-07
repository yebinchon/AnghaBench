; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_inject_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_inject_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.vmcb_control_area }
%struct.vmcb_control_area = type { i32, i32 }

@V_INTR_PRIO_MASK = common dso_local global i32 0, align 4
@V_IRQ_MASK = common dso_local global i32 0, align 4
@V_INTR_PRIO_SHIFT = common dso_local global i32 0, align 4
@VMCB_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_svm*, i32)* @svm_inject_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svm_inject_irq(%struct.vcpu_svm* %0, i32 %1) #0 {
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmcb_control_area*, align 8
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %7 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.vmcb_control_area* %9, %struct.vmcb_control_area** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %5, align 8
  %12 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @V_INTR_PRIO_MASK, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %5, align 8
  %16 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* @V_IRQ_MASK, align 4
  %20 = load i32, i32* @V_INTR_PRIO_SHIFT, align 4
  %21 = shl i32 15, %20
  %22 = or i32 %19, %21
  %23 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %5, align 8
  %24 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %28 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* @VMCB_INTR, align 4
  %31 = call i32 @mark_dirty(%struct.TYPE_2__* %29, i32 %30)
  ret void
}

declare dso_local i32 @mark_dirty(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
