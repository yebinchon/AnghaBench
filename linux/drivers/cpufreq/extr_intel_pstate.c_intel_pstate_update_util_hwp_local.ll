; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_pstate_update_util_hwp_local.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_pstate_update_util_hwp_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpudata = type { i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@SCHED_CPUFREQ_IOWAIT = common dso_local global i32 0, align 4
@TICK_NSEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpudata*, i8*)* @intel_pstate_update_util_hwp_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pstate_update_util_hwp_local(%struct.cpudata* %0, i8* %1) #0 {
  %3 = alloca %struct.cpudata*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.cpudata* %0, %struct.cpudata** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load %struct.cpudata*, %struct.cpudata** %3, align 8
  %8 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i8* %6, i8** %9, align 8
  %10 = load %struct.cpudata*, %struct.cpudata** %3, align 8
  %11 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SCHED_CPUFREQ_IOWAIT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  %17 = load %struct.cpudata*, %struct.cpudata** %3, align 8
  %18 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load %struct.cpudata*, %struct.cpudata** %3, align 8
  %21 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* @TICK_NSEC, align 4
  %24 = mul nsw i32 2, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr i8, i8* %22, i64 %25
  %27 = call i64 @time_before64(i8* %19, i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  store i32 1, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %16
  %31 = load i8*, i8** %4, align 8
  %32 = load %struct.cpudata*, %struct.cpudata** %3, align 8
  %33 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.cpudata*, %struct.cpudata** %3, align 8
  %38 = call i32 @intel_pstate_hwp_boost_up(%struct.cpudata* %37)
  br label %39

39:                                               ; preds = %36, %30
  br label %43

40:                                               ; preds = %2
  %41 = load %struct.cpudata*, %struct.cpudata** %3, align 8
  %42 = call i32 @intel_pstate_hwp_boost_down(%struct.cpudata* %41)
  br label %43

43:                                               ; preds = %40, %39
  ret void
}

declare dso_local i64 @time_before64(i8*, i8*) #1

declare dso_local i32 @intel_pstate_hwp_boost_up(%struct.cpudata*) #1

declare dso_local i32 @intel_pstate_hwp_boost_down(%struct.cpudata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
