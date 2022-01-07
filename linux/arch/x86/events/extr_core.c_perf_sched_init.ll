; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_perf_sched_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_perf_sched_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sched = type { i32, i32, i32, %struct.TYPE_2__, %struct.event_constraint** }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.event_constraint = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_sched*, %struct.event_constraint**, i32, i32, i32, i32)* @perf_sched_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_sched_init(%struct.perf_sched* %0, %struct.event_constraint** %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.perf_sched*, align 8
  %8 = alloca %struct.event_constraint**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.perf_sched* %0, %struct.perf_sched** %7, align 8
  store %struct.event_constraint** %1, %struct.event_constraint*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.perf_sched*, %struct.perf_sched** %7, align 8
  %15 = call i32 @memset(%struct.perf_sched* %14, i32 0, i32 32)
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.perf_sched*, %struct.perf_sched** %7, align 8
  %18 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.perf_sched*, %struct.perf_sched** %7, align 8
  %21 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load %struct.perf_sched*, %struct.perf_sched** %7, align 8
  %24 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.event_constraint**, %struct.event_constraint*** %8, align 8
  %26 = load %struct.perf_sched*, %struct.perf_sched** %7, align 8
  %27 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %26, i32 0, i32 4
  store %struct.event_constraint** %25, %struct.event_constraint*** %27, align 8
  store i32 0, i32* %13, align 4
  br label %28

28:                                               ; preds = %44, %6
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load %struct.event_constraint**, %struct.event_constraint*** %8, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.event_constraint*, %struct.event_constraint** %33, i64 %35
  %37 = load %struct.event_constraint*, %struct.event_constraint** %36, align 8
  %38 = getelementptr inbounds %struct.event_constraint, %struct.event_constraint* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %47

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %13, align 4
  br label %28

47:                                               ; preds = %42, %28
  %48 = load i32, i32* %13, align 4
  %49 = load %struct.perf_sched*, %struct.perf_sched** %7, align 8
  %50 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.perf_sched*, %struct.perf_sched** %7, align 8
  %54 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.perf_sched*, %struct.perf_sched** %7, align 8
  %58 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 4
  ret void
}

declare dso_local i32 @memset(%struct.perf_sched*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
