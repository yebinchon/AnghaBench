; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_queue_exception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_queue_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.vcpu_svm = type { i64, %struct.TYPE_12__*, i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@BP_VECTOR = common dso_local global i32 0, align 4
@nrips = common dso_local global i32 0, align 4
@SVM_EVTINJ_VALID = common dso_local global i32 0, align 4
@SVM_EVTINJ_VALID_ERR = common dso_local global i32 0, align 4
@SVM_EVTINJ_TYPE_EXEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @svm_queue_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svm_queue_exception(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %11 = call %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu* %10)
  store %struct.vcpu_svm* %11, %struct.vcpu_svm** %3, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %28 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %1
  %35 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @nested_svm_check_exception(%struct.vcpu_svm* %35, i32 %36, i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %103

42:                                               ; preds = %34, %1
  %43 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %44 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %43, i32 0, i32 3
  %45 = call i32 @kvm_deliver_exception_payload(i32* %44)
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @BP_VECTOR, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %78

49:                                               ; preds = %42
  %50 = load i32, i32* @nrips, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %78, label %52

52:                                               ; preds = %49
  %53 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %54 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %53, i32 0, i32 3
  %55 = call i64 @kvm_rip_read(i32* %54)
  store i64 %55, i64* %9, align 8
  %56 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %57 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %56, i32 0, i32 3
  %58 = call i32 @skip_emulated_instruction(i32* %57)
  %59 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %60 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %59, i32 0, i32 3
  %61 = call i64 @kvm_rip_read(i32* %60)
  store i64 %61, i64* %8, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %64 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %63, i32 0, i32 1
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %62, %69
  %71 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %72 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %71, i32 0, i32 2
  store i64 %70, i64* %72, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* %9, align 8
  %75 = sub i64 %73, %74
  %76 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %77 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %52, %49, %42
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @SVM_EVTINJ_VALID, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* @SVM_EVTINJ_VALID_ERR, align 4
  br label %87

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %86, %84
  %88 = phi i32 [ %85, %84 ], [ 0, %86 ]
  %89 = or i32 %81, %88
  %90 = load i32, i32* @SVM_EVTINJ_TYPE_EXEPT, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %93 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %92, i32 0, i32 1
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  store i32 %91, i32* %96, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %99 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %98, i32 0, i32 1
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  store i32 %97, i32* %102, align 4
  br label %103

103:                                              ; preds = %87, %41
  ret void
}

declare dso_local %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu*) #1

declare dso_local i64 @nested_svm_check_exception(%struct.vcpu_svm*, i32, i32, i32) #1

declare dso_local i32 @kvm_deliver_exception_payload(i32*) #1

declare dso_local i64 @kvm_rip_read(i32*) #1

declare dso_local i32 @skip_emulated_instruction(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
