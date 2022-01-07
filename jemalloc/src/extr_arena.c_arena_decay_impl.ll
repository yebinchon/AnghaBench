; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_decay_impl.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_decay_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64*, i32 }

@SMOOTHSTEP_NSTEPS = common dso_local global i32 0, align 4
@have_background_thread = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_6__*, i32*, i32, i32)* @arena_decay_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arena_decay_impl(i32* %0, i32* %1, %struct.TYPE_6__* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %6
  %19 = load i32*, i32** %8, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = call i32 @malloc_mutex_lock(i32* %19, i32* %21)
  %23 = load i32*, i32** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* %13, align 4
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @eset_npages_get(i32* %28)
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @arena_decay_to_limit(i32* %23, i32* %24, %struct.TYPE_6__* %25, i32* %26, i32 %27, i32 0, i32 %29, i32 %30)
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = call i32 @malloc_mutex_unlock(i32* %32, i32* %34)
  store i32 0, i32* %7, align 4
  br label %84

36:                                               ; preds = %6
  %37 = load i32*, i32** %8, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = call i64 @malloc_mutex_trylock(i32* %37, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 1, i32* %7, align 4
  br label %84

43:                                               ; preds = %36
  %44 = load i32*, i32** %8, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @arena_maybe_decay(i32* %44, i32* %45, %struct.TYPE_6__* %46, i32* %47, i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %43
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* @SMOOTHSTEP_NSTEPS, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %55, i64 %58
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %15, align 8
  br label %61

61:                                               ; preds = %52, %43
  %62 = load i32*, i32** %8, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = call i32 @malloc_mutex_unlock(i32* %62, i32* %64)
  %66 = load i64, i64* @have_background_thread, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %61
  %69 = call i64 (...) @background_thread_enabled()
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %68
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %74
  %78 = load i32*, i32** %8, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %81 = load i64, i64* %15, align 8
  %82 = call i32 @background_thread_interval_check(i32* %78, i32* %79, %struct.TYPE_6__* %80, i64 %81)
  br label %83

83:                                               ; preds = %77, %74, %71, %68, %61
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %83, %42, %18
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i32 @malloc_mutex_lock(i32*, i32*) #1

declare dso_local i32 @arena_decay_to_limit(i32*, i32*, %struct.TYPE_6__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @eset_npages_get(i32*) #1

declare dso_local i32 @malloc_mutex_unlock(i32*, i32*) #1

declare dso_local i64 @malloc_mutex_trylock(i32*, i32*) #1

declare dso_local i32 @arena_maybe_decay(i32*, i32*, %struct.TYPE_6__*, i32*, i32) #1

declare dso_local i64 @background_thread_enabled(...) #1

declare dso_local i32 @background_thread_interval_check(i32*, i32*, %struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
