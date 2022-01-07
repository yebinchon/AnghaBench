; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_nested_svm_vmrun_msrpm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_nested_svm_vmrun_msrpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { i32*, %struct.TYPE_6__, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i64, i32*, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@INTERCEPT_MSR_PROT = common dso_local global i64 0, align 8
@MSRPM_OFFSETS = common dso_local global i32 0, align 4
@msrpm_offsets = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @nested_svm_vmrun_msrpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_svm_vmrun_msrpm(%struct.vcpu_svm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %3, align 8
  %8 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %9 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @INTERCEPT_MSR_PROT, align 8
  %13 = shl i64 1, %12
  %14 = and i64 %11, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %82

17:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %67, %17
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @MSRPM_OFFSETS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %70

22:                                               ; preds = %18
  %23 = load i32*, i32** @msrpm_offsets, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %70

30:                                               ; preds = %22
  %31 = load i32*, i32** @msrpm_offsets, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %37 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = mul nsw i32 %40, 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %39, %42
  store i64 %43, i64* %7, align 8
  %44 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %45 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %44, i32 0, i32 3
  %46 = load i64, i64* %7, align 8
  %47 = call i64 @kvm_vcpu_read_guest(i32* %45, i64 %46, i32* %5, i32 4)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %82

50:                                               ; preds = %30
  %51 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %52 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %61 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %59, i32* %66, align 4
  br label %67

67:                                               ; preds = %50
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %18

70:                                               ; preds = %29, %18
  %71 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %72 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @__pa(i32* %74)
  %76 = call i32 @__sme_set(i32 %75)
  %77 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %78 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %77, i32 0, i32 2
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i32 %76, i32* %81, align 4
  store i32 1, i32* %2, align 4
  br label %82

82:                                               ; preds = %70, %49, %16
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i64 @kvm_vcpu_read_guest(i32*, i64, i32*, i32) #1

declare dso_local i32 @__sme_set(i32) #1

declare dso_local i32 @__pa(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
