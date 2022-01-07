; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_perf_event.c_arc_pmu_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_perf_event.c_arc_pmu_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32, i32 }
%struct.arc_pmu_cpu = type { %struct.perf_event**, i32* }

@arc_pmu_cpu = common dso_local global i32 0, align 4
@arc_pmu = common dso_local global %struct.TYPE_2__* null, align 8
@EAGAIN = common dso_local global i32 0, align 4
@ARC_REG_PCT_INDEX = common dso_local global i32 0, align 4
@ARC_REG_PCT_INT_CNTL = common dso_local global i32 0, align 4
@ARC_REG_PCT_INT_CNTH = common dso_local global i32 0, align 4
@ARC_REG_PCT_CONFIG = common dso_local global i32 0, align 4
@ARC_REG_PCT_COUNTL = common dso_local global i32 0, align 4
@ARC_REG_PCT_COUNTH = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_EF_START = common dso_local global i32 0, align 4
@PERF_EF_RELOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @arc_pmu_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arc_pmu_add(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.arc_pmu_cpu*, align 8
  %7 = alloca %struct.hw_perf_event*, align 8
  %8 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call %struct.arc_pmu_cpu* @this_cpu_ptr(i32* @arc_pmu_cpu)
  store %struct.arc_pmu_cpu* %9, %struct.arc_pmu_cpu** %6, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 0
  store %struct.hw_perf_event* %11, %struct.hw_perf_event** %7, align 8
  %12 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %13 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.arc_pmu_cpu*, %struct.arc_pmu_cpu** %6, align 8
  %16 = getelementptr inbounds %struct.arc_pmu_cpu, %struct.arc_pmu_cpu* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ffz(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arc_pmu, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %90

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.arc_pmu_cpu*, %struct.arc_pmu_cpu** %6, align 8
  %32 = getelementptr inbounds %struct.arc_pmu_cpu, %struct.arc_pmu_cpu* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @__set_bit(i32 %30, i32* %33)
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %37 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @ARC_REG_PCT_INDEX, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @write_aux_reg(i32 %38, i32 %39)
  %41 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %42 = load %struct.arc_pmu_cpu*, %struct.arc_pmu_cpu** %6, align 8
  %43 = getelementptr inbounds %struct.arc_pmu_cpu, %struct.arc_pmu_cpu* %42, i32 0, i32 0
  %44 = load %struct.perf_event**, %struct.perf_event*** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %44, i64 %46
  store %struct.perf_event* %41, %struct.perf_event** %47, align 8
  %48 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %49 = call i64 @is_sampling_event(%struct.perf_event* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %29
  %52 = load i32, i32* @ARC_REG_PCT_INT_CNTL, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arc_pmu, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @lower_32_bits(i32 %55)
  %57 = call i32 @write_aux_reg(i32 %52, i32 %56)
  %58 = load i32, i32* @ARC_REG_PCT_INT_CNTH, align 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arc_pmu, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @upper_32_bits(i32 %61)
  %63 = call i32 @write_aux_reg(i32 %58, i32 %62)
  br label %64

64:                                               ; preds = %51, %29
  %65 = load i32, i32* @ARC_REG_PCT_CONFIG, align 4
  %66 = call i32 @write_aux_reg(i32 %65, i32 0)
  %67 = load i32, i32* @ARC_REG_PCT_COUNTL, align 4
  %68 = call i32 @write_aux_reg(i32 %67, i32 0)
  %69 = load i32, i32* @ARC_REG_PCT_COUNTH, align 4
  %70 = call i32 @write_aux_reg(i32 %69, i32 0)
  %71 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %72 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %71, i32 0, i32 2
  %73 = call i32 @local64_set(i32* %72, i32 0)
  %74 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %75 = load i32, i32* @PERF_HES_STOPPED, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %78 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @PERF_EF_START, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %64
  %84 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %85 = load i32, i32* @PERF_EF_RELOAD, align 4
  %86 = call i32 @arc_pmu_start(%struct.perf_event* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %64
  %88 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %89 = call i32 @perf_event_update_userpage(%struct.perf_event* %88)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %87, %26
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.arc_pmu_cpu* @this_cpu_ptr(i32*) #1

declare dso_local i32 @ffz(i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @write_aux_reg(i32, i32) #1

declare dso_local i64 @is_sampling_event(%struct.perf_event*) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @local64_set(i32*, i32) #1

declare dso_local i32 @arc_pmu_start(%struct.perf_event*, i32) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
