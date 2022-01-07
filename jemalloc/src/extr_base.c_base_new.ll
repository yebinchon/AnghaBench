; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_base.c_base_new.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_base.c_base_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32, i32, i32, i32, i32, i32*, %struct.TYPE_9__*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@QUANTUM = common dso_local global i32 0, align 4
@CACHELINE = common dso_local global i64 0, align 8
@ATOMIC_RELAXED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"base\00", align 1
@WITNESS_RANK_BASE = common dso_local global i32 0, align 4
@malloc_mutex_rank_exclusive = common dso_local global i32 0, align 4
@SC_NSIZES = common dso_local global i64 0, align 8
@config_stats = common dso_local global i64 0, align 8
@opt_metadata_thp = common dso_local global i64 0, align 8
@metadata_thp_always = common dso_local global i64 0, align 8
@LG_HUGEPAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @base_new(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @QUANTUM, align 4
  %20 = call %struct.TYPE_9__* @base_block_alloc(i32* %16, i32* null, i32* %17, i32 %18, i32* %8, i64* %9, i32 72, i32 %19)
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %10, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %22 = icmp eq %struct.TYPE_9__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %150

24:                                               ; preds = %3
  %25 = load i64, i64* @CACHELINE, align 8
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %12, align 8
  %27 = call i64 @ALIGNMENT_CEILING(i32 72, i64 %26)
  store i64 %27, i64* %13, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* %12, align 8
  %32 = call i64 @base_extent_bump_alloc_helper(i32* %29, i64* %11, i64 %30, i64 %31)
  %33 = inttoptr i64 %32 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %14, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 11
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* @ATOMIC_RELAXED, align 4
  %41 = call i32 @atomic_store_p(i32* %38, i32* %39, i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 10
  %44 = load i32, i32* @WITNESS_RANK_BASE, align 4
  %45 = load i32, i32* @malloc_mutex_rank_exclusive, align 4
  %46 = call i64 @malloc_mutex_init(i32* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %24
  %49 = load i32*, i32** %5, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @base_unmap(i32* %49, i32* %50, i32 %51, %struct.TYPE_9__* %52, i32 %55)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %150

57:                                               ; preds = %24
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 9
  store i32 %58, i32* %60, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 8
  store %struct.TYPE_9__* %64, %struct.TYPE_9__** %66, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  store i32 0, i32* %68, align 8
  store i64 0, i64* %15, align 8
  br label %69

69:                                               ; preds = %80, %57
  %70 = load i64, i64* %15, align 8
  %71 = load i64, i64* @SC_NSIZES, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 7
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* %15, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = call i32 @extent_heap_new(i32* %78)
  br label %80

80:                                               ; preds = %73
  %81 = load i64, i64* %15, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %15, align 8
  br label %69

83:                                               ; preds = %69
  %84 = load i64, i64* @config_stats, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %141

86:                                               ; preds = %83
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 3
  store i32 8, i32* %88, align 4
  %89 = call i32 @PAGE_CEILING(i32 8)
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 4
  %97 = load i64, i64* @opt_metadata_thp, align 8
  %98 = load i64, i64* @metadata_thp_always, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %86
  %101 = call i64 (...) @metadata_thp_madvise()
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = call i32 @HUGEPAGE_CEILING(i32 8)
  %105 = load i32, i32* @LG_HUGEPAGE, align 4
  %106 = ashr i32 %104, %105
  br label %108

107:                                              ; preds = %100, %86
  br label %108

108:                                              ; preds = %107, %103
  %109 = phi i32 [ %106, %103 ], [ 0, %107 ]
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 6
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = icmp sle i32 %114, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = icmp sle i32 %123, %126
  %128 = zext i1 %127 to i32
  %129 = call i32 @assert(i32 %128)
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @LG_HUGEPAGE, align 4
  %134 = shl i32 %132, %133
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = icmp sle i32 %134, %137
  %139 = zext i1 %138 to i32
  %140 = call i32 @assert(i32 %139)
  br label %141

141:                                              ; preds = %108, %83
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = load i64, i64* %11, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %147 = load i64, i64* %13, align 8
  %148 = call i32 @base_extent_bump_alloc_post(%struct.TYPE_8__* %142, i32* %144, i64 %145, %struct.TYPE_8__* %146, i64 %147)
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %149, %struct.TYPE_8__** %4, align 8
  br label %150

150:                                              ; preds = %141, %48, %23
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %151
}

declare dso_local %struct.TYPE_9__* @base_block_alloc(i32*, i32*, i32*, i32, i32*, i64*, i32, i32) #1

declare dso_local i64 @ALIGNMENT_CEILING(i32, i64) #1

declare dso_local i64 @base_extent_bump_alloc_helper(i32*, i64*, i64, i64) #1

declare dso_local i32 @atomic_store_p(i32*, i32*, i32) #1

declare dso_local i64 @malloc_mutex_init(i32*, i8*, i32, i32) #1

declare dso_local i32 @base_unmap(i32*, i32*, i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @extent_heap_new(i32*) #1

declare dso_local i32 @PAGE_CEILING(i32) #1

declare dso_local i64 @metadata_thp_madvise(...) #1

declare dso_local i32 @HUGEPAGE_CEILING(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @base_extent_bump_alloc_post(%struct.TYPE_8__*, i32*, i64, %struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
