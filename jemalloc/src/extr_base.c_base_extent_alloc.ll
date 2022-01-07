; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_base.c_base_extent_alloc.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_base.c_base_extent_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32, i32, i32, %struct.TYPE_9__*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_9__* }

@config_stats = common dso_local global i64 0, align 8
@opt_metadata_thp = common dso_local global i64 0, align 8
@metadata_thp_auto = common dso_local global i64 0, align 8
@LG_HUGEPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_8__*, i64, i64)* @base_extent_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @base_extent_alloc(i32* %0, %struct.TYPE_8__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 6
  %15 = call i32 @malloc_mutex_assert_owner(i32* %12, i32* %14)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %17 = call i32* @base_extent_hooks_get(%struct.TYPE_8__* %16)
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 6
  %21 = call i32 @malloc_mutex_unlock(i32* %18, i32* %20)
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = call i32 @base_ind_get(%struct.TYPE_8__* %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 7
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call %struct.TYPE_9__* @base_block_alloc(i32* %22, %struct.TYPE_8__* %23, i32* %24, i32 %26, i32* %28, i32* %30, i64 %31, i64 %32)
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %11, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 6
  %37 = call i32 @malloc_mutex_lock(i32* %34, i32* %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %39 = icmp eq %struct.TYPE_9__* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %130

41:                                               ; preds = %4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 5
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %46, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 5
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %49, align 8
  %50 = load i64, i64* @config_stats, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %127

52:                                               ; preds = %41
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, 24
  store i64 %56, i64* %54, align 8
  %57 = call i64 @PAGE_CEILING(i32 24)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, %57
  store i64 %61, i64* %59, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %64
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %66, align 8
  %71 = call i64 (...) @metadata_thp_madvise()
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %96

73:                                               ; preds = %52
  %74 = load i64, i64* @opt_metadata_thp, align 8
  %75 = load i64, i64* @metadata_thp_auto, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %77, %73
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = icmp sgt i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = call i32 @HUGEPAGE_CEILING(i32 24)
  %90 = load i32, i32* @LG_HUGEPAGE, align 4
  %91 = ashr i32 %89, %90
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %82, %77, %52
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp sle i64 %99, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = icmp sle i64 %108, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @LG_HUGEPAGE, align 4
  %120 = shl i32 %118, %119
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = icmp sle i32 %120, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  br label %127

127:                                              ; preds = %96, %41
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  store i32* %129, i32** %5, align 8
  br label %130

130:                                              ; preds = %127, %40
  %131 = load i32*, i32** %5, align 8
  ret i32* %131
}

declare dso_local i32 @malloc_mutex_assert_owner(i32*, i32*) #1

declare dso_local i32* @base_extent_hooks_get(%struct.TYPE_8__*) #1

declare dso_local i32 @malloc_mutex_unlock(i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @base_block_alloc(i32*, %struct.TYPE_8__*, i32*, i32, i32*, i32*, i64, i64) #1

declare dso_local i32 @base_ind_get(%struct.TYPE_8__*) #1

declare dso_local i32 @malloc_mutex_lock(i32*, i32*) #1

declare dso_local i64 @PAGE_CEILING(i32) #1

declare dso_local i64 @metadata_thp_madvise(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @HUGEPAGE_CEILING(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
