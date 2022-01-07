; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_bin_reset.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_bin_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32, i32, i32* }
%struct.TYPE_5__ = type { i64, i64 }

@config_stats = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_6__*)* @arena_bin_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arena_bin_reset(i32* %0, i32* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @tsd_tsdn(i32* %8)
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = call i32 @malloc_mutex_lock(i32 %9, i32* %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %38

17:                                               ; preds = %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %7, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 4
  store i32* null, i32** %22, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @tsd_tsdn(i32* %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = call i32 @malloc_mutex_unlock(i32 %24, i32* %26)
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @tsd_tsdn(i32* %28)
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @arena_slab_dalloc(i32 %29, i32* %30, i32* %31)
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @tsd_tsdn(i32* %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = call i32 @malloc_mutex_lock(i32 %34, i32* %36)
  br label %38

38:                                               ; preds = %17, %3
  br label %39

39:                                               ; preds = %44, %38
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  %42 = call i32* @extent_heap_remove_first(i32* %41)
  store i32* %42, i32** %7, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %39
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @tsd_tsdn(i32* %45)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = call i32 @malloc_mutex_unlock(i32 %46, i32* %48)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @tsd_tsdn(i32* %50)
  %52 = load i32*, i32** %5, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @arena_slab_dalloc(i32 %51, i32* %52, i32* %53)
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @tsd_tsdn(i32* %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = call i32 @malloc_mutex_lock(i32 %56, i32* %58)
  br label %39

60:                                               ; preds = %39
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = call i32* @extent_list_first(i32* %62)
  store i32* %63, i32** %7, align 8
  br label %64

64:                                               ; preds = %87, %60
  %65 = load i32*, i32** %7, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %91

67:                                               ; preds = %64
  %68 = load i32*, i32** %5, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @arena_bin_slabs_full_remove(i32* %68, %struct.TYPE_6__* %69, i32* %70)
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @tsd_tsdn(i32* %72)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = call i32 @malloc_mutex_unlock(i32 %73, i32* %75)
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @tsd_tsdn(i32* %77)
  %79 = load i32*, i32** %5, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @arena_slab_dalloc(i32 %78, i32* %79, i32* %80)
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @tsd_tsdn(i32* %82)
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = call i32 @malloc_mutex_lock(i32 %83, i32* %85)
  br label %87

87:                                               ; preds = %67
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = call i32* @extent_list_first(i32* %89)
  store i32* %90, i32** %7, align 8
  br label %64

91:                                               ; preds = %64
  %92 = load i64, i64* @config_stats, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  store i64 0, i64* %97, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %94, %91
  %102 = load i32*, i32** %4, align 8
  %103 = call i32 @tsd_tsdn(i32* %102)
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = call i32 @malloc_mutex_unlock(i32 %103, i32* %105)
  ret void
}

declare dso_local i32 @malloc_mutex_lock(i32, i32*) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i32 @malloc_mutex_unlock(i32, i32*) #1

declare dso_local i32 @arena_slab_dalloc(i32, i32*, i32*) #1

declare dso_local i32* @extent_heap_remove_first(i32*) #1

declare dso_local i32* @extent_list_first(i32*) #1

declare dso_local i32 @arena_bin_slabs_full_remove(i32*, %struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
