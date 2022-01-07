; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_extent_alloc_large.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_extent_alloc_large.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@EXTENT_HOOKS_INITIALIZER = common dso_local global i32* null, align 8
@WITNESS_RANK_CORE = common dso_local global i32 0, align 4
@sz_large_pad = common dso_local global i64 0, align 8
@config_stats = common dso_local global i64 0, align 8
@LG_PAGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @arena_extent_alloc_large(i32* %0, %struct.TYPE_11__* %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load i32*, i32** @EXTENT_HOOKS_INITIALIZER, align 8
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @tsdn_witness_tsdp_get(i32* %18)
  %20 = load i32, i32* @WITNESS_RANK_CORE, align 4
  %21 = call i32 @witness_assert_depth_to_rank(i32 %19, i32 %20, i32 0)
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @sz_size2index(i64 %22)
  store i32 %23, i32* %12, align 4
  store i32 1, i32* %14, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 2
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @sz_large_pad, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = call i32* @extents_alloc(i32* %24, %struct.TYPE_11__* %25, i32** %11, i32* %27, i32* null, i64 %28, i64 %29, i64 %30, i32 0, i32 %31, i32* %32, i32* %14)
  store i32* %33, i32** %15, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %51

36:                                               ; preds = %5
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %38 = call i64 @arena_may_have_muzzy(%struct.TYPE_11__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load i32*, i32** %6, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @sz_large_pad, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = call i32* @extents_alloc(i32* %41, %struct.TYPE_11__* %42, i32** %11, i32* %44, i32* null, i64 %45, i64 %46, i64 %47, i32 0, i32 %48, i32* %49, i32* %14)
  store i32* %50, i32** %15, align 8
  br label %51

51:                                               ; preds = %40, %36, %5
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @sz_large_pad, align 8
  %54 = add i64 %52, %53
  store i64 %54, i64* %16, align 8
  %55 = load i32*, i32** %15, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %71

57:                                               ; preds = %51
  %58 = load i32*, i32** %6, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @sz_large_pad, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load i32*, i32** %10, align 8
  %65 = call i32* @extent_alloc_wrapper(i32* %58, %struct.TYPE_11__* %59, i32** %11, i32* null, i64 %60, i64 %61, i64 %62, i32 0, i32 %63, i32* %64, i32* %14)
  store i32* %65, i32** %15, align 8
  %66 = load i64, i64* @config_stats, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %57
  %69 = load i64, i64* %16, align 8
  store i64 %69, i64* %13, align 8
  br label %70

70:                                               ; preds = %68, %57
  br label %76

71:                                               ; preds = %51
  %72 = load i64, i64* @config_stats, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i64 0, i64* %13, align 8
  br label %75

75:                                               ; preds = %74, %71
  br label %76

76:                                               ; preds = %75, %70
  %77 = load i32*, i32** %15, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %113

79:                                               ; preds = %76
  %80 = load i64, i64* @config_stats, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %107

82:                                               ; preds = %79
  %83 = load i32*, i32** %6, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = call i32 @arena_stats_lock(i32* %83, %struct.TYPE_12__* %85)
  %87 = load i32*, i32** %6, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %89 = load i64, i64* %8, align 8
  %90 = call i32 @arena_large_malloc_stats_update(i32* %87, %struct.TYPE_11__* %88, i64 %89)
  %91 = load i64, i64* %13, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %82
  %94 = load i32*, i32** %6, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i64, i64* %13, align 8
  %101 = call i32 @arena_stats_add_zu(i32* %94, %struct.TYPE_12__* %96, i32* %99, i64 %100)
  br label %102

102:                                              ; preds = %93, %82
  %103 = load i32*, i32** %6, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = call i32 @arena_stats_unlock(i32* %103, %struct.TYPE_12__* %105)
  br label %107

107:                                              ; preds = %102, %79
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %109 = load i64, i64* %16, align 8
  %110 = load i64, i64* @LG_PAGE, align 8
  %111 = lshr i64 %109, %110
  %112 = call i32 @arena_nactive_add(%struct.TYPE_11__* %108, i64 %111)
  br label %113

113:                                              ; preds = %107, %76
  %114 = load i32*, i32** %15, align 8
  ret i32* %114
}

declare dso_local i32 @witness_assert_depth_to_rank(i32, i32, i32) #1

declare dso_local i32 @tsdn_witness_tsdp_get(i32*) #1

declare dso_local i32 @sz_size2index(i64) #1

declare dso_local i32* @extents_alloc(i32*, %struct.TYPE_11__*, i32**, i32*, i32*, i64, i64, i64, i32, i32, i32*, i32*) #1

declare dso_local i64 @arena_may_have_muzzy(%struct.TYPE_11__*) #1

declare dso_local i32* @extent_alloc_wrapper(i32*, %struct.TYPE_11__*, i32**, i32*, i64, i64, i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @arena_stats_lock(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @arena_large_malloc_stats_update(i32*, %struct.TYPE_11__*, i64) #1

declare dso_local i32 @arena_stats_add_zu(i32*, %struct.TYPE_12__*, i32*, i64) #1

declare dso_local i32 @arena_stats_unlock(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @arena_nactive_add(%struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
