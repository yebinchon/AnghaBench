; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_8xx-pmu.c_event_type.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_8xx-pmu.c_event_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@PERF_COUNT_HW_CPU_CYCLES = common dso_local global i32 0, align 4
@PERF_8xx_ID_CPU_CYCLES = common dso_local global i32 0, align 4
@PERF_COUNT_HW_INSTRUCTIONS = common dso_local global i32 0, align 4
@PERF_8xx_ID_HW_INSTRUCTIONS = common dso_local global i32 0, align 4
@ITLB_LOAD_MISS = common dso_local global i32 0, align 4
@PERF_8xx_ID_ITLB_LOAD_MISS = common dso_local global i32 0, align 4
@DTLB_LOAD_MISS = common dso_local global i32 0, align 4
@PERF_8xx_ID_DTLB_LOAD_MISS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @event_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_type(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %4 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %5 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %47 [
    i32 130, label %8
    i32 129, label %27
    i32 128, label %46
  ]

8:                                                ; preds = %1
  %9 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PERF_COUNT_HW_CPU_CYCLES, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = load i32, i32* @PERF_8xx_ID_CPU_CYCLES, align 4
  store i32 %16, i32* %2, align 4
  br label %53

17:                                               ; preds = %8
  %18 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %19 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PERF_COUNT_HW_INSTRUCTIONS, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @PERF_8xx_ID_HW_INSTRUCTIONS, align 4
  store i32 %25, i32* %2, align 4
  br label %53

26:                                               ; preds = %17
  br label %50

27:                                               ; preds = %1
  %28 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %29 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ITLB_LOAD_MISS, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @PERF_8xx_ID_ITLB_LOAD_MISS, align 4
  store i32 %35, i32* %2, align 4
  br label %53

36:                                               ; preds = %27
  %37 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %38 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DTLB_LOAD_MISS, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @PERF_8xx_ID_DTLB_LOAD_MISS, align 4
  store i32 %44, i32* %2, align 4
  br label %53

45:                                               ; preds = %36
  br label %50

46:                                               ; preds = %1
  br label %50

47:                                               ; preds = %1
  %48 = load i32, i32* @ENOENT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %53

50:                                               ; preds = %46, %45, %26
  %51 = load i32, i32* @EOPNOTSUPP, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %50, %47, %43, %34, %24, %15
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
