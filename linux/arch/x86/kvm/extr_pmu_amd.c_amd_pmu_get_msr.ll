; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_pmu_amd.c_amd_pmu_get_msr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_pmu_amd.c_amd_pmu_get_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_pmu = type { i32 }
%struct.kvm_pmc = type { i32 }

@PMU_TYPE_COUNTER = common dso_local global i32 0, align 4
@PMU_TYPE_EVNTSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, i32*)* @amd_pmu_get_msr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_pmu_get_msr(%struct.kvm_vcpu* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.kvm_pmu*, align 8
  %9 = alloca %struct.kvm_pmc*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %11 = call %struct.kvm_pmu* @vcpu_to_pmu(%struct.kvm_vcpu* %10)
  store %struct.kvm_pmu* %11, %struct.kvm_pmu** %8, align 8
  %12 = load %struct.kvm_pmu*, %struct.kvm_pmu** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @PMU_TYPE_COUNTER, align 4
  %15 = call %struct.kvm_pmc* @get_gp_pmc_amd(%struct.kvm_pmu* %12, i32 %13, i32 %14)
  store %struct.kvm_pmc* %15, %struct.kvm_pmc** %9, align 8
  %16 = load %struct.kvm_pmc*, %struct.kvm_pmc** %9, align 8
  %17 = icmp ne %struct.kvm_pmc* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.kvm_pmc*, %struct.kvm_pmc** %9, align 8
  %20 = call i32 @pmc_read_counter(%struct.kvm_pmc* %19)
  %21 = load i32*, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  store i32 0, i32* %4, align 4
  br label %35

22:                                               ; preds = %3
  %23 = load %struct.kvm_pmu*, %struct.kvm_pmu** %8, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @PMU_TYPE_EVNTSEL, align 4
  %26 = call %struct.kvm_pmc* @get_gp_pmc_amd(%struct.kvm_pmu* %23, i32 %24, i32 %25)
  store %struct.kvm_pmc* %26, %struct.kvm_pmc** %9, align 8
  %27 = load %struct.kvm_pmc*, %struct.kvm_pmc** %9, align 8
  %28 = icmp ne %struct.kvm_pmc* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.kvm_pmc*, %struct.kvm_pmc** %9, align 8
  %31 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  store i32 0, i32* %4, align 4
  br label %35

34:                                               ; preds = %22
  store i32 1, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %29, %18
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.kvm_pmu* @vcpu_to_pmu(%struct.kvm_vcpu*) #1

declare dso_local %struct.kvm_pmc* @get_gp_pmc_amd(%struct.kvm_pmu*, i32, i32) #1

declare dso_local i32 @pmc_read_counter(%struct.kvm_pmc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
