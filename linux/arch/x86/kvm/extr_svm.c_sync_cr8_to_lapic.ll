; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_sync_cr8_to_lapic.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_sync_cr8_to_lapic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_svm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@INTERCEPT_CR8_WRITE = common dso_local global i32 0, align 4
@V_TPR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @sync_cr8_to_lapic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_cr8_to_lapic(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = call %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu* %5)
  store %struct.vcpu_svm* %6, %struct.vcpu_svm** %3, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %8 = call i64 @svm_nested_virtualize_tpr(%struct.kvm_vcpu* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %28

11:                                               ; preds = %1
  %12 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %13 = load i32, i32* @INTERCEPT_CR8_WRITE, align 4
  %14 = call i32 @is_cr_intercept(%struct.vcpu_svm* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %11
  %17 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %18 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @V_TPR_MASK, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %4, align 4
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @kvm_set_cr8(%struct.kvm_vcpu* %25, i32 %26)
  br label %28

28:                                               ; preds = %10, %16, %11
  ret void
}

declare dso_local %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu*) #1

declare dso_local i64 @svm_nested_virtualize_tpr(%struct.kvm_vcpu*) #1

declare dso_local i32 @is_cr_intercept(%struct.vcpu_svm*, i32) #1

declare dso_local i32 @kvm_set_cr8(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
