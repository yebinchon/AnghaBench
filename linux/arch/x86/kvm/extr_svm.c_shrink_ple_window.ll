; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_shrink_ple_window.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_shrink_ple_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_svm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.vmcb_control_area }
%struct.vmcb_control_area = type { i32 }

@pause_filter_count = common dso_local global i32 0, align 4
@pause_filter_count_shrink = common dso_local global i32 0, align 4
@VMCB_INTERCEPTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @shrink_ple_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shrink_ple_window(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca %struct.vmcb_control_area*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %7 = call %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu* %6)
  store %struct.vcpu_svm* %7, %struct.vcpu_svm** %3, align 8
  %8 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %9 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.vmcb_control_area* %11, %struct.vmcb_control_area** %4, align 8
  %12 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %4, align 8
  %13 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @pause_filter_count, align 4
  %17 = load i32, i32* @pause_filter_count_shrink, align 4
  %18 = load i32, i32* @pause_filter_count, align 4
  %19 = call i32 @__shrink_ple_window(i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %4, align 8
  %21 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %4, align 8
  %23 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %1
  %28 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %29 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* @VMCB_INTERCEPTS, align 4
  %32 = call i32 @mark_dirty(%struct.TYPE_2__* %30, i32 %31)
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %34 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.vmcb_control_area*, %struct.vmcb_control_area** %4, align 8
  %37 = getelementptr inbounds %struct.vmcb_control_area, %struct.vmcb_control_area* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @trace_kvm_ple_window_update(i32 %35, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %27, %1
  ret void
}

declare dso_local %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu*) #1

declare dso_local i32 @__shrink_ple_window(i32, i32, i32, i32) #1

declare dso_local i32 @mark_dirty(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @trace_kvm_ple_window_update(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
