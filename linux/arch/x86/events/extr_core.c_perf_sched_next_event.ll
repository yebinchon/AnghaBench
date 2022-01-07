; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_perf_sched_next_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_perf_sched_next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sched = type { i64, i64, %struct.TYPE_2__, %struct.event_constraint** }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }
%struct.event_constraint = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_sched*)* @perf_sched_next_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_sched_next_event(%struct.perf_sched* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_sched*, align 8
  %4 = alloca %struct.event_constraint*, align 8
  store %struct.perf_sched* %0, %struct.perf_sched** %3, align 8
  %5 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %6 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %12 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %13, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %75

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %62, %18
  %20 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %21 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %22, align 8
  %25 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %26 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %30 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp uge i64 %28, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %19
  %34 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %35 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %38 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %43 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %47 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %75

51:                                               ; preds = %33
  br label %52

52:                                               ; preds = %51, %19
  %53 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %54 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %53, i32 0, i32 3
  %55 = load %struct.event_constraint**, %struct.event_constraint*** %54, align 8
  %56 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %57 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.event_constraint*, %struct.event_constraint** %55, i64 %59
  %61 = load %struct.event_constraint*, %struct.event_constraint** %60, align 8
  store %struct.event_constraint* %61, %struct.event_constraint** %4, align 8
  br label %62

62:                                               ; preds = %52
  %63 = load %struct.event_constraint*, %struct.event_constraint** %4, align 8
  %64 = getelementptr inbounds %struct.event_constraint, %struct.event_constraint* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %67 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %65, %69
  br i1 %70, label %19, label %71

71:                                               ; preds = %62
  %72 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %73 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  store i32 1, i32* %2, align 4
  br label %75

75:                                               ; preds = %71, %50, %17
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
