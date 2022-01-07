; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_tcache.c_tcache_stats_merge.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_tcache.c_tcache_stats_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@config_stats = common dso_local global i32 0, align 4
@SC_NBINS = common dso_local global i32 0, align 4
@nhbins = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcache_stats_merge(i32* %0, i32* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %6, align 8
  %12 = load i32, i32* @config_stats, align 4
  %13 = call i32 @cassert(i32 %12)
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %44, %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @SC_NBINS, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %14
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.TYPE_13__* @tcache_small_bin_get(i32* %19, i32 %20)
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %8, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.TYPE_14__* @arena_bin_choose_lock(i32* %22, %struct.TYPE_15__* %23, i32 %24, i32* %9)
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %10, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %29
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = call i32 @malloc_mutex_unlock(i32* %37, i32* %39)
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %18
  %45 = load i32, i32* %7, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %14

47:                                               ; preds = %14
  br label %48

48:                                               ; preds = %68, %47
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @nhbins, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %48
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call %struct.TYPE_13__* @tcache_large_bin_get(i32* %53, i32 %54)
  store %struct.TYPE_13__* %55, %struct.TYPE_13__** %11, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @arena_stats_large_flush_nrequests_add(i32* %56, i32* %58, i32 %59, i64 %63)
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %52
  %69 = load i32, i32* %7, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %48

71:                                               ; preds = %48
  ret void
}

declare dso_local i32 @cassert(i32) #1

declare dso_local %struct.TYPE_13__* @tcache_small_bin_get(i32*, i32) #1

declare dso_local %struct.TYPE_14__* @arena_bin_choose_lock(i32*, %struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @malloc_mutex_unlock(i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @tcache_large_bin_get(i32*, i32) #1

declare dso_local i32 @arena_stats_large_flush_nrequests_add(i32*, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
