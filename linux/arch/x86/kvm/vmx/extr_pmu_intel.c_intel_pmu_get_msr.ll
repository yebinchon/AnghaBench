; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_pmu_intel.c_intel_pmu_get_msr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_pmu_intel.c_intel_pmu_get_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_pmu = type { i32, i32, i32, i32, i32* }
%struct.kvm_pmc = type { i32 }

@MSR_IA32_PERFCTR0 = common dso_local global i32 0, align 4
@KVM_PMC_GP = common dso_local global i64 0, align 8
@KVM_PMC_FIXED = common dso_local global i64 0, align 8
@MSR_P6_EVNTSEL0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, i32*)* @intel_pmu_get_msr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pmu_get_msr(%struct.kvm_vcpu* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.kvm_pmu*, align 8
  %9 = alloca %struct.kvm_pmc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %13 = call %struct.kvm_pmu* @vcpu_to_pmu(%struct.kvm_vcpu* %12)
  store %struct.kvm_pmu* %13, %struct.kvm_pmu** %8, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %35 [
    i32 131, label %15
    i32 128, label %20
    i32 130, label %25
    i32 129, label %30
  ]

15:                                               ; preds = %3
  %16 = load %struct.kvm_pmu*, %struct.kvm_pmu** %8, align 8
  %17 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  store i32 0, i32* %4, align 4
  br label %85

20:                                               ; preds = %3
  %21 = load %struct.kvm_pmu*, %struct.kvm_pmu** %8, align 8
  %22 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  store i32 0, i32* %4, align 4
  br label %85

25:                                               ; preds = %3
  %26 = load %struct.kvm_pmu*, %struct.kvm_pmu** %8, align 8
  %27 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %7, align 8
  store i32 %28, i32* %29, align 4
  store i32 0, i32* %4, align 4
  br label %85

30:                                               ; preds = %3
  %31 = load %struct.kvm_pmu*, %struct.kvm_pmu** %8, align 8
  %32 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  store i32 0, i32* %4, align 4
  br label %85

35:                                               ; preds = %3
  %36 = load %struct.kvm_pmu*, %struct.kvm_pmu** %8, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @MSR_IA32_PERFCTR0, align 4
  %39 = call %struct.kvm_pmc* @get_gp_pmc(%struct.kvm_pmu* %36, i32 %37, i32 %38)
  store %struct.kvm_pmc* %39, %struct.kvm_pmc** %9, align 8
  %40 = icmp ne %struct.kvm_pmc* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  %42 = load %struct.kvm_pmc*, %struct.kvm_pmc** %9, align 8
  %43 = call i32 @pmc_read_counter(%struct.kvm_pmc* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.kvm_pmu*, %struct.kvm_pmu** %8, align 8
  %46 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @KVM_PMC_GP, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %44, %50
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  store i32 0, i32* %4, align 4
  br label %85

53:                                               ; preds = %35
  %54 = load %struct.kvm_pmu*, %struct.kvm_pmu** %8, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call %struct.kvm_pmc* @get_fixed_pmc(%struct.kvm_pmu* %54, i32 %55)
  store %struct.kvm_pmc* %56, %struct.kvm_pmc** %9, align 8
  %57 = icmp ne %struct.kvm_pmc* %56, null
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = load %struct.kvm_pmc*, %struct.kvm_pmc** %9, align 8
  %60 = call i32 @pmc_read_counter(%struct.kvm_pmc* %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.kvm_pmu*, %struct.kvm_pmu** %8, align 8
  %63 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @KVM_PMC_FIXED, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %61, %67
  %69 = load i32*, i32** %7, align 8
  store i32 %68, i32* %69, align 4
  store i32 0, i32* %4, align 4
  br label %85

70:                                               ; preds = %53
  %71 = load %struct.kvm_pmu*, %struct.kvm_pmu** %8, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @MSR_P6_EVNTSEL0, align 4
  %74 = call %struct.kvm_pmc* @get_gp_pmc(%struct.kvm_pmu* %71, i32 %72, i32 %73)
  store %struct.kvm_pmc* %74, %struct.kvm_pmc** %9, align 8
  %75 = icmp ne %struct.kvm_pmc* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load %struct.kvm_pmc*, %struct.kvm_pmc** %9, align 8
  %78 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %7, align 8
  store i32 %79, i32* %80, align 4
  store i32 0, i32* %4, align 4
  br label %85

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82
  br label %84

84:                                               ; preds = %83
  store i32 1, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %76, %58, %41, %30, %25, %20, %15
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.kvm_pmu* @vcpu_to_pmu(%struct.kvm_vcpu*) #1

declare dso_local %struct.kvm_pmc* @get_gp_pmc(%struct.kvm_pmu*, i32, i32) #1

declare dso_local i32 @pmc_read_counter(%struct.kvm_pmc*) #1

declare dso_local %struct.kvm_pmc* @get_fixed_pmc(%struct.kvm_pmu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
