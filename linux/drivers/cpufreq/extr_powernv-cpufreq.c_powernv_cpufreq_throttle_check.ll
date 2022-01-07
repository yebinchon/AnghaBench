; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernv-cpufreq.c_powernv_cpufreq_throttle_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernv-cpufreq.c_powernv_cpufreq_throttle_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.chip = type { i32, i64, i32, i32, i32 }

@SPRN_PMSR = common dso_local global i32 0, align 4
@chip_info = common dso_local global i32 0, align 4
@powernv_pstate_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [80 x i8] c"CPU %d on Chip %u has Pmax(0x%x) reduced below that of nominal frequency(0x%x)\0A\00", align 1
@throttle_reason = common dso_local global i32* null, align 8
@PMSR_PSAFE_ENABLE = common dso_local global i64 0, align 8
@throttled = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Pstate set to safe frequency\0A\00", align 1
@PMSR_SPR_EM_DISABLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Frequency Control disabled from OS\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"PMSR = %16lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"CPU Frequency could be throttled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @powernv_cpufreq_throttle_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @powernv_cpufreq_throttle_check(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = call i32 (...) @smp_processor_id()
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @SPRN_PMSR, align 4
  %10 = call i64 @get_pmspr(i32 %9)
  store i64 %10, i64* %5, align 8
  %11 = load i32, i32* @chip_info, align 4
  %12 = call %struct.chip* @this_cpu_read(i32 %11)
  store %struct.chip* %12, %struct.chip** %3, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @extract_max_pstate(i64 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @pstate_to_idx(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @powernv_pstate_info, i32 0, i32 0), align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %62

20:                                               ; preds = %1
  %21 = load %struct.chip*, %struct.chip** %3, align 8
  %22 = getelementptr inbounds %struct.chip, %struct.chip* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %83

26:                                               ; preds = %20
  %27 = load %struct.chip*, %struct.chip** %3, align 8
  %28 = getelementptr inbounds %struct.chip, %struct.chip* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @powernv_pstate_info, i32 0, i32 1), align 4
  %31 = icmp ugt i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.chip*, %struct.chip** %3, align 8
  %35 = getelementptr inbounds %struct.chip, %struct.chip* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @powernv_pstate_info, i32 0, i32 1), align 4
  %39 = call i32 @idx_to_pstate(i32 %38)
  %40 = call i32 @pr_warn_once(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36, i32 %37, i32 %39)
  %41 = load %struct.chip*, %struct.chip** %3, align 8
  %42 = getelementptr inbounds %struct.chip, %struct.chip* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  br label %50

45:                                               ; preds = %26
  %46 = load %struct.chip*, %struct.chip** %3, align 8
  %47 = getelementptr inbounds %struct.chip, %struct.chip* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %45, %32
  %51 = load %struct.chip*, %struct.chip** %3, align 8
  %52 = getelementptr inbounds %struct.chip, %struct.chip* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32*, i32** @throttle_reason, align 8
  %55 = load %struct.chip*, %struct.chip** %3, align 8
  %56 = getelementptr inbounds %struct.chip, %struct.chip* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @trace_powernv_throttle(i32 %53, i32 %59, i32 %60)
  br label %82

62:                                               ; preds = %1
  %63 = load %struct.chip*, %struct.chip** %3, align 8
  %64 = getelementptr inbounds %struct.chip, %struct.chip* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %62
  %68 = load %struct.chip*, %struct.chip** %3, align 8
  %69 = getelementptr inbounds %struct.chip, %struct.chip* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  %70 = load %struct.chip*, %struct.chip** %3, align 8
  %71 = getelementptr inbounds %struct.chip, %struct.chip* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32*, i32** @throttle_reason, align 8
  %74 = load %struct.chip*, %struct.chip** %3, align 8
  %75 = getelementptr inbounds %struct.chip, %struct.chip* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @trace_powernv_throttle(i32 %72, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %67, %62
  br label %82

82:                                               ; preds = %81, %50
  br label %83

83:                                               ; preds = %82, %25
  %84 = load i64, i64* %5, align 8
  %85 = load i64, i64* @PMSR_PSAFE_ENABLE, align 8
  %86 = and i64 %84, %85
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  store i32 1, i32* @throttled, align 4
  %89 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %83
  %91 = load i64, i64* %5, align 8
  %92 = load i64, i64* @PMSR_SPR_EM_DISABLE, align 8
  %93 = and i64 %91, %92
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  store i32 1, i32* @throttled, align 4
  %96 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %90
  %98 = load i32, i32* @throttled, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i64, i64* %5, align 8
  %102 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i64 %101)
  %103 = call i32 @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %104

104:                                              ; preds = %100, %97
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @get_pmspr(i32) #1

declare dso_local %struct.chip* @this_cpu_read(i32) #1

declare dso_local i32 @extract_max_pstate(i64) #1

declare dso_local i32 @pstate_to_idx(i32) #1

declare dso_local i32 @pr_warn_once(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @idx_to_pstate(i32) #1

declare dso_local i32 @trace_powernv_throttle(i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
