; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_cf.c_cpumf_pmu_disable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_cf.c_cpumf_pmu_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu = type { i32 }
%struct.cpu_cf_events = type { i32, i32 }

@cpu_cf_events = common dso_local global i32 0, align 4
@PMU_F_ENABLED = common dso_local global i32 0, align 4
@CPUMF_LCCTL_ENABLE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Disabling the performance measuring unit failed with rc=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmu*)* @cpumf_pmu_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpumf_pmu_disable(%struct.pmu* %0) #0 {
  %2 = alloca %struct.pmu*, align 8
  %3 = alloca %struct.cpu_cf_events*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pmu* %0, %struct.pmu** %2, align 8
  %6 = call %struct.cpu_cf_events* @this_cpu_ptr(i32* @cpu_cf_events)
  store %struct.cpu_cf_events* %6, %struct.cpu_cf_events** %3, align 8
  %7 = load %struct.cpu_cf_events*, %struct.cpu_cf_events** %3, align 8
  %8 = getelementptr inbounds %struct.cpu_cf_events, %struct.cpu_cf_events* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PMU_F_ENABLED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %37

14:                                               ; preds = %1
  %15 = load %struct.cpu_cf_events*, %struct.cpu_cf_events** %3, align 8
  %16 = getelementptr inbounds %struct.cpu_cf_events, %struct.cpu_cf_events* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CPUMF_LCCTL_ENABLE_SHIFT, align 4
  %19 = shl i32 1, %18
  %20 = sub nsw i32 %19, 1
  %21 = xor i32 %20, -1
  %22 = and i32 %17, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @lcctl(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %14
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %37

30:                                               ; preds = %14
  %31 = load i32, i32* @PMU_F_ENABLED, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.cpu_cf_events*, %struct.cpu_cf_events** %3, align 8
  %34 = getelementptr inbounds %struct.cpu_cf_events, %struct.cpu_cf_events* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %30, %27, %13
  ret void
}

declare dso_local %struct.cpu_cf_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @lcctl(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
