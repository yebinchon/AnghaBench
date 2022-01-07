; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_record.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }

@extent_state_dirty = common dso_local global i64 0, align 8
@extent_state_muzzy = common dso_local global i64 0, align 8
@SC_NSIZES = common dso_local global i32 0, align 4
@extents_rtree = common dso_local global i32 0, align 4
@SC_LARGE_MINCLASS = common dso_local global i64 0, align 8
@extent_state_active = common dso_local global i64 0, align 8
@oversize_threshold = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_15__*, i32**, %struct.TYPE_14__*, i32*, i32)* @extent_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extent_record(i32* %0, %struct.TYPE_15__* %1, i32** %2, %struct.TYPE_14__* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %8, align 8
  store i32** %2, i32*** %9, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = call i32* @tsdn_rtree_ctx(i32* %16, i32* %13)
  store i32* %17, i32** %14, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %19 = call i64 @eset_state_get(%struct.TYPE_14__* %18)
  %20 = load i64, i64* @extent_state_dirty, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %6
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %24 = call i64 @eset_state_get(%struct.TYPE_14__* %23)
  %25 = load i64, i64* @extent_state_muzzy, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %22, %6
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @extent_zeroed_get(i32* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi i1 [ true, %22 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32*, i32** %7, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = call i32 @malloc_mutex_lock(i32* %36, i32* %38)
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %41 = load i32**, i32*** %9, align 8
  %42 = call i32 @extent_hooks_assure_initialized(%struct.TYPE_15__* %40, i32** %41)
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* @SC_NSIZES, align 4
  %45 = call i32 @extent_szind_set(i32* %43, i32 %44)
  %46 = load i32*, i32** %11, align 8
  %47 = call i64 @extent_slab_get(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %32
  %50 = load i32*, i32** %7, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @extent_interior_deregister(i32* %50, i32* %51, i32* %52)
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @extent_slab_set(i32* %54, i32 0)
  br label %56

56:                                               ; preds = %49, %32
  %57 = load i32*, i32** %7, align 8
  %58 = load i32*, i32** %14, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = call i64 @extent_base_get(i32* %59)
  %61 = call i32* @rtree_extent_read(i32* %57, i32* @extents_rtree, i32* %58, i64 %60, i32 1)
  %62 = load i32*, i32** %11, align 8
  %63 = icmp eq i32* %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %56
  %71 = load i32*, i32** %7, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %73 = load i32**, i32*** %9, align 8
  %74 = load i32*, i32** %14, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i32* @extent_try_coalesce(i32* %71, %struct.TYPE_15__* %72, i32** %73, i32* %74, %struct.TYPE_14__* %75, i32* %76, i32* null, i32 %77)
  store i32* %78, i32** %11, align 8
  br label %126

79:                                               ; preds = %56
  %80 = load i32*, i32** %11, align 8
  %81 = call i64 @extent_size_get(i32* %80)
  %82 = load i64, i64* @SC_LARGE_MINCLASS, align 8
  %83 = icmp sge i64 %81, %82
  br i1 %83, label %84, label %125

84:                                               ; preds = %79
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = icmp eq %struct.TYPE_14__* %85, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  br label %91

91:                                               ; preds = %106, %84
  %92 = load i32*, i32** %11, align 8
  %93 = call i64 @extent_state_get(i32* %92)
  %94 = load i64, i64* @extent_state_active, align 8
  %95 = icmp eq i64 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load i32*, i32** %7, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %100 = load i32**, i32*** %9, align 8
  %101 = load i32*, i32** %14, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* %12, align 4
  %105 = call i32* @extent_try_coalesce_large(i32* %98, %struct.TYPE_15__* %99, i32** %100, i32* %101, %struct.TYPE_14__* %102, i32* %103, i32* %15, i32 %104)
  store i32* %105, i32** %11, align 8
  br label %106

106:                                              ; preds = %91
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %91, label %109

109:                                              ; preds = %106
  %110 = load i32*, i32** %11, align 8
  %111 = call i64 @extent_size_get(i32* %110)
  %112 = load i64, i64* @oversize_threshold, align 8
  %113 = icmp sge i64 %111, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %109
  %115 = load i32*, i32** %7, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = call i32 @malloc_mutex_unlock(i32* %115, i32* %117)
  %119 = load i32*, i32** %7, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %121 = load i32**, i32*** %9, align 8
  %122 = load i32*, i32** %11, align 8
  %123 = call i32 @arena_decay_extent(i32* %119, %struct.TYPE_15__* %120, i32** %121, i32* %122)
  br label %136

124:                                              ; preds = %109
  br label %125

125:                                              ; preds = %124, %79
  br label %126

126:                                              ; preds = %125, %70
  %127 = load i32*, i32** %7, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %130 = load i32*, i32** %11, align 8
  %131 = call i32 @extent_deactivate_locked(i32* %127, %struct.TYPE_15__* %128, %struct.TYPE_14__* %129, i32* %130)
  %132 = load i32*, i32** %7, align 8
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = call i32 @malloc_mutex_unlock(i32* %132, i32* %134)
  br label %136

136:                                              ; preds = %126, %114
  ret void
}

declare dso_local i32* @tsdn_rtree_ctx(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @eset_state_get(%struct.TYPE_14__*) #1

declare dso_local i32 @extent_zeroed_get(i32*) #1

declare dso_local i32 @malloc_mutex_lock(i32*, i32*) #1

declare dso_local i32 @extent_hooks_assure_initialized(%struct.TYPE_15__*, i32**) #1

declare dso_local i32 @extent_szind_set(i32*, i32) #1

declare dso_local i64 @extent_slab_get(i32*) #1

declare dso_local i32 @extent_interior_deregister(i32*, i32*, i32*) #1

declare dso_local i32 @extent_slab_set(i32*, i32) #1

declare dso_local i32* @rtree_extent_read(i32*, i32*, i32*, i64, i32) #1

declare dso_local i64 @extent_base_get(i32*) #1

declare dso_local i32* @extent_try_coalesce(i32*, %struct.TYPE_15__*, i32**, i32*, %struct.TYPE_14__*, i32*, i32*, i32) #1

declare dso_local i64 @extent_size_get(i32*) #1

declare dso_local i64 @extent_state_get(i32*) #1

declare dso_local i32* @extent_try_coalesce_large(i32*, %struct.TYPE_15__*, i32**, i32*, %struct.TYPE_14__*, i32*, i32*, i32) #1

declare dso_local i32 @malloc_mutex_unlock(i32*, i32*) #1

declare dso_local i32 @arena_decay_extent(i32*, %struct.TYPE_15__*, i32**, i32*) #1

declare dso_local i32 @extent_deactivate_locked(i32*, %struct.TYPE_15__*, %struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
