; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_perf_event.c_xtensa_pmu_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_perf_event.c_xtensa_pmu_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@xtensa_hw_ctl = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@XTENSA_PMU_PMCTRL_SELECT = common dso_local global i32 0, align 4
@XTENSA_PMU_PMCTRL_SELECT_SHIFT = common dso_local global i32 0, align 4
@XTENSA_PMU_PMCTRL_KRNLCNT = common dso_local global i32 0, align 4
@XTENSA_PMU_PMCTRL_TRACELEVEL = common dso_local global i32 0, align 4
@XTENSA_PMU_PMCTRL_MASK = common dso_local global i32 0, align 4
@XTENSA_PMU_PMCTRL_INTEN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @xtensa_pmu_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xtensa_pmu_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %5 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %6 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %91 [
    i32 130, label %9
    i32 129, label %40
    i32 128, label %55
  ]

9:                                                ; preds = %1
  %10 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i32*, i32** @xtensa_hw_ctl, align 8
  %15 = call i64 @ARRAY_SIZE(i32* %14)
  %16 = icmp uge i64 %13, %15
  br i1 %16, label %26, label %17

17:                                               ; preds = %9
  %18 = load i32*, i32** @xtensa_hw_ctl, align 8
  %19 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %20 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %18, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17, %9
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %94

29:                                               ; preds = %17
  %30 = load i32*, i32** @xtensa_hw_ctl, align 8
  %31 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %32 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %38 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  store i32 0, i32* %2, align 4
  br label %94

40:                                               ; preds = %1
  %41 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %42 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @xtensa_pmu_cache_event(i64 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %94

50:                                               ; preds = %40
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %53 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  store i32 0, i32* %2, align 4
  br label %94

55:                                               ; preds = %1
  %56 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %57 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @XTENSA_PMU_PMCTRL_SELECT, align 4
  %61 = sext i32 %60 to i64
  %62 = and i64 %59, %61
  %63 = load i32, i32* @XTENSA_PMU_PMCTRL_SELECT_SHIFT, align 4
  %64 = shl i32 1, %63
  %65 = sext i32 %64 to i64
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %55
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %94

70:                                               ; preds = %55
  %71 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %72 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @XTENSA_PMU_PMCTRL_KRNLCNT, align 4
  %76 = load i32, i32* @XTENSA_PMU_PMCTRL_TRACELEVEL, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @XTENSA_PMU_PMCTRL_SELECT, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @XTENSA_PMU_PMCTRL_MASK, align 4
  %81 = or i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = and i64 %74, %82
  %84 = load i32, i32* @XTENSA_PMU_PMCTRL_INTEN, align 4
  %85 = sext i32 %84 to i64
  %86 = or i64 %83, %85
  %87 = trunc i64 %86 to i32
  %88 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %89 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  store i32 0, i32* %2, align 4
  br label %94

91:                                               ; preds = %1
  %92 = load i32, i32* @ENOENT, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %91, %70, %67, %50, %48, %29, %26
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @xtensa_pmu_cache_event(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
