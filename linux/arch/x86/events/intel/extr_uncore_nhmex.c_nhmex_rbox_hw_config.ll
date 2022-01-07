; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_nhmex.c_nhmex_rbox_hw_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_nhmex.c_nhmex_rbox_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { i32 }
%struct.perf_event = type { %struct.TYPE_2__, %struct.hw_perf_event }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.hw_perf_event = type { i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i32, i32 }

@NHMEX_R_PMON_CTL_EV_SEL_MASK = common dso_local global i32 0, align 4
@NHMEX_R_PMON_CTL_EV_SEL_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_uncore_box*, %struct.perf_event*)* @nhmex_rbox_hw_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nhmex_rbox_hw_config(%struct.intel_uncore_box* %0, %struct.perf_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_uncore_box*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  %7 = alloca %struct.hw_perf_event_extra*, align 8
  %8 = alloca %struct.hw_perf_event_extra*, align 8
  %9 = alloca i32, align 4
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %4, align 8
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 1
  store %struct.hw_perf_event* %11, %struct.hw_perf_event** %6, align 8
  %12 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %13, i32 0, i32 2
  store %struct.hw_perf_event_extra* %14, %struct.hw_perf_event_extra** %7, align 8
  %15 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %16 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %16, i32 0, i32 1
  store %struct.hw_perf_event_extra* %17, %struct.hw_perf_event_extra** %8, align 8
  %18 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %19 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @NHMEX_R_PMON_CTL_EV_SEL_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @NHMEX_R_PMON_CTL_EV_SEL_SHIFT, align 4
  %25 = ashr i32 %23, %24
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp sge i32 %26, 24
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %62

31:                                               ; preds = %2
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %34 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %36 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %40 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %9, align 4
  %42 = srem i32 %41, 6
  switch i32 %42, label %61 [
    i32 4, label %43
    i32 5, label %43
  ]

43:                                               ; preds = %31, %31
  %44 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %45 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = and i64 %47, -4294967296
  %49 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %50 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = or i64 %52, %48
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 4
  %55 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %56 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %60 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %31, %43
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %28
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
