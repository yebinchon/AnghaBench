; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_perf_event.c_sparc_pmu_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_perf_event.c_sparc_pmu_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.perf_event = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.cpu_hw_events = type { i32, i32, i32, i32*, %struct.perf_event**, i32* }

@cpu_hw_events = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@sparc_pmu = common dso_local global %struct.TYPE_4__* null, align 8
@PIC_NO_INDEX = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_EF_START = common dso_local global i32 0, align 4
@PERF_HES_ARCH = common dso_local global i32 0, align 4
@PERF_PMU_TXN_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @sparc_pmu_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparc_pmu_add(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpu_hw_events*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %9, %struct.cpu_hw_events** %5, align 8
  %10 = load i32, i32* @EAGAIN, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @local_irq_save(i64 %12)
  %14 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %15 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sparc_pmu, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %103

23:                                               ; preds = %2
  %24 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %25 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %26 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %25, i32 0, i32 4
  %27 = load %struct.perf_event**, %struct.perf_event*** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %27, i64 %29
  store %struct.perf_event* %24, %struct.perf_event** %30, align 8
  %31 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %32 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %36 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  %41 = load i32, i32* @PIC_NO_INDEX, align 4
  %42 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %43 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %42, i32 0, i32 5
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %41, i32* %47, align 4
  %48 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %49 = load i32, i32* @PERF_HES_STOPPED, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %52 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @PERF_EF_START, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %23
  %59 = load i32, i32* @PERF_HES_ARCH, align 4
  %60 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %61 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %59
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %58, %23
  %66 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %67 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @PERF_PMU_TXN_ADD, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %94

73:                                               ; preds = %65
  %74 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %75 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %74, i32 0, i32 4
  %76 = load %struct.perf_event**, %struct.perf_event*** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i64 @check_excludes(%struct.perf_event** %76, i32 %77, i32 1)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %103

81:                                               ; preds = %73
  %82 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %83 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %82, i32 0, i32 4
  %84 = load %struct.perf_event**, %struct.perf_event*** %83, align 8
  %85 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %86 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  %90 = call i64 @sparc_check_constraints(%struct.perf_event** %84, i32* %87, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  br label %103

93:                                               ; preds = %81
  br label %94

94:                                               ; preds = %93, %72
  %95 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %96 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  %99 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %100 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  store i32 0, i32* %7, align 4
  br label %103

103:                                              ; preds = %94, %92, %80, %22
  %104 = load i64, i64* %8, align 8
  %105 = call i32 @local_irq_restore(i64 %104)
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @check_excludes(%struct.perf_event**, i32, i32) #1

declare dso_local i64 @sparc_check_constraints(%struct.perf_event**, i32*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
