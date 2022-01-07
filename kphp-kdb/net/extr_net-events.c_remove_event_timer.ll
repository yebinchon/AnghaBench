; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-events.c_remove_event_timer.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-events.c_remove_event_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@et_heap_size = common dso_local global i32 0, align 4
@et_heap = common dso_local global %struct.TYPE_5__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remove_event_timer(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @et_heap_size, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @et_heap, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %19, i64 %21
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = icmp eq %struct.TYPE_5__* %23, %24
  br label %26

26:                                               ; preds = %18, %14, %11
  %27 = phi i1 [ false, %14 ], [ false, %11 ], [ %25, %18 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  %32 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @et_heap, align 8
  %33 = load i32, i32* @et_heap_size, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* @et_heap_size, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %32, i64 %35
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @et_heap_size, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %46

42:                                               ; preds = %26
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @basic_et_adjust(%struct.TYPE_5__* %43, i32 %44)
  store i32 1, i32* %2, align 4
  br label %46

46:                                               ; preds = %42, %41, %10
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @basic_et_adjust(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
