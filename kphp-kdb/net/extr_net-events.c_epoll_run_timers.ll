; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-events.c_epoll_run_timers.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-events.c_epoll_run_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 (%struct.TYPE_5__*)* }

@et_heap_size = common dso_local global i64 0, align 8
@et_heap = common dso_local global %struct.TYPE_5__** null, align 8
@precise_now = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"%d event timers, next in %.3f seconds\0A\00", align 1
@pending_signals = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @epoll_run_timers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = load i64, i64* @et_heap_size, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store i32 100000, i32* %1, align 4
  br label %62

7:                                                ; preds = %0
  %8 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @et_heap, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %8, i64 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @precise_now, align 8
  %14 = sub nsw i64 %12, %13
  %15 = sitofp i64 %14 to double
  store double %15, double* %2, align 8
  %16 = load double, double* %2, align 8
  %17 = fcmp ogt double %16, 0.000000e+00
  br i1 %17, label %18, label %26

18:                                               ; preds = %7
  %19 = load i64, i64* @et_heap_size, align 8
  %20 = load double, double* %2, align 8
  %21 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %19, double %20)
  %22 = load double, double* %2, align 8
  %23 = fmul double %22, 1.000000e+03
  %24 = fptosi double %23 to i32
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %1, align 4
  br label %62

26:                                               ; preds = %7
  br label %27

27:                                               ; preds = %44, %26
  %28 = load i64, i64* @et_heap_size, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @et_heap, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %31, i64 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @precise_now, align 8
  %37 = icmp sle i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32, i32* @pending_signals, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %38, %30, %27
  %43 = phi i1 [ false, %30 ], [ false, %27 ], [ %41, %38 ]
  br i1 %43, label %44, label %61

44:                                               ; preds = %42
  %45 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @et_heap, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %45, i64 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %3, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 1
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = call i32 @remove_event_timer(%struct.TYPE_5__* %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %57, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = call i32 %58(%struct.TYPE_5__* %59)
  br label %27

61:                                               ; preds = %42
  store i32 0, i32* %1, align 4
  br label %62

62:                                               ; preds = %61, %18, %6
  %63 = load i32, i32* %1, align 4
  ret i32 %63
}

declare dso_local i32 @vkprintf(i32, i8*, i64, double) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @remove_event_timer(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
