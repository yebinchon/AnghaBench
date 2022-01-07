; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_io_interception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_io_interception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.kvm_vcpu, %struct.TYPE_6__*, i32 }
%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@SVM_IOIO_STR_MASK = common dso_local global i32 0, align 4
@SVM_IOIO_TYPE_MASK = common dso_local global i32 0, align 4
@SVM_IOIO_SIZE_MASK = common dso_local global i32 0, align 4
@SVM_IOIO_SIZE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @io_interception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_interception(%struct.vcpu_svm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %3, align 8
  %10 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %11 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %10, i32 0, i32 0
  store %struct.kvm_vcpu* %11, %struct.kvm_vcpu** %4, align 8
  %12 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %13 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %19 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @SVM_IOIO_STR_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SVM_IOIO_TYPE_MASK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %1
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %38 = call i32 @kvm_emulate_instruction(%struct.kvm_vcpu* %37, i32 0)
  store i32 %38, i32* %2, align 4
  br label %61

39:                                               ; preds = %1
  %40 = load i32, i32* %5, align 4
  %41 = ashr i32 %40, 16
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @SVM_IOIO_SIZE_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @SVM_IOIO_SIZE_SHIFT, align 4
  %46 = ashr i32 %44, %45
  store i32 %46, i32* %6, align 4
  %47 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %48 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %54 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %56 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %55, i32 0, i32 0
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @kvm_fast_pio(%struct.kvm_vcpu* %56, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %39, %36
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @kvm_emulate_instruction(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_fast_pio(%struct.kvm_vcpu*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
