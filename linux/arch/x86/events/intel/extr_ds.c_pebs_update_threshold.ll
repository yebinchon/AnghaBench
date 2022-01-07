; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_pebs_update_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_pebs_update_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.cpu_hw_events = type { i64, i64, i32, i64, %struct.debug_store* }
%struct.debug_store = type { i64, i64, i64 }

@x86_pmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PMU_FL_PEBS_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_hw_events*)* @pebs_update_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pebs_update_threshold(%struct.cpu_hw_events* %0) #0 {
  %2 = alloca %struct.cpu_hw_events*, align 8
  %3 = alloca %struct.debug_store*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %2, align 8
  %6 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %7 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %6, i32 0, i32 4
  %8 = load %struct.debug_store*, %struct.debug_store** %7, align 8
  store %struct.debug_store* %8, %struct.debug_store** %3, align 8
  %9 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %10 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %57

14:                                               ; preds = %1
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 4
  %16 = load i32, i32* @PMU_FL_PEBS_ALL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 1), align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 2), align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %5, align 4
  br label %25

23:                                               ; preds = %14
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 1), align 4
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %23, %19
  %26 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %27 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %30 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %25
  %34 = load %struct.debug_store*, %struct.debug_store** %3, align 8
  %35 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %39 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 %37, %40
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %36, %42
  store i64 %43, i64* %4, align 8
  br label %53

44:                                               ; preds = %25
  %45 = load %struct.debug_store*, %struct.debug_store** %3, align 8
  %46 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %49 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %47, %51
  store i64 %52, i64* %4, align 8
  br label %53

53:                                               ; preds = %44, %33
  %54 = load i64, i64* %4, align 8
  %55 = load %struct.debug_store*, %struct.debug_store** %3, align 8
  %56 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %53, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
