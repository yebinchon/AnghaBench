; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_event_malloc.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_event_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, i64 }

@events_created = common dso_local global i32 0, align 4
@events_cnt = common dso_local global i32 0, align 4
@events_memory = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @event_malloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @get_event_size_d(i32 %5)
  store i64 %6, i64* %3, align 8
  %7 = load i32, i32* @events_created, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @events_created, align 4
  %9 = load i32, i32* @events_cnt, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @events_cnt, align 4
  %11 = call i64 (...) @dl_get_memory_used()
  %12 = load i32, i32* @events_memory, align 4
  %13 = sext i32 %12 to i64
  %14 = sub nsw i64 %13, %11
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* @events_memory, align 4
  %16 = load i64, i64* %3, align 8
  %17 = call %struct.TYPE_5__* @dl_malloc(i64 %16)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %4, align 8
  %18 = call i64 (...) @dl_get_memory_used()
  %19 = load i32, i32* @events_memory, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* @events_memory, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = call i32 @assert(%struct.TYPE_5__* %23)
  %25 = load i32, i32* %2, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  store i32* null, i32** %31, align 8
  %32 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %33 = call i32 @get_utime(i32 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %36
}

declare dso_local i64 @get_event_size_d(i32) #1

declare dso_local i64 @dl_get_memory_used(...) #1

declare dso_local %struct.TYPE_5__* @dl_malloc(i64) #1

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i32 @get_utime(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
