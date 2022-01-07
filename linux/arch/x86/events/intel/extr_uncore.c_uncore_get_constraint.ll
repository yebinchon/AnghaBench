; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore.c_uncore_get_constraint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore.c_uncore_get_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_constraint = type { i32 }
%struct.intel_uncore_box = type { %struct.intel_uncore_extra_reg* }
%struct.intel_uncore_extra_reg = type { i64, i64, i32, i32 }
%struct.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i64 }

@EXTRA_REG_NONE = common dso_local global i64 0, align 8
@uncore_constraint_empty = common dso_local global %struct.event_constraint zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.event_constraint* @uncore_get_constraint(%struct.intel_uncore_box* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.event_constraint*, align 8
  %4 = alloca %struct.intel_uncore_box*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.intel_uncore_extra_reg*, align 8
  %7 = alloca %struct.hw_perf_event_extra*, align 8
  %8 = alloca %struct.hw_perf_event_extra*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %4, align 8
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store %struct.hw_perf_event_extra* %13, %struct.hw_perf_event_extra** %7, align 8
  %14 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %15 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.hw_perf_event_extra* %16, %struct.hw_perf_event_extra** %8, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %18 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @EXTRA_REG_NONE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %31, label %22

22:                                               ; preds = %2
  %23 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %24 = call i32 @uncore_box_is_fake(%struct.intel_uncore_box* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %28 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %2
  store %struct.event_constraint* null, %struct.event_constraint** %3, align 8
  br label %94

32:                                               ; preds = %26, %22
  %33 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %34 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %33, i32 0, i32 0
  %35 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %34, align 8
  %36 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %37 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %35, i64 %38
  store %struct.intel_uncore_extra_reg* %39, %struct.intel_uncore_extra_reg** %6, align 8
  %40 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %6, align 8
  %41 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %40, i32 0, i32 2
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @raw_spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %6, align 8
  %45 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %44, i32 0, i32 3
  %46 = call i32 @atomic_read(i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %32
  %49 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %6, align 8
  %50 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %53 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %48
  %57 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %6, align 8
  %58 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %61 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %56, %32
  %65 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %6, align 8
  %66 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %65, i32 0, i32 3
  %67 = call i32 @atomic_inc(i32* %66)
  %68 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %69 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %6, align 8
  %72 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %74 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %6, align 8
  %77 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  store i32 1, i32* %10, align 4
  br label %78

78:                                               ; preds = %64, %56, %48
  %79 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %6, align 8
  %80 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %79, i32 0, i32 2
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @raw_spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %78
  %86 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %87 = call i32 @uncore_box_is_fake(%struct.intel_uncore_box* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %91 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %90, i32 0, i32 1
  store i32 1, i32* %91, align 8
  br label %92

92:                                               ; preds = %89, %85
  store %struct.event_constraint* null, %struct.event_constraint** %3, align 8
  br label %94

93:                                               ; preds = %78
  store %struct.event_constraint* @uncore_constraint_empty, %struct.event_constraint** %3, align 8
  br label %94

94:                                               ; preds = %93, %92, %31
  %95 = load %struct.event_constraint*, %struct.event_constraint** %3, align 8
  ret %struct.event_constraint* %95
}

declare dso_local i32 @uncore_box_is_fake(%struct.intel_uncore_box*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
