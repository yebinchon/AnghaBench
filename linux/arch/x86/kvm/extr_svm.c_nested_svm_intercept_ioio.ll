; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_nested_svm_intercept_ioio.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_nested_svm_intercept_ioio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@INTERCEPT_IOIO_PROT = common dso_local global i64 0, align 8
@NESTED_EXIT_HOST = common dso_local global i32 0, align 4
@SVM_IOIO_SIZE_MASK = common dso_local global i32 0, align 4
@SVM_IOIO_SIZE_SHIFT = common dso_local global i32 0, align 4
@NESTED_EXIT_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @nested_svm_intercept_ioio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_svm_intercept_ioio(%struct.vcpu_svm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %3, align 8
  %11 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %12 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @INTERCEPT_IOIO_PROT, align 8
  %16 = shl i64 1, %15
  %17 = and i64 %14, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @NESTED_EXIT_HOST, align 4
  store i32 %20, i32* %2, align 4
  br label %79

21:                                               ; preds = %1
  %22 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %23 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 16
  store i32 %28, i32* %4, align 4
  %29 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %30 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SVM_IOIO_SIZE_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @SVM_IOIO_SIZE_SHIFT, align 4
  %38 = lshr i32 %36, %37
  store i32 %38, i32* %5, align 4
  %39 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %40 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = udiv i32 %43, 8
  %45 = zext i32 %44 to i64
  %46 = add nsw i64 %42, %45
  store i64 %46, i64* %10, align 8
  %47 = load i32, i32* %4, align 4
  %48 = urem i32 %47, 8
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %5, align 4
  %51 = add i32 %49, %50
  %52 = icmp ugt i32 %51, 8
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 2, i32 1
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %5, align 4
  %56 = sub i32 4, %55
  %57 = ashr i32 15, %56
  %58 = load i32, i32* %9, align 4
  %59 = shl i32 %57, %58
  store i32 %59, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %60 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %61 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %60, i32 0, i32 0
  %62 = load i64, i64* %10, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i64 @kvm_vcpu_read_guest(i32* %61, i64 %62, i32* %7, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %21
  %67 = load i32, i32* @NESTED_EXIT_DONE, align 4
  store i32 %67, i32* %2, align 4
  br label %79

68:                                               ; preds = %21
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @NESTED_EXIT_DONE, align 4
  br label %77

75:                                               ; preds = %68
  %76 = load i32, i32* @NESTED_EXIT_HOST, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %77, %66, %19
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i64 @kvm_vcpu_read_guest(i32*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
