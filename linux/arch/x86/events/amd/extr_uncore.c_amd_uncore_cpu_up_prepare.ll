; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_uncore.c_amd_uncore_cpu_up_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_uncore.c_amd_uncore_cpu_up_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_uncore = type { i32, i32, i32*, i32*, i32, i32, i32 }

@amd_uncore_nb = common dso_local global i64 0, align 8
@num_counters_nb = common dso_local global i32 0, align 4
@RDPMC_BASE_NB = common dso_local global i32 0, align 4
@MSR_F15H_NB_PERF_CTL = common dso_local global i32 0, align 4
@amd_nb_active_mask = common dso_local global i32 0, align 4
@amd_nb_pmu = common dso_local global i32 0, align 4
@amd_uncore_llc = common dso_local global i64 0, align 8
@num_counters_llc = common dso_local global i32 0, align 4
@RDPMC_BASE_LLC = common dso_local global i32 0, align 4
@MSR_F16H_L2I_PERF_CTL = common dso_local global i32 0, align 4
@amd_llc_active_mask = common dso_local global i32 0, align 4
@amd_llc_pmu = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @amd_uncore_cpu_up_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_uncore_cpu_up_prepare(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.amd_uncore*, align 8
  %5 = alloca %struct.amd_uncore*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.amd_uncore* null, %struct.amd_uncore** %4, align 8
  %6 = load i64, i64* @amd_uncore_nb, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %37

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.amd_uncore* @amd_uncore_alloc(i32 %9)
  store %struct.amd_uncore* %10, %struct.amd_uncore** %4, align 8
  %11 = load %struct.amd_uncore*, %struct.amd_uncore** %4, align 8
  %12 = icmp ne %struct.amd_uncore* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  br label %70

14:                                               ; preds = %8
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.amd_uncore*, %struct.amd_uncore** %4, align 8
  %17 = getelementptr inbounds %struct.amd_uncore, %struct.amd_uncore* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @num_counters_nb, align 4
  %19 = load %struct.amd_uncore*, %struct.amd_uncore** %4, align 8
  %20 = getelementptr inbounds %struct.amd_uncore, %struct.amd_uncore* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @RDPMC_BASE_NB, align 4
  %22 = load %struct.amd_uncore*, %struct.amd_uncore** %4, align 8
  %23 = getelementptr inbounds %struct.amd_uncore, %struct.amd_uncore* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @MSR_F15H_NB_PERF_CTL, align 4
  %25 = load %struct.amd_uncore*, %struct.amd_uncore** %4, align 8
  %26 = getelementptr inbounds %struct.amd_uncore, %struct.amd_uncore* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load %struct.amd_uncore*, %struct.amd_uncore** %4, align 8
  %28 = getelementptr inbounds %struct.amd_uncore, %struct.amd_uncore* %27, i32 0, i32 3
  store i32* @amd_nb_active_mask, i32** %28, align 8
  %29 = load %struct.amd_uncore*, %struct.amd_uncore** %4, align 8
  %30 = getelementptr inbounds %struct.amd_uncore, %struct.amd_uncore* %29, i32 0, i32 2
  store i32* @amd_nb_pmu, i32** %30, align 8
  %31 = load %struct.amd_uncore*, %struct.amd_uncore** %4, align 8
  %32 = getelementptr inbounds %struct.amd_uncore, %struct.amd_uncore* %31, i32 0, i32 1
  store i32 -1, i32* %32, align 4
  %33 = load %struct.amd_uncore*, %struct.amd_uncore** %4, align 8
  %34 = load i64, i64* @amd_uncore_nb, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call %struct.amd_uncore** @per_cpu_ptr(i64 %34, i32 %35)
  store %struct.amd_uncore* %33, %struct.amd_uncore** %36, align 8
  br label %37

37:                                               ; preds = %14, %1
  %38 = load i64, i64* @amd_uncore_llc, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %37
  %41 = load i32, i32* %3, align 4
  %42 = call %struct.amd_uncore* @amd_uncore_alloc(i32 %41)
  store %struct.amd_uncore* %42, %struct.amd_uncore** %5, align 8
  %43 = load %struct.amd_uncore*, %struct.amd_uncore** %5, align 8
  %44 = icmp ne %struct.amd_uncore* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %70

46:                                               ; preds = %40
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.amd_uncore*, %struct.amd_uncore** %5, align 8
  %49 = getelementptr inbounds %struct.amd_uncore, %struct.amd_uncore* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @num_counters_llc, align 4
  %51 = load %struct.amd_uncore*, %struct.amd_uncore** %5, align 8
  %52 = getelementptr inbounds %struct.amd_uncore, %struct.amd_uncore* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @RDPMC_BASE_LLC, align 4
  %54 = load %struct.amd_uncore*, %struct.amd_uncore** %5, align 8
  %55 = getelementptr inbounds %struct.amd_uncore, %struct.amd_uncore* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @MSR_F16H_L2I_PERF_CTL, align 4
  %57 = load %struct.amd_uncore*, %struct.amd_uncore** %5, align 8
  %58 = getelementptr inbounds %struct.amd_uncore, %struct.amd_uncore* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.amd_uncore*, %struct.amd_uncore** %5, align 8
  %60 = getelementptr inbounds %struct.amd_uncore, %struct.amd_uncore* %59, i32 0, i32 3
  store i32* @amd_llc_active_mask, i32** %60, align 8
  %61 = load %struct.amd_uncore*, %struct.amd_uncore** %5, align 8
  %62 = getelementptr inbounds %struct.amd_uncore, %struct.amd_uncore* %61, i32 0, i32 2
  store i32* @amd_llc_pmu, i32** %62, align 8
  %63 = load %struct.amd_uncore*, %struct.amd_uncore** %5, align 8
  %64 = getelementptr inbounds %struct.amd_uncore, %struct.amd_uncore* %63, i32 0, i32 1
  store i32 -1, i32* %64, align 4
  %65 = load %struct.amd_uncore*, %struct.amd_uncore** %5, align 8
  %66 = load i64, i64* @amd_uncore_llc, align 8
  %67 = load i32, i32* %3, align 4
  %68 = call %struct.amd_uncore** @per_cpu_ptr(i64 %66, i32 %67)
  store %struct.amd_uncore* %65, %struct.amd_uncore** %68, align 8
  br label %69

69:                                               ; preds = %46, %37
  store i32 0, i32* %2, align 4
  br label %82

70:                                               ; preds = %45, %13
  %71 = load i64, i64* @amd_uncore_nb, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i64, i64* @amd_uncore_nb, align 8
  %75 = load i32, i32* %3, align 4
  %76 = call %struct.amd_uncore** @per_cpu_ptr(i64 %74, i32 %75)
  store %struct.amd_uncore* null, %struct.amd_uncore** %76, align 8
  br label %77

77:                                               ; preds = %73, %70
  %78 = load %struct.amd_uncore*, %struct.amd_uncore** %4, align 8
  %79 = call i32 @kfree(%struct.amd_uncore* %78)
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %77, %69
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.amd_uncore* @amd_uncore_alloc(i32) #1

declare dso_local %struct.amd_uncore** @per_cpu_ptr(i64, i32) #1

declare dso_local i32 @kfree(%struct.amd_uncore*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
