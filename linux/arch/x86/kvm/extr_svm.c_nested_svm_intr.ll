; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_nested_svm_intr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_nested_svm_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.TYPE_11__*, %struct.TYPE_9__, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@HF_VINTR_MASK = common dso_local global i32 0, align 4
@HF_HIF_MASK = common dso_local global i32 0, align 4
@SVM_EXIT_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @nested_svm_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_svm_intr(%struct.vcpu_svm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vcpu_svm*, align 8
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %3, align 8
  %4 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %5 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %4, i32 0, i32 2
  %6 = call i32 @is_guest_mode(%struct.TYPE_12__* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %71

9:                                                ; preds = %1
  %10 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %11 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @HF_VINTR_MASK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %71

19:                                               ; preds = %9
  %20 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %21 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @HF_HIF_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %71

29:                                               ; preds = %19
  %30 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %31 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %71

36:                                               ; preds = %29
  %37 = load i32, i32* @SVM_EXIT_INTR, align 4
  %38 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %39 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %38, i32 0, i32 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  store i32 %37, i32* %42, align 8
  %43 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %44 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %43, i32 0, i32 0
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %49 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %48, i32 0, i32 0
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %54 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = and i64 %56, 1
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %36
  %60 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %61 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %64 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %63, i32 0, i32 0
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @trace_kvm_nested_intr_vmexit(i32 %68)
  store i32 0, i32* %2, align 4
  br label %71

70:                                               ; preds = %36
  store i32 1, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %59, %35, %28, %18, %8
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @is_guest_mode(%struct.TYPE_12__*) #1

declare dso_local i32 @trace_kvm_nested_intr_vmexit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
