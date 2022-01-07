; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_pause_interception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_pause_interception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.kvm_vcpu }
%struct.kvm_vcpu = type { i32 }

@pause_filter_thresh = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @pause_interception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pause_interception(%struct.vcpu_svm* %0) #0 {
  %2 = alloca %struct.vcpu_svm*, align 8
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %2, align 8
  %5 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %6 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %5, i32 0, i32 0
  store %struct.kvm_vcpu* %6, %struct.kvm_vcpu** %3, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = call i64 @svm_get_cpl(%struct.kvm_vcpu* %7)
  %9 = icmp eq i64 %8, 0
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load i64, i64* @pause_filter_thresh, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = call i32 @grow_ple_window(%struct.kvm_vcpu* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @kvm_vcpu_on_spin(%struct.kvm_vcpu* %17, i32 %18)
  ret i32 1
}

declare dso_local i64 @svm_get_cpl(%struct.kvm_vcpu*) #1

declare dso_local i32 @grow_ple_window(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_vcpu_on_spin(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
