; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_nhmex.c_nhmex_bbox_hw_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_nhmex.c_nhmex_bbox_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.perf_event = type { %struct.TYPE_4__, %struct.hw_perf_event }
%struct.TYPE_4__ = type { i32, i32 }
%struct.hw_perf_event = type { i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i32, i64, i32 }

@NHMEX_B_PMON_CTR_MASK = common dso_local global i32 0, align 4
@NHMEX_B_PMON_CTR_SHIFT = common dso_local global i32 0, align 4
@NHMEX_B_PMON_CTL_EV_SEL_MASK = common dso_local global i32 0, align 4
@NHMEX_B_PMON_CTL_EV_SEL_SHIFT = common dso_local global i32 0, align 4
@NHMEX_B0_MSR_MATCH = common dso_local global i32 0, align 4
@NHMEX_B1_MSR_MATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_uncore_box*, %struct.perf_event*)* @nhmex_bbox_hw_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nhmex_bbox_hw_config(%struct.intel_uncore_box* %0, %struct.perf_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_uncore_box*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  %7 = alloca %struct.hw_perf_event_extra*, align 8
  %8 = alloca %struct.hw_perf_event_extra*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %4, align 8
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 1
  store %struct.hw_perf_event* %12, %struct.hw_perf_event** %6, align 8
  %13 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %14 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %13, i32 0, i32 2
  store %struct.hw_perf_event_extra* %14, %struct.hw_perf_event_extra** %7, align 8
  %15 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %16 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %15, i32 0, i32 1
  store %struct.hw_perf_event_extra* %16, %struct.hw_perf_event_extra** %8, align 8
  %17 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %18 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @NHMEX_B_PMON_CTR_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @NHMEX_B_PMON_CTR_SHIFT, align 4
  %23 = ashr i32 %21, %22
  store i32 %23, i32* %9, align 4
  %24 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %25 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @NHMEX_B_PMON_CTL_EV_SEL_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @NHMEX_B_PMON_CTL_EV_SEL_SHIFT, align 4
  %30 = ashr i32 %28, %29
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32, i32* %10, align 4
  %35 = icmp sgt i32 %34, 3
  br i1 %35, label %51, label %36

36:                                               ; preds = %33, %2
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %10, align 4
  %41 = icmp sgt i32 %40, 6
  br i1 %41, label %51, label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 4
  br i1 %47, label %51, label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %49, 3
  br i1 %50, label %51, label %52

51:                                               ; preds = %48, %45, %39, %33
  store i32 0, i32* %3, align 4
  br label %82

52:                                               ; preds = %48
  %53 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %54 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i32, i32* @NHMEX_B0_MSR_MATCH, align 4
  %61 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %62 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  br label %67

63:                                               ; preds = %52
  %64 = load i32, i32* @NHMEX_B1_MSR_MATCH, align 4
  %65 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %66 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %63, %59
  %68 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %69 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %71 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %75 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %77 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %81 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %67, %51
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
