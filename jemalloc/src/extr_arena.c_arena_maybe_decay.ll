; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_maybe_decay.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_maybe_decay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_10__*, i32*, i32)* @arena_maybe_decay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arena_maybe_decay(i32* %0, i32* %1, %struct.TYPE_10__* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = call i32 @malloc_mutex_assert_owner(i32* %15, i32* %17)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %20 = call i64 @arena_decay_ms_read(%struct.TYPE_10__* %19)
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %5
  %24 = load i64, i64* %12, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i32*, i32** %7, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @eset_npages_get(i32* %31)
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @arena_decay_to_limit(i32* %27, i32* %28, %struct.TYPE_10__* %29, i32* %30, i32 0, i32 0, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %26, %23
  store i32 0, i32* %6, align 4
  br label %93

36:                                               ; preds = %5
  %37 = call i32 @nstime_init(i32* %13, i32 0)
  %38 = call i32 @nstime_update(i32* %13)
  %39 = call i32 (...) @nstime_monotonic()
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = call i64 @nstime_compare(i32* %43, i32* %13)
  %45 = icmp sgt i64 %44, 0
  br label %46

46:                                               ; preds = %41, %36
  %47 = phi i1 [ false, %36 ], [ %45, %41 ]
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = call i32 @nstime_copy(i32* %53, i32* %13)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %56 = call i32 @arena_decay_deadline_init(%struct.TYPE_10__* %55)
  br label %64

57:                                               ; preds = %46
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = call i64 @nstime_compare(i32* %59, i32* %13)
  %61 = icmp sle i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  br label %64

64:                                               ; preds = %57, %51
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %66 = call i32 @arena_decay_deadline_reached(%struct.TYPE_10__* %65, i32* %13)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load i32*, i32** %7, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @arena_decay_epoch_advance(i32* %70, i32* %71, %struct.TYPE_10__* %72, i32* %73, i32* %13, i32 %74)
  br label %91

76:                                               ; preds = %64
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = load i32*, i32** %7, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @eset_npages_get(i32* %84)
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %87 = call i32 @arena_decay_backlog_npages_limit(%struct.TYPE_10__* %86)
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @arena_decay_try_purge(i32* %80, i32* %81, %struct.TYPE_10__* %82, i32* %83, i32 %85, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %79, %76
  br label %91

91:                                               ; preds = %90, %69
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %91, %35
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @malloc_mutex_assert_owner(i32*, i32*) #1

declare dso_local i64 @arena_decay_ms_read(%struct.TYPE_10__*) #1

declare dso_local i32 @arena_decay_to_limit(i32*, i32*, %struct.TYPE_10__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @eset_npages_get(i32*) #1

declare dso_local i32 @nstime_init(i32*, i32) #1

declare dso_local i32 @nstime_update(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nstime_monotonic(...) #1

declare dso_local i64 @nstime_compare(i32*, i32*) #1

declare dso_local i32 @nstime_copy(i32*, i32*) #1

declare dso_local i32 @arena_decay_deadline_init(%struct.TYPE_10__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @arena_decay_deadline_reached(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @arena_decay_epoch_advance(i32*, i32*, %struct.TYPE_10__*, i32*, i32*, i32) #1

declare dso_local i32 @arena_decay_try_purge(i32*, i32*, %struct.TYPE_10__*, i32*, i32, i32, i32) #1

declare dso_local i32 @arena_decay_backlog_npages_limit(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
