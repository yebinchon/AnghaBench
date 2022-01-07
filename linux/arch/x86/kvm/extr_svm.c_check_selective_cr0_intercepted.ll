; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_check_selective_cr0_intercepted.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_check_selective_cr0_intercepted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.TYPE_7__*, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i64 }

@INTERCEPT_SELECTIVE_CR0 = common dso_local global i64 0, align 8
@SVM_CR0_SELECTIVE_MASK = common dso_local global i64 0, align 8
@SVM_EXIT_CR0_SEL_WRITE = common dso_local global i32 0, align 4
@NESTED_EXIT_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*, i64)* @check_selective_cr0_intercepted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_selective_cr0_intercepted(%struct.vcpu_svm* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vcpu_svm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.vcpu_svm*, %struct.vcpu_svm** %4, align 8
  %10 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.vcpu_svm*, %struct.vcpu_svm** %4, align 8
  %15 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load %struct.vcpu_svm*, %struct.vcpu_svm** %4, align 8
  %19 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %18, i32 0, i32 1
  %20 = call i32 @is_guest_mode(%struct.TYPE_10__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @INTERCEPT_SELECTIVE_CR0, align 8
  %25 = shl i64 1, %24
  %26 = and i64 %23, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22, %2
  store i32 0, i32* %3, align 4
  br label %56

29:                                               ; preds = %22
  %30 = load i64, i64* @SVM_CR0_SELECTIVE_MASK, align 8
  %31 = xor i64 %30, -1
  %32 = load i64, i64* %6, align 8
  %33 = and i64 %32, %31
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* @SVM_CR0_SELECTIVE_MASK, align 8
  %35 = xor i64 %34, -1
  %36 = load i64, i64* %5, align 8
  %37 = and i64 %36, %35
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %5, align 8
  %40 = xor i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %29
  %43 = load i32, i32* @SVM_EXIT_CR0_SEL_WRITE, align 4
  %44 = load %struct.vcpu_svm*, %struct.vcpu_svm** %4, align 8
  %45 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 %43, i32* %48, align 4
  %49 = load %struct.vcpu_svm*, %struct.vcpu_svm** %4, align 8
  %50 = call i64 @nested_svm_exit_handled(%struct.vcpu_svm* %49)
  %51 = load i64, i64* @NESTED_EXIT_DONE, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %42, %29
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %28
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @is_guest_mode(%struct.TYPE_10__*) #1

declare dso_local i64 @nested_svm_exit_handled(%struct.vcpu_svm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
