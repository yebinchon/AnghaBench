; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_event.c___armv8pmu_probe_pmu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_event.c___armv8pmu_probe_pmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armv8pmu_probe_info = type { i32, %struct.arm_pmu* }
%struct.arm_pmu = type { i32, i32, i32 }

@id_aa64dfr0_el1 = common dso_local global i32 0, align 4
@ID_AA64DFR0_PMUVER_SHIFT = common dso_local global i32 0, align 4
@ARMV8_PMU_PMCR_N_SHIFT = common dso_local global i32 0, align 4
@ARMV8_PMU_PMCR_N_MASK = common dso_local global i32 0, align 4
@pmceid0_el0 = common dso_local global i32 0, align 4
@pmceid1_el0 = common dso_local global i32 0, align 4
@ARMV8_PMUV3_MAX_COMMON_EVENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @__armv8pmu_probe_pmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__armv8pmu_probe_pmu(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.armv8pmu_probe_info*, align 8
  %4 = alloca %struct.arm_pmu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.armv8pmu_probe_info*
  store %struct.armv8pmu_probe_info* %10, %struct.armv8pmu_probe_info** %3, align 8
  %11 = load %struct.armv8pmu_probe_info*, %struct.armv8pmu_probe_info** %3, align 8
  %12 = getelementptr inbounds %struct.armv8pmu_probe_info, %struct.armv8pmu_probe_info* %11, i32 0, i32 1
  %13 = load %struct.arm_pmu*, %struct.arm_pmu** %12, align 8
  store %struct.arm_pmu* %13, %struct.arm_pmu** %4, align 8
  %14 = load i32, i32* @id_aa64dfr0_el1, align 4
  %15 = call i32 @read_sysreg(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @ID_AA64DFR0_PMUVER_SHIFT, align 4
  %18 = call i32 @cpuid_feature_extract_unsigned_field(i32 %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 15
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %1
  br label %67

25:                                               ; preds = %21
  %26 = load %struct.armv8pmu_probe_info*, %struct.armv8pmu_probe_info** %3, align 8
  %27 = getelementptr inbounds %struct.armv8pmu_probe_info, %struct.armv8pmu_probe_info* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = call i32 (...) @armv8pmu_pmcr_read()
  %29 = load i32, i32* @ARMV8_PMU_PMCR_N_SHIFT, align 4
  %30 = ashr i32 %28, %29
  %31 = load i32, i32* @ARMV8_PMU_PMCR_N_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load %struct.arm_pmu*, %struct.arm_pmu** %4, align 8
  %34 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.arm_pmu*, %struct.arm_pmu** %4, align 8
  %36 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @pmceid0_el0, align 4
  %40 = call i32 @read_sysreg(i32 %39)
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @pmceid1_el0, align 4
  %44 = call i32 @read_sysreg(i32 %43)
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.arm_pmu*, %struct.arm_pmu** %4, align 8
  %48 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %51 = load i32, i32* @ARMV8_PMUV3_MAX_COMMON_EVENTS, align 4
  %52 = call i32 @bitmap_from_arr32(i32 %49, i32* %50, i32 %51)
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 32
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 32
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %59, i32* %60, align 4
  %61 = load %struct.arm_pmu*, %struct.arm_pmu** %4, align 8
  %62 = getelementptr inbounds %struct.arm_pmu, %struct.arm_pmu* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %65 = load i32, i32* @ARMV8_PMUV3_MAX_COMMON_EVENTS, align 4
  %66 = call i32 @bitmap_from_arr32(i32 %63, i32* %64, i32 %65)
  br label %67

67:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @read_sysreg(i32) #1

declare dso_local i32 @cpuid_feature_extract_unsigned_field(i32, i32) #1

declare dso_local i32 @armv8pmu_pmcr_read(...) #1

declare dso_local i32 @bitmap_from_arr32(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
