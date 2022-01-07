; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_cancel_injection.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_cancel_injection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_svm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.vmcb_control_area }
%struct.vmcb_control_area = type { i64, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @svm_cancel_injection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svm_cancel_injection(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca %struct.vmcb_control_area*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = call %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu* %5)
  store %struct.vcpu_svm* %6, %struct.vcpu_svm** %3, align 8
  %7 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %8 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.vmcb_control_area* %10, %struct.vmcb_control_area** %4, align 8
  %11 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %4, align 8
  %12 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %4, align 8
  %15 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %14, i32 0, i32 3
  store i64 %13, i64* %15, align 8
  %16 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %4, align 8
  %17 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %4, align 8
  %20 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %4, align 8
  %22 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %24 = call i32 @svm_complete_interrupts(%struct.vcpu_svm* %23)
  ret void
}

declare dso_local %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu*) #1

declare dso_local i32 @svm_complete_interrupts(%struct.vcpu_svm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
