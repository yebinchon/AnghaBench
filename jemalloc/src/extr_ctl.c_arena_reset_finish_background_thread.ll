; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_ctl.c_arena_reset_finish_background_thread.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_ctl.c_arena_reset_finish_background_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@have_background_thread = common dso_local global i64 0, align 8
@background_thread_paused = common dso_local global i64 0, align 8
@background_thread_started = common dso_local global i64 0, align 8
@background_thread_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @arena_reset_finish_background_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arena_reset_finish_background_thread(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @have_background_thread, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %38

8:                                                ; preds = %2
  %9 = call i64 (...) @background_thread_enabled()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.TYPE_3__* @background_thread_info_get(i32 %12)
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %5, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @background_thread_paused, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @tsd_tsdn(i32* %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = call i32 @malloc_mutex_lock(i32 %22, i32* %24)
  %26 = load i64, i64* @background_thread_started, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @tsd_tsdn(i32* %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = call i32 @malloc_mutex_unlock(i32 %30, i32* %32)
  br label %34

34:                                               ; preds = %11, %8
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @tsd_tsdn(i32* %35)
  %37 = call i32 @malloc_mutex_unlock(i32 %36, i32* @background_thread_lock)
  br label %38

38:                                               ; preds = %34, %2
  ret void
}

declare dso_local i64 @background_thread_enabled(...) #1

declare dso_local %struct.TYPE_3__* @background_thread_info_get(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @malloc_mutex_lock(i32, i32*) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i32 @malloc_mutex_unlock(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
