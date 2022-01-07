; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_nested_svm_check_exception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_nested_svm_check_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.TYPE_13__, %struct.TYPE_14__, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i64, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i64 }

@NESTED_EXIT_DONE = common dso_local global i32 0, align 4
@SVM_EXIT_EXCP_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*, i32, i32, i32)* @nested_svm_check_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_svm_check_exception(%struct.vcpu_svm* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vcpu_svm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %12 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %11, i32 0, i32 1
  %13 = call i32 @is_guest_mode(%struct.TYPE_14__* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %99

16:                                               ; preds = %4
  %17 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %18 = call i32 @nested_svm_intercept(%struct.vcpu_svm* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @NESTED_EXIT_DONE, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %99

23:                                               ; preds = %16
  %24 = load i32, i32* @SVM_EXIT_EXCP_BASE, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add i32 %24, %25
  %27 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %28 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %27, i32 0, i32 2
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  store i32 %26, i32* %31, align 8
  %32 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %33 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %32, i32 0, i32 2
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %39 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %38, i32 0, i32 2
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  store i32 %37, i32* %42, align 8
  %43 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %44 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %23
  %51 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %52 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %58 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %57, i32 0, i32 2
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  store i32 %56, i32* %61, align 4
  br label %94

62:                                               ; preds = %23
  %63 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %64 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %62
  %71 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %72 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %78 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %77, i32 0, i32 2
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  store i32 %76, i32* %81, align 4
  br label %93

82:                                               ; preds = %62
  %83 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %84 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %89 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %88, i32 0, i32 2
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  store i32 %87, i32* %92, align 4
  br label %93

93:                                               ; preds = %82, %70
  br label %94

94:                                               ; preds = %93, %50
  %95 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %96 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %94, %22, %15
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @is_guest_mode(%struct.TYPE_14__*) #1

declare dso_local i32 @nested_svm_intercept(%struct.vcpu_svm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
