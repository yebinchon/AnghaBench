; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_perf_event.c_calculate_multiple_pcrs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_perf_event.c_calculate_multiple_pcrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_hw_events = type { i32, i32*, i32*, %struct.perf_event**, i32 }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32, i32 }

@PIC_NO_INDEX = common dso_local global i32 0, align 4
@PERF_HES_ARCH = common dso_local global i32 0, align 4
@PERF_EF_RELOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_hw_events*)* @calculate_multiple_pcrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calculate_multiple_pcrs(%struct.cpu_hw_events* %0) #0 {
  %2 = alloca %struct.cpu_hw_events*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.perf_event*, align 8
  %8 = alloca i32, align 4
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %2, align 8
  %9 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %10 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %68

14:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %64, %14
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %18 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %67

21:                                               ; preds = %15
  %22 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %23 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %22, i32 0, i32 3
  %24 = load %struct.perf_event**, %struct.perf_event*** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %24, i64 %26
  %28 = load %struct.perf_event*, %struct.perf_event** %27, align 8
  store %struct.perf_event* %28, %struct.perf_event** %4, align 8
  %29 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %30 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %29, i32 0, i32 0
  store %struct.hw_perf_event* %30, %struct.hw_perf_event** %5, align 8
  %31 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %32 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  %34 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %35 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PIC_NO_INDEX, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %21
  br label %64

44:                                               ; preds = %21
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %47 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %45, i32* %51, align 4
  %52 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %53 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PERF_HES_ARCH, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %44
  br label %64

60:                                               ; preds = %44
  %61 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %62 = load i32, i32* @PERF_EF_RELOAD, align 4
  %63 = call i32 @sparc_pmu_start(%struct.perf_event* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %59, %43
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %15

67:                                               ; preds = %15
  br label %68

68:                                               ; preds = %67, %13
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %99, %68
  %70 = load i32, i32* %3, align 4
  %71 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %72 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %102

75:                                               ; preds = %69
  %76 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %77 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %76, i32 0, i32 3
  %78 = load %struct.perf_event**, %struct.perf_event*** %77, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %78, i64 %80
  %82 = load %struct.perf_event*, %struct.perf_event** %81, align 8
  store %struct.perf_event* %82, %struct.perf_event** %7, align 8
  %83 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %84 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %8, align 4
  %87 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %88 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %92 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %90
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %75
  %100 = load i32, i32* %3, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %3, align 4
  br label %69

102:                                              ; preds = %69
  ret void
}

declare dso_local i32 @sparc_pmu_start(%struct.perf_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
