; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_perf_event.c_read_in_all_counters.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_perf_event.c_read_in_all_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_hw_events = type { i32, i64*, %struct.perf_event** }
%struct.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@PIC_NO_INDEX = common dso_local global i64 0, align 8
@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_HES_ARCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_hw_events*)* @read_in_all_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_in_all_counters(%struct.cpu_hw_events* %0) #0 {
  %2 = alloca %struct.cpu_hw_events*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %76, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %8 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %79

11:                                               ; preds = %5
  %12 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %13 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %12, i32 0, i32 2
  %14 = load %struct.perf_event**, %struct.perf_event*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %14, i64 %16
  %18 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  store %struct.perf_event* %18, %struct.perf_event** %4, align 8
  %19 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %20 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PIC_NO_INDEX, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %75

28:                                               ; preds = %11
  %29 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %30 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %37 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %35, %39
  br i1 %40, label %41, label %75

41:                                               ; preds = %28
  %42 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %43 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %44 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %43, i32 0, i32 0
  %45 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %46 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @sparc_perf_event_update(%struct.perf_event* %42, %struct.TYPE_2__* %44, i64 %51)
  %53 = load i64, i64* @PIC_NO_INDEX, align 8
  %54 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %55 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  store i64 %53, i64* %59, align 8
  %60 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %61 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @PERF_HES_STOPPED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %41
  %68 = load i32, i32* @PERF_HES_ARCH, align 4
  %69 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %70 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %68
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %67, %41
  br label %75

75:                                               ; preds = %74, %28, %11
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %5

79:                                               ; preds = %5
  ret void
}

declare dso_local i32 @sparc_perf_event_update(%struct.perf_event*, %struct.TYPE_2__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
