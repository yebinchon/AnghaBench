; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c___intel_shared_reg_get_constraints.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c___intel_shared_reg_get_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_constraint = type { i32 }
%struct.cpu_hw_events = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.er_account* }
%struct.er_account = type { i64, i32, i32, i32 }
%struct.perf_event = type { i32 }
%struct.hw_perf_event_extra = type { i32, i32, i64, i32 }

@emptyconstraint = common dso_local global %struct.event_constraint zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.event_constraint* (%struct.cpu_hw_events*, %struct.perf_event*, %struct.hw_perf_event_extra*)* @__intel_shared_reg_get_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.event_constraint* @__intel_shared_reg_get_constraints(%struct.cpu_hw_events* %0, %struct.perf_event* %1, %struct.hw_perf_event_extra* %2) #0 {
  %4 = alloca %struct.event_constraint*, align 8
  %5 = alloca %struct.cpu_hw_events*, align 8
  %6 = alloca %struct.perf_event*, align 8
  %7 = alloca %struct.hw_perf_event_extra*, align 8
  %8 = alloca %struct.event_constraint*, align 8
  %9 = alloca %struct.er_account*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %5, align 8
  store %struct.perf_event* %1, %struct.perf_event** %6, align 8
  store %struct.hw_perf_event_extra* %2, %struct.hw_perf_event_extra** %7, align 8
  store %struct.event_constraint* @emptyconstraint, %struct.event_constraint** %8, align 8
  %12 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %13 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %11, align 4
  %15 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %16 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %21 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store %struct.event_constraint* null, %struct.event_constraint** %4, align 8
  br label %106

25:                                               ; preds = %19, %3
  br label %26

26:                                               ; preds = %94, %25
  %27 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %28 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.er_account*, %struct.er_account** %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.er_account, %struct.er_account* %31, i64 %33
  store %struct.er_account* %34, %struct.er_account** %9, align 8
  %35 = load %struct.er_account*, %struct.er_account** %9, align 8
  %36 = getelementptr inbounds %struct.er_account, %struct.er_account* %35, i32 0, i32 1
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @raw_spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.er_account*, %struct.er_account** %9, align 8
  %40 = getelementptr inbounds %struct.er_account, %struct.er_account* %39, i32 0, i32 2
  %41 = call i32 @atomic_read(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %26
  %44 = load %struct.er_account*, %struct.er_account** %9, align 8
  %45 = getelementptr inbounds %struct.er_account, %struct.er_account* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %48 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %83

51:                                               ; preds = %43, %26
  %52 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %53 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %59 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %57, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @intel_fixup_er(%struct.perf_event* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %56
  %67 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %68 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %51
  %70 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %71 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.er_account*, %struct.er_account** %9, align 8
  %74 = getelementptr inbounds %struct.er_account, %struct.er_account* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %76 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.er_account*, %struct.er_account** %9, align 8
  %79 = getelementptr inbounds %struct.er_account, %struct.er_account* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  %80 = load %struct.er_account*, %struct.er_account** %9, align 8
  %81 = getelementptr inbounds %struct.er_account, %struct.er_account* %80, i32 0, i32 2
  %82 = call i32 @atomic_inc(i32* %81)
  store %struct.event_constraint* null, %struct.event_constraint** %8, align 8
  br label %100

83:                                               ; preds = %43
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %86 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @intel_alt_er(i32 %84, i64 %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %91 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %89, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %83
  %95 = load %struct.er_account*, %struct.er_account** %9, align 8
  %96 = getelementptr inbounds %struct.er_account, %struct.er_account* %95, i32 0, i32 1
  %97 = load i64, i64* %10, align 8
  %98 = call i32 @raw_spin_unlock_irqrestore(i32* %96, i64 %97)
  br label %26

99:                                               ; preds = %83
  br label %100

100:                                              ; preds = %99, %69
  %101 = load %struct.er_account*, %struct.er_account** %9, align 8
  %102 = getelementptr inbounds %struct.er_account, %struct.er_account* %101, i32 0, i32 1
  %103 = load i64, i64* %10, align 8
  %104 = call i32 @raw_spin_unlock_irqrestore(i32* %102, i64 %103)
  %105 = load %struct.event_constraint*, %struct.event_constraint** %8, align 8
  store %struct.event_constraint* %105, %struct.event_constraint** %4, align 8
  br label %106

106:                                              ; preds = %100, %24
  %107 = load %struct.event_constraint*, %struct.event_constraint** %4, align 8
  ret %struct.event_constraint* %107
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @intel_fixup_er(%struct.perf_event*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @intel_alt_er(i32, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
