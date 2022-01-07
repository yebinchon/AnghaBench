; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_core-book3s.c_register_power_pmu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_core-book3s.c_register_power_pmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_pmu = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@ppmu = common dso_local global %struct.power_pmu* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%s performance monitor hardware support registered\0A\00", align 1
@power_pmu = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@PERF_TYPE_RAW = common dso_local global i32 0, align 4
@CPUHP_PERF_POWER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"perf/powerpc:prepare\00", align 1
@power_pmu_prepare_cpu = common dso_local global i32 0, align 4
@MMCR0_FCHV = common dso_local global i32 0, align 4
@MSR_HV = common dso_local global i32 0, align 4
@freeze_events_kernel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_power_pmu(%struct.power_pmu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.power_pmu*, align 8
  store %struct.power_pmu* %0, %struct.power_pmu** %3, align 8
  %4 = load %struct.power_pmu*, %struct.power_pmu** @ppmu, align 8
  %5 = icmp ne %struct.power_pmu* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @EBUSY, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %23

9:                                                ; preds = %1
  %10 = load %struct.power_pmu*, %struct.power_pmu** %3, align 8
  store %struct.power_pmu* %10, %struct.power_pmu** @ppmu, align 8
  %11 = load %struct.power_pmu*, %struct.power_pmu** %3, align 8
  %12 = getelementptr inbounds %struct.power_pmu, %struct.power_pmu* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pr_info(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.power_pmu*, %struct.power_pmu** @ppmu, align 8
  %16 = getelementptr inbounds %struct.power_pmu, %struct.power_pmu* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @power_pmu, i32 0, i32 0), align 4
  %18 = load i32, i32* @PERF_TYPE_RAW, align 4
  %19 = call i32 @perf_pmu_register(%struct.TYPE_3__* @power_pmu, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @CPUHP_PERF_POWER, align 4
  %21 = load i32, i32* @power_pmu_prepare_cpu, align 4
  %22 = call i32 @cpuhp_setup_state(i32 %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %21, i32* null)
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %9, %6
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @perf_pmu_register(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @cpuhp_setup_state(i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
