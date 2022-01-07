; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_reset.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_10__ = type { i64, i32 }

@extents_rtree = common dso_local global i32 0, align 4
@SC_NSIZES = common dso_local global i64 0, align 8
@config_stats = common dso_local global i64 0, align 8
@config_prof = common dso_local global i64 0, align 8
@opt_prof = common dso_local global i64 0, align 8
@SC_NBINS = common dso_local global i32 0, align 4
@bin_infos = common dso_local global %struct.TYPE_11__* null, align 8
@ATOMIC_RELAXED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arena_reset(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @tsd_tsdn(i32* %12)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  %16 = call i32 @malloc_mutex_lock(i32 %13, i32* %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 3
  %19 = call i32* @extent_list_first(i32* %18)
  store i32* %19, i32** %5, align 8
  br label %20

20:                                               ; preds = %88, %2
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %92

23:                                               ; preds = %20
  %24 = load i32*, i32** %5, align 8
  %25 = call i8* @extent_base_get(i32* %24)
  store i8* %25, i8** %6, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @tsd_tsdn(i32* %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = call i32 @malloc_mutex_unlock(i32 %27, i32* %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32* @tsd_rtree_ctx(i32* %31)
  store i32* %32, i32** %9, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @tsd_tsdn(i32* %33)
  %35 = load i32*, i32** %9, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %40 = call i32 @rtree_szind_slab_read(i32 %34, i32* @extents_rtree, i32* %35, i64 %37, i32 1, i64* %38, i32* %39)
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SC_NSIZES, align 8
  %44 = icmp ne i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i64, i64* @config_stats, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %23
  %50 = load i64, i64* @config_prof, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load i64, i64* @opt_prof, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %52, %23
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @sz_index2size(i64 %57)
  store i64 %58, i64* %7, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @tsd_tsdn(i32* %60)
  %62 = load i8*, i8** %6, align 8
  %63 = call i64 @isalloc(i32 %61, i8* %62)
  %64 = icmp eq i64 %59, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  br label %67

67:                                               ; preds = %55, %52, %49
  %68 = load i64, i64* @config_prof, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load i64, i64* @opt_prof, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i32*, i32** %3, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @prof_free(i32* %74, i8* %75, i64 %76, %struct.TYPE_10__* %8)
  br label %78

78:                                               ; preds = %73, %70, %67
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @tsd_tsdn(i32* %79)
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @large_dalloc(i32 %80, i32* %81)
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @tsd_tsdn(i32* %83)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  %87 = call i32 @malloc_mutex_lock(i32 %84, i32* %86)
  br label %88

88:                                               ; preds = %78
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 3
  %91 = call i32* @extent_list_first(i32* %90)
  store i32* %91, i32** %5, align 8
  br label %20

92:                                               ; preds = %20
  %93 = load i32*, i32** %3, align 8
  %94 = call i32 @tsd_tsdn(i32* %93)
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 2
  %97 = call i32 @malloc_mutex_unlock(i32 %94, i32* %96)
  store i32 0, i32* %10, align 4
  br label %98

98:                                               ; preds = %131, %92
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @SC_NBINS, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %102, label %134

102:                                              ; preds = %98
  store i32 0, i32* %11, align 4
  br label %103

103:                                              ; preds = %127, %102
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** @bin_infos, align 8
  %106 = load i32, i32* %10, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ult i32 %104, %110
  br i1 %111, label %112, label %130

112:                                              ; preds = %103
  %113 = load i32*, i32** %3, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = call i32 @arena_bin_reset(i32* %113, %struct.TYPE_9__* %114, i32* %125)
  br label %127

127:                                              ; preds = %112
  %128 = load i32, i32* %11, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %11, align 4
  br label %103

130:                                              ; preds = %103
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %10, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %98

134:                                              ; preds = %98
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i32, i32* @ATOMIC_RELAXED, align 4
  %138 = call i32 @atomic_store_zu(i32* %136, i32 0, i32 %137)
  ret void
}

declare dso_local i32 @malloc_mutex_lock(i32, i32*) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i32* @extent_list_first(i32*) #1

declare dso_local i8* @extent_base_get(i32*) #1

declare dso_local i32 @malloc_mutex_unlock(i32, i32*) #1

declare dso_local i32* @tsd_rtree_ctx(i32*) #1

declare dso_local i32 @rtree_szind_slab_read(i32, i32*, i32*, i64, i32, i64*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sz_index2size(i64) #1

declare dso_local i64 @isalloc(i32, i8*) #1

declare dso_local i32 @prof_free(i32*, i8*, i64, %struct.TYPE_10__*) #1

declare dso_local i32 @large_dalloc(i32, i32*) #1

declare dso_local i32 @arena_bin_reset(i32*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @atomic_store_zu(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
