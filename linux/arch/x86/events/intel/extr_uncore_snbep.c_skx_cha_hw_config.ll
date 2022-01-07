; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snbep.c_skx_cha_hw_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snbep.c_skx_cha_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extra_reg = type { i32, i32, i32, i64 }
%struct.intel_uncore_box = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.perf_event = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i32, i32, i64 }

@skx_uncore_cha_extra_regs = common dso_local global %struct.extra_reg* null, align 8
@HSWEP_C0_MSR_PMON_BOX_FILTER0 = common dso_local global i64 0, align 8
@HSWEP_CBO_MSR_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_uncore_box*, %struct.perf_event*)* @skx_cha_hw_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skx_cha_hw_config(%struct.intel_uncore_box* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.intel_uncore_box*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.hw_perf_event_extra*, align 8
  %6 = alloca %struct.extra_reg*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store %struct.hw_perf_event_extra* %10, %struct.hw_perf_event_extra** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.extra_reg*, %struct.extra_reg** @skx_uncore_cha_extra_regs, align 8
  store %struct.extra_reg* %11, %struct.extra_reg** %6, align 8
  br label %12

12:                                               ; preds = %37, %2
  %13 = load %struct.extra_reg*, %struct.extra_reg** %6, align 8
  %14 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %12
  %18 = load %struct.extra_reg*, %struct.extra_reg** %6, align 8
  %19 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %22 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.extra_reg*, %struct.extra_reg** %6, align 8
  %26 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %20, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  br label %37

31:                                               ; preds = %17
  %32 = load %struct.extra_reg*, %struct.extra_reg** %6, align 8
  %33 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %31, %30
  %38 = load %struct.extra_reg*, %struct.extra_reg** %6, align 8
  %39 = getelementptr inbounds %struct.extra_reg, %struct.extra_reg* %38, i32 1
  store %struct.extra_reg* %39, %struct.extra_reg** %6, align 8
  br label %12

40:                                               ; preds = %12
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %68

43:                                               ; preds = %40
  %44 = load i64, i64* @HSWEP_C0_MSR_PMON_BOX_FILTER0, align 8
  %45 = load i32, i32* @HSWEP_CBO_MSR_OFFSET, align 4
  %46 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %47 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %45, %50
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %44, %52
  %54 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %5, align 8
  %55 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %57 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @skx_cha_filter_mask(i32 %60)
  %62 = and i32 %59, %61
  %63 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %5, align 8
  %64 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %5, align 8
  %67 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %43, %40
  ret i32 0
}

declare dso_local i32 @skx_cha_filter_mask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
