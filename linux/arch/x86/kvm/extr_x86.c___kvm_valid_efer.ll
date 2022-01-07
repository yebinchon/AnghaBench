; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c___kvm_valid_efer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c___kvm_valid_efer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@EFER_FFXSR = common dso_local global i32 0, align 4
@X86_FEATURE_FXSR_OPT = common dso_local global i32 0, align 4
@EFER_SVME = common dso_local global i32 0, align 4
@X86_FEATURE_SVM = common dso_local global i32 0, align 4
@EFER_LME = common dso_local global i32 0, align 4
@EFER_LMA = common dso_local global i32 0, align 4
@X86_FEATURE_LM = common dso_local global i32 0, align 4
@EFER_NX = common dso_local global i32 0, align 4
@X86_FEATURE_NX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32)* @__kvm_valid_efer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__kvm_valid_efer(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @EFER_FFXSR, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %12 = load i32, i32* @X86_FEATURE_FXSR_OPT, align 4
  %13 = call i32 @guest_cpuid_has(%struct.kvm_vcpu* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %52

16:                                               ; preds = %10, %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @EFER_SVME, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %23 = load i32, i32* @X86_FEATURE_SVM, align 4
  %24 = call i32 @guest_cpuid_has(%struct.kvm_vcpu* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %52

27:                                               ; preds = %21, %16
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @EFER_LME, align 4
  %30 = load i32, i32* @EFER_LMA, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %36 = load i32, i32* @X86_FEATURE_LM, align 4
  %37 = call i32 @guest_cpuid_has(%struct.kvm_vcpu* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %52

40:                                               ; preds = %34, %27
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @EFER_NX, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %47 = load i32, i32* @X86_FEATURE_NX, align 4
  %48 = call i32 @guest_cpuid_has(%struct.kvm_vcpu* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %52

51:                                               ; preds = %45, %40
  store i32 1, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %50, %39, %26, %15
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @guest_cpuid_has(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
