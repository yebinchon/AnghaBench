; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_valid_cr4.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_valid_cr4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@CR4_RESERVED_BITS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@X86_FEATURE_XSAVE = common dso_local global i32 0, align 4
@X86_CR4_OSXSAVE = common dso_local global i64 0, align 8
@X86_FEATURE_SMEP = common dso_local global i32 0, align 4
@X86_CR4_SMEP = common dso_local global i64 0, align 8
@X86_FEATURE_SMAP = common dso_local global i32 0, align 4
@X86_CR4_SMAP = common dso_local global i64 0, align 8
@X86_FEATURE_FSGSBASE = common dso_local global i32 0, align 4
@X86_CR4_FSGSBASE = common dso_local global i64 0, align 8
@X86_FEATURE_PKU = common dso_local global i32 0, align 4
@X86_CR4_PKE = common dso_local global i64 0, align 8
@X86_FEATURE_LA57 = common dso_local global i32 0, align 4
@X86_CR4_LA57 = common dso_local global i64 0, align 8
@X86_FEATURE_UMIP = common dso_local global i32 0, align 4
@X86_CR4_UMIP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i64)* @kvm_valid_cr4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_valid_cr4(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CR4_RESERVED_BITS, align 8
  %8 = and i64 %6, %7
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %105

13:                                               ; preds = %2
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %15 = load i32, i32* @X86_FEATURE_XSAVE, align 4
  %16 = call i32 @guest_cpuid_has(%struct.kvm_vcpu* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %13
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @X86_CR4_OSXSAVE, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %105

26:                                               ; preds = %18, %13
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %28 = load i32, i32* @X86_FEATURE_SMEP, align 4
  %29 = call i32 @guest_cpuid_has(%struct.kvm_vcpu* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %26
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @X86_CR4_SMEP, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %105

39:                                               ; preds = %31, %26
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %41 = load i32, i32* @X86_FEATURE_SMAP, align 4
  %42 = call i32 @guest_cpuid_has(%struct.kvm_vcpu* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %39
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @X86_CR4_SMAP, align 8
  %47 = and i64 %45, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %105

52:                                               ; preds = %44, %39
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %54 = load i32, i32* @X86_FEATURE_FSGSBASE, align 4
  %55 = call i32 @guest_cpuid_has(%struct.kvm_vcpu* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %52
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @X86_CR4_FSGSBASE, align 8
  %60 = and i64 %58, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %105

65:                                               ; preds = %57, %52
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %67 = load i32, i32* @X86_FEATURE_PKU, align 4
  %68 = call i32 @guest_cpuid_has(%struct.kvm_vcpu* %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %65
  %71 = load i64, i64* %5, align 8
  %72 = load i64, i64* @X86_CR4_PKE, align 8
  %73 = and i64 %71, %72
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %105

78:                                               ; preds = %70, %65
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %80 = load i32, i32* @X86_FEATURE_LA57, align 4
  %81 = call i32 @guest_cpuid_has(%struct.kvm_vcpu* %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %78
  %84 = load i64, i64* %5, align 8
  %85 = load i64, i64* @X86_CR4_LA57, align 8
  %86 = and i64 %84, %85
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %105

91:                                               ; preds = %83, %78
  %92 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %93 = load i32, i32* @X86_FEATURE_UMIP, align 4
  %94 = call i32 @guest_cpuid_has(%struct.kvm_vcpu* %92, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %91
  %97 = load i64, i64* %5, align 8
  %98 = load i64, i64* @X86_CR4_UMIP, align 8
  %99 = and i64 %97, %98
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %105

104:                                              ; preds = %96, %91
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %101, %88, %75, %62, %49, %36, %23, %10
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @guest_cpuid_has(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
