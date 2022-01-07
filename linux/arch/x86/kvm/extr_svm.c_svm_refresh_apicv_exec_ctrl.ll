; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_refresh_apicv_exec_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_refresh_apicv_exec_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_svm = type { %struct.vmcb* }
%struct.vmcb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AVIC_ENABLE_MASK = common dso_local global i32 0, align 4
@VMCB_AVIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @svm_refresh_apicv_exec_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svm_refresh_apicv_exec_ctrl(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca %struct.vmcb*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = call %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu* %5)
  store %struct.vcpu_svm* %6, %struct.vcpu_svm** %3, align 8
  %7 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %8 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %7, i32 0, i32 0
  %9 = load %struct.vmcb*, %struct.vmcb** %8, align 8
  store %struct.vmcb* %9, %struct.vmcb** %4, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %11 = call i64 @kvm_vcpu_apicv_active(%struct.kvm_vcpu* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load i32, i32* @AVIC_ENABLE_MASK, align 4
  %15 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %16 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %14
  store i32 %19, i32* %17, align 4
  br label %28

20:                                               ; preds = %1
  %21 = load i32, i32* @AVIC_ENABLE_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %24 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %22
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %20, %13
  %29 = load %struct.vmcb*, %struct.vmcb** %4, align 8
  %30 = load i32, i32* @VMCB_AVIC, align 4
  %31 = call i32 @mark_dirty(%struct.vmcb* %29, i32 %30)
  ret void
}

declare dso_local %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_vcpu_apicv_active(%struct.kvm_vcpu*) #1

declare dso_local i32 @mark_dirty(%struct.vmcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
