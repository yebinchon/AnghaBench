; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_perf_event.c_register_sh_pmu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_perf_event.c_register_sh_pmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_pmu = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@sh_pmu = common dso_local global %struct.sh_pmu* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Performance Events: %s support registered\0A\00", align 1
@PERF_PMU_CAP_NO_INTERRUPT = common dso_local global i32 0, align 4
@pmu = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@MAX_HWEVENTS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@PERF_TYPE_RAW = common dso_local global i32 0, align 4
@CPUHP_PERF_SUPERH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"PERF_SUPERH\00", align 1
@sh_pmu_prepare_cpu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_sh_pmu(%struct.sh_pmu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sh_pmu*, align 8
  store %struct.sh_pmu* %0, %struct.sh_pmu** %3, align 8
  %4 = load %struct.sh_pmu*, %struct.sh_pmu** @sh_pmu, align 8
  %5 = icmp ne %struct.sh_pmu* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @EBUSY, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %30

9:                                                ; preds = %1
  %10 = load %struct.sh_pmu*, %struct.sh_pmu** %3, align 8
  store %struct.sh_pmu* %10, %struct.sh_pmu** @sh_pmu, align 8
  %11 = load %struct.sh_pmu*, %struct.sh_pmu** %3, align 8
  %12 = getelementptr inbounds %struct.sh_pmu, %struct.sh_pmu* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @PERF_PMU_CAP_NO_INTERRUPT, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pmu, i32 0, i32 0), align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pmu, i32 0, i32 0), align 4
  %18 = load %struct.sh_pmu*, %struct.sh_pmu** %3, align 8
  %19 = getelementptr inbounds %struct.sh_pmu, %struct.sh_pmu* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MAX_HWEVENTS, align 8
  %22 = icmp sgt i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load i32, i32* @PERF_TYPE_RAW, align 4
  %26 = call i32 @perf_pmu_register(%struct.TYPE_3__* @pmu, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @CPUHP_PERF_SUPERH, align 4
  %28 = load i32, i32* @sh_pmu_prepare_cpu, align 4
  %29 = call i32 @cpuhp_setup_state(i32 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %28, i32* null)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %9, %6
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @perf_pmu_register(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @cpuhp_setup_state(i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
