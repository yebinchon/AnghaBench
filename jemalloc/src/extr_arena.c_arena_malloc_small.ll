; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_malloc_small.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_malloc_small.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@SC_NBINS = common dso_local global i64 0, align 8
@bin_infos = common dso_local global i32* null, align 8
@config_stats = common dso_local global i64 0, align 8
@config_fill = common dso_local global i64 0, align 8
@opt_junk_alloc = common dso_local global i32 0, align 4
@opt_zero = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*, i64, i32)* @arena_malloc_small to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @arena_malloc_small(i32* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @SC_NBINS, align 8
  %17 = icmp ult i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i64, i64* %8, align 8
  %21 = call i64 @sz_index2size(i64 %20)
  store i64 %21, i64* %12, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call %struct.TYPE_6__* @arena_bin_choose_lock(i32* %22, i32* %23, i64 %24, i32* %14)
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %11, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %13, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %4
  %31 = load i32*, i32** %13, align 8
  %32 = call i64 @extent_nfree_get(i32* %31)
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32*, i32** %13, align 8
  %36 = load i32*, i32** @bin_infos, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = call i8* @arena_slab_reg_alloc(i32* %35, i32* %38)
  store i8* %39, i8** %10, align 8
  br label %47

40:                                               ; preds = %30, %4
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i32, i32* %14, align 4
  %46 = call i8* @arena_bin_malloc_hard(i32* %41, i32* %42, %struct.TYPE_6__* %43, i64 %44, i32 %45)
  store i8* %46, i8** %10, align 8
  br label %47

47:                                               ; preds = %40, %34
  %48 = load i8*, i8** %10, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32*, i32** %6, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = call i32 @malloc_mutex_unlock(i32* %51, i32* %53)
  store i8* null, i8** %5, align 8
  br label %127

55:                                               ; preds = %47
  %56 = load i64, i64* @config_stats, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %55
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %58, %55
  %75 = load i32*, i32** %6, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = call i32 @malloc_mutex_unlock(i32* %75, i32* %77)
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %105, label %81

81:                                               ; preds = %74
  %82 = load i64, i64* @config_fill, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %81
  %85 = load i32, i32* @opt_junk_alloc, align 4
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load i8*, i8** %10, align 8
  %90 = load i32*, i32** @bin_infos, align 8
  %91 = load i64, i64* %8, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = call i32 @arena_alloc_junk_small(i8* %89, i32* %92, i32 0)
  br label %103

94:                                               ; preds = %84
  %95 = load i32, i32* @opt_zero, align 4
  %96 = call i64 @unlikely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i8*, i8** %10, align 8
  %100 = load i64, i64* %12, align 8
  %101 = call i32 @memset(i8* %99, i32 0, i64 %100)
  br label %102

102:                                              ; preds = %98, %94
  br label %103

103:                                              ; preds = %102, %88
  br label %104

104:                                              ; preds = %103, %81
  br label %122

105:                                              ; preds = %74
  %106 = load i64, i64* @config_fill, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %105
  %109 = load i32, i32* @opt_junk_alloc, align 4
  %110 = call i64 @unlikely(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = load i8*, i8** %10, align 8
  %114 = load i32*, i32** @bin_infos, align 8
  %115 = load i64, i64* %8, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = call i32 @arena_alloc_junk_small(i8* %113, i32* %116, i32 1)
  br label %118

118:                                              ; preds = %112, %108, %105
  %119 = load i8*, i8** %10, align 8
  %120 = load i64, i64* %12, align 8
  %121 = call i32 @memset(i8* %119, i32 0, i64 %120)
  br label %122

122:                                              ; preds = %118, %104
  %123 = load i32*, i32** %6, align 8
  %124 = load i32*, i32** %7, align 8
  %125 = call i32 @arena_decay_tick(i32* %123, i32* %124)
  %126 = load i8*, i8** %10, align 8
  store i8* %126, i8** %5, align 8
  br label %127

127:                                              ; preds = %122, %50
  %128 = load i8*, i8** %5, align 8
  ret i8* %128
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sz_index2size(i64) #1

declare dso_local %struct.TYPE_6__* @arena_bin_choose_lock(i32*, i32*, i64, i32*) #1

declare dso_local i64 @extent_nfree_get(i32*) #1

declare dso_local i8* @arena_slab_reg_alloc(i32*, i32*) #1

declare dso_local i8* @arena_bin_malloc_hard(i32*, i32*, %struct.TYPE_6__*, i64, i32) #1

declare dso_local i32 @malloc_mutex_unlock(i32*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @arena_alloc_junk_small(i8*, i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @arena_decay_tick(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
