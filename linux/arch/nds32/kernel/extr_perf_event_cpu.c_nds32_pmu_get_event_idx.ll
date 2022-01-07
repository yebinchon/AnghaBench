; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_nds32_pmu_get_event_idx.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_nds32_pmu_get_event_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu_hw_events = type { i32 }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i64 }

@SOFTWARE_EVENT_MASK = common dso_local global i64 0, align 8
@SPAV3_0_SEL_TOTAL_CYCLES = common dso_local global i64 0, align 8
@NDS32_IDX_COUNTER0 = common dso_local global i32 0, align 4
@NDS32_IDX_COUNTER1 = common dso_local global i32 0, align 4
@SPAV3_1_SEL_COMPLETED_INSTRUCTION = common dso_local global i64 0, align 8
@NDS32_IDX_CYCLE_COUNTER = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmu_hw_events*, %struct.perf_event*)* @nds32_pmu_get_event_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nds32_pmu_get_event_idx(%struct.pmu_hw_events* %0, %struct.perf_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pmu_hw_events*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hw_perf_event*, align 8
  %8 = alloca i64, align 8
  store %struct.pmu_hw_events* %0, %struct.pmu_hw_events** %4, align 8
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 0
  store %struct.hw_perf_event* %10, %struct.hw_perf_event** %7, align 8
  %11 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %12 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SOFTWARE_EVENT_MASK, align 8
  %15 = and i64 %13, %14
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @get_converted_event_idx(i64 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @SPAV3_0_SEL_TOTAL_CYCLES, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %4, align 8
  %24 = getelementptr inbounds %struct.pmu_hw_events, %struct.pmu_hw_events* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @test_and_set_bit(i32 %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %97

30:                                               ; preds = %21
  %31 = load i32, i32* @NDS32_IDX_COUNTER0, align 4
  %32 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %4, align 8
  %33 = getelementptr inbounds %struct.pmu_hw_events, %struct.pmu_hw_events* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @test_and_set_bit(i32 %31, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @NDS32_IDX_COUNTER0, align 4
  store i32 %38, i32* %3, align 4
  br label %97

39:                                               ; preds = %30
  %40 = load i32, i32* @NDS32_IDX_COUNTER1, align 4
  %41 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %4, align 8
  %42 = getelementptr inbounds %struct.pmu_hw_events, %struct.pmu_hw_events* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @test_and_set_bit(i32 %40, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @NDS32_IDX_COUNTER1, align 4
  store i32 %47, i32* %3, align 4
  br label %97

48:                                               ; preds = %39
  br label %94

49:                                               ; preds = %2
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* @SPAV3_1_SEL_COMPLETED_INSTRUCTION, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %83

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %4, align 8
  %56 = getelementptr inbounds %struct.pmu_hw_events, %struct.pmu_hw_events* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @test_and_set_bit(i32 %54, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %97

62:                                               ; preds = %53
  %63 = load i32, i32* @NDS32_IDX_COUNTER1, align 4
  %64 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %4, align 8
  %65 = getelementptr inbounds %struct.pmu_hw_events, %struct.pmu_hw_events* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @test_and_set_bit(i32 %63, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* @NDS32_IDX_COUNTER1, align 4
  store i32 %70, i32* %3, align 4
  br label %97

71:                                               ; preds = %62
  %72 = load i32, i32* @NDS32_IDX_CYCLE_COUNTER, align 4
  %73 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %4, align 8
  %74 = getelementptr inbounds %struct.pmu_hw_events, %struct.pmu_hw_events* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @test_and_set_bit(i32 %72, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %71
  %79 = load i32, i32* @NDS32_IDX_CYCLE_COUNTER, align 4
  store i32 %79, i32* %3, align 4
  br label %97

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %81
  br label %93

83:                                               ; preds = %49
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %4, align 8
  %86 = getelementptr inbounds %struct.pmu_hw_events, %struct.pmu_hw_events* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @test_and_set_bit(i32 %84, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %83
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %97

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92, %82
  br label %94

94:                                               ; preds = %93, %48
  %95 = load i32, i32* @EAGAIN, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %94, %90, %78, %69, %60, %46, %37, %28
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @get_converted_event_idx(i64) #1

declare dso_local i32 @test_and_set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
