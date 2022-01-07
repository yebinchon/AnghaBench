; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_cr8_write_interception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_cr8_write_interception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.kvm_run* }
%struct.kvm_run = type { i32 }

@KVM_EXIT_SET_TPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @cr8_write_interception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cr8_write_interception(%struct.vcpu_svm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca %struct.kvm_run*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %3, align 8
  %7 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %8 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.kvm_run*, %struct.kvm_run** %9, align 8
  store %struct.kvm_run* %10, %struct.kvm_run** %4, align 8
  %11 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %12 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %11, i32 0, i32 0
  %13 = call i64 @kvm_get_cr8(%struct.TYPE_3__* %12)
  store i64 %13, i64* %6, align 8
  %14 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %15 = call i32 @cr_interception(%struct.vcpu_svm* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %17 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %16, i32 0, i32 0
  %18 = call i64 @lapic_in_kernel(%struct.TYPE_3__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %34

22:                                               ; preds = %1
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %25 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %24, i32 0, i32 0
  %26 = call i64 @kvm_get_cr8(%struct.TYPE_3__* %25)
  %27 = icmp sle i64 %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %34

30:                                               ; preds = %22
  %31 = load i32, i32* @KVM_EXIT_SET_TPR, align 4
  %32 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %33 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %28, %20
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @kvm_get_cr8(%struct.TYPE_3__*) #1

declare dso_local i32 @cr_interception(%struct.vcpu_svm*) #1

declare dso_local i64 @lapic_in_kernel(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
