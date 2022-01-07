; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_cpumsf_pmu_stop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_cpumsf_pmu_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.cpu_hw_sf = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@cpu_hw_sf = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_EF_UPDATE = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @cpumsf_pmu_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpumsf_pmu_stop(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpu_hw_sf*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call %struct.cpu_hw_sf* @this_cpu_ptr(i32* @cpu_hw_sf)
  store %struct.cpu_hw_sf* %6, %struct.cpu_hw_sf** %5, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %8 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PERF_HES_STOPPED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %58

15:                                               ; preds = %2
  %16 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %17 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @perf_pmu_disable(i32 %18)
  %20 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %5, align 8
  %21 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %5, align 8
  %24 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @PERF_HES_STOPPED, align 4
  %27 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %28 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %26
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @PERF_EF_UPDATE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %15
  %37 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %38 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %36
  %45 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %46 = call i32 @hw_perf_event_update(%struct.perf_event* %45, i32 1)
  %47 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %48 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %49 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %47
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %44, %36, %15
  %54 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %55 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @perf_pmu_enable(i32 %56)
  br label %58

58:                                               ; preds = %53, %14
  ret void
}

declare dso_local %struct.cpu_hw_sf* @this_cpu_ptr(i32*) #1

declare dso_local i32 @perf_pmu_disable(i32) #1

declare dso_local i32 @hw_perf_event_update(%struct.perf_event*, i32) #1

declare dso_local i32 @perf_pmu_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
