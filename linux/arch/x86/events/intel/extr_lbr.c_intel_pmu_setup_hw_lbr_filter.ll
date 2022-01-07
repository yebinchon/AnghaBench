; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_lbr.c_intel_pmu_setup_hw_lbr_filter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_lbr.c_intel_pmu_setup_hw_lbr_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64*, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.perf_event = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32 }
%struct.TYPE_5__ = type { i64 }

@PERF_SAMPLE_BRANCH_MAX_SHIFT = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@LBR_NOT_SUPP = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@LBR_IGN = common dso_local global i64 0, align 8
@EXTRA_REG_LBR = common dso_local global i32 0, align 4
@LBR_CALL_STACK = common dso_local global i64 0, align 8
@PERF_SAMPLE_BRANCH_NO_CYCLES = common dso_local global i64 0, align 8
@PERF_SAMPLE_BRANCH_NO_FLAGS = common dso_local global i64 0, align 8
@LBR_FORMAT_INFO = common dso_local global i64 0, align 8
@LBR_NO_INFO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @intel_pmu_setup_hw_lbr_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pmu_setup_hw_lbr_filter(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.hw_perf_event_extra*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %46, %1
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @PERF_SAMPLE_BRANCH_MAX_SHIFT, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  %19 = load i32, i32* %8, align 4
  %20 = zext i32 %19 to i64
  %21 = shl i64 1, %20
  %22 = and i64 %18, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %46

25:                                               ; preds = %17
  %26 = load i64*, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @x86_pmu, i32 0, i32 0), align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @LBR_NOT_SUPP, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %84

37:                                               ; preds = %25
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @LBR_IGN, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %6, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %6, align 8
  br label %45

45:                                               ; preds = %41, %37
  br label %46

46:                                               ; preds = %45, %24
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %13

49:                                               ; preds = %13
  %50 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %51 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store %struct.hw_perf_event_extra* %52, %struct.hw_perf_event_extra** %4, align 8
  %53 = load i32, i32* @EXTRA_REG_LBR, align 4
  %54 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %4, align 8
  %55 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @x86_pmu, i32 0, i32 1), align 8
  %58 = load i64, i64* @LBR_CALL_STACK, align 8
  %59 = xor i64 %58, -1
  %60 = and i64 %57, %59
  %61 = xor i64 %56, %60
  %62 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %4, align 8
  %63 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* @PERF_SAMPLE_BRANCH_NO_CYCLES, align 8
  %66 = and i64 %64, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %49
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* @PERF_SAMPLE_BRANCH_NO_FLAGS, align 8
  %71 = and i64 %69, %70
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @x86_pmu, i32 0, i32 2, i32 0), align 8
  %75 = load i64, i64* @LBR_FORMAT_INFO, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i64, i64* @LBR_NO_INFO, align 8
  %79 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %4, align 8
  %80 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = or i64 %81, %78
  store i64 %82, i64* %80, align 8
  br label %83

83:                                               ; preds = %77, %73, %68, %49
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %34
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
