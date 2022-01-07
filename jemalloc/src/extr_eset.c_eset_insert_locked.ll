; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_eset.c_eset_insert_locked.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_eset.c_eset_insert_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32*, i32, i32 }

@eset_bitmap_info = common dso_local global i32 0, align 4
@config_stats = common dso_local global i64 0, align 8
@LG_PAGE = common dso_local global i64 0, align 8
@ATOMIC_RELAXED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eset_insert_locked(i32* %0, %struct.TYPE_4__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 5
  %15 = call i32 @malloc_mutex_assert_owner(i32* %12, i32* %14)
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @extent_state_get(i32* %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @extent_size_get(i32* %24)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @sz_psz_quantize_floor(i64 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i64 @sz_psz2ind(i64 %28)
  store i64 %29, i64* %9, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = call i64 @extent_heap_empty(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %3
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @bitmap_unset(i32 %40, i32* @eset_bitmap_info, i64 %41)
  br label %43

43:                                               ; preds = %37, %3
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @extent_heap_insert(i32* %48, i32* %49)
  %51 = load i64, i64* @config_stats, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %43
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @eset_stats_add(%struct.TYPE_4__* %54, i64 %55, i64 %56)
  br label %58

58:                                               ; preds = %53, %43
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @extent_list_append(i32* %60, i32* %61)
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @LG_PAGE, align 8
  %65 = lshr i64 %63, %64
  store i64 %65, i64* %10, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* @ATOMIC_RELAXED, align 4
  %69 = call i64 @atomic_load_zu(i32* %67, i32 %68)
  store i64 %69, i64* %11, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %10, align 8
  %74 = add i64 %72, %73
  %75 = load i32, i32* @ATOMIC_RELAXED, align 4
  %76 = call i32 @atomic_store_zu(i32* %71, i64 %74, i32 %75)
  ret void
}

declare dso_local i32 @malloc_mutex_assert_owner(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @extent_state_get(i32*) #1

declare dso_local i64 @extent_size_get(i32*) #1

declare dso_local i64 @sz_psz_quantize_floor(i64) #1

declare dso_local i64 @sz_psz2ind(i64) #1

declare dso_local i64 @extent_heap_empty(i32*) #1

declare dso_local i32 @bitmap_unset(i32, i32*, i64) #1

declare dso_local i32 @extent_heap_insert(i32*, i32*) #1

declare dso_local i32 @eset_stats_add(%struct.TYPE_4__*, i64, i64) #1

declare dso_local i32 @extent_list_append(i32*, i32*) #1

declare dso_local i64 @atomic_load_zu(i32*, i32) #1

declare dso_local i32 @atomic_store_zu(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
