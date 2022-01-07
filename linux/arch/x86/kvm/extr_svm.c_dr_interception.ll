; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_dr_interception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_dr_interception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.TYPE_13__, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }

@KVM_DEBUGREG_WONT_EXIT = common dso_local global i32 0, align 4
@X86_FEATURE_DECODEASSISTS = common dso_local global i32 0, align 4
@SVM_EXITINFO_REG_MASK = common dso_local global i32 0, align 4
@SVM_EXIT_READ_DR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @dr_interception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_interception(%struct.vcpu_svm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %3, align 8
  %7 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %8 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %14 = call i32 @clr_dr_intercepts(%struct.vcpu_svm* %13)
  %15 = load i32, i32* @KVM_DEBUGREG_WONT_EXIT, align 4
  %16 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %17 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %15
  store i32 %21, i32* %19, align 8
  store i32 1, i32* %2, align 4
  br label %88

22:                                               ; preds = %1
  %23 = load i32, i32* @X86_FEATURE_DECODEASSISTS, align 4
  %24 = call i32 @boot_cpu_has(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %28 = call i32 @emulate_on_interception(%struct.vcpu_svm* %27)
  store i32 %28, i32* %2, align 4
  br label %88

29:                                               ; preds = %22
  %30 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %31 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %30, i32 0, i32 1
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SVM_EXITINFO_REG_MASK, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %4, align 4
  %38 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %39 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %38, i32 0, i32 1
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SVM_EXIT_READ_DR0, align 4
  %45 = sub nsw i32 %43, %44
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp sge i32 %46, 16
  br i1 %47, label %48, label %67

48:                                               ; preds = %29
  %49 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %50 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %49, i32 0, i32 0
  %51 = load i32, i32* %5, align 4
  %52 = sub nsw i32 %51, 16
  %53 = call i32 @kvm_require_dr(%struct.TYPE_13__* %50, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  store i32 1, i32* %2, align 4
  br label %88

56:                                               ; preds = %48
  %57 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %58 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %57, i32 0, i32 0
  %59 = load i32, i32* %4, align 4
  %60 = call i64 @kvm_register_read(%struct.TYPE_13__* %58, i32 %59)
  store i64 %60, i64* %6, align 8
  %61 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %62 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %61, i32 0, i32 0
  %63 = load i32, i32* %5, align 4
  %64 = sub nsw i32 %63, 16
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @kvm_set_dr(%struct.TYPE_13__* %62, i32 %64, i64 %65)
  br label %84

67:                                               ; preds = %29
  %68 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %69 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %68, i32 0, i32 0
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @kvm_require_dr(%struct.TYPE_13__* %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  store i32 1, i32* %2, align 4
  br label %88

74:                                               ; preds = %67
  %75 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %76 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %75, i32 0, i32 0
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @kvm_get_dr(%struct.TYPE_13__* %76, i32 %77, i64* %6)
  %79 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %80 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %79, i32 0, i32 0
  %81 = load i32, i32* %4, align 4
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @kvm_register_write(%struct.TYPE_13__* %80, i32 %81, i64 %82)
  br label %84

84:                                               ; preds = %74, %56
  %85 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %86 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %85, i32 0, i32 0
  %87 = call i32 @kvm_skip_emulated_instruction(%struct.TYPE_13__* %86)
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %84, %73, %55, %26, %12
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @clr_dr_intercepts(%struct.vcpu_svm*) #1

declare dso_local i32 @boot_cpu_has(i32) #1

declare dso_local i32 @emulate_on_interception(%struct.vcpu_svm*) #1

declare dso_local i32 @kvm_require_dr(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @kvm_register_read(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @kvm_set_dr(%struct.TYPE_13__*, i32, i64) #1

declare dso_local i32 @kvm_get_dr(%struct.TYPE_13__*, i32, i64*) #1

declare dso_local i32 @kvm_register_write(%struct.TYPE_13__*, i32, i64) #1

declare dso_local i32 @kvm_skip_emulated_instruction(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
