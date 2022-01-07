; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_ctl.c_arena_reset_prepare_background_thread.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_ctl.c_arena_reset_prepare_background_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@have_background_thread = common dso_local global i64 0, align 8
@background_thread_lock = common dso_local global i32 0, align 4
@background_thread_started = common dso_local global i64 0, align 8
@background_thread_paused = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @arena_reset_prepare_background_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arena_reset_prepare_background_thread(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @have_background_thread, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %38

8:                                                ; preds = %2
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @tsd_tsdn(i32* %9)
  %11 = call i32 @malloc_mutex_lock(i32 %10, i32* @background_thread_lock)
  %12 = call i64 (...) @background_thread_enabled()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %8
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.TYPE_3__* @background_thread_info_get(i32 %15)
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %5, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @background_thread_started, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @tsd_tsdn(i32* %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = call i32 @malloc_mutex_lock(i32 %25, i32* %27)
  %29 = load i64, i64* @background_thread_paused, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @tsd_tsdn(i32* %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = call i32 @malloc_mutex_unlock(i32 %33, i32* %35)
  br label %37

37:                                               ; preds = %14, %8
  br label %38

38:                                               ; preds = %37, %2
  ret void
}

declare dso_local i32 @malloc_mutex_lock(i32, i32*) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i64 @background_thread_enabled(...) #1

declare dso_local %struct.TYPE_3__* @background_thread_info_get(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @malloc_mutex_unlock(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
