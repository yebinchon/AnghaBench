; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_large.c_large_ralloc_no_move_shrink.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_large.c_large_ralloc_no_move_shrink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@sz_large_pad = common dso_local global i64 0, align 8
@SC_NSIZES = common dso_local global i32 0, align 4
@config_fill = common dso_local global i64 0, align 8
@opt_junk_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64)* @large_ralloc_no_move_shrink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @large_ralloc_no_move_shrink(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32* @arena_get_from_extent(i32* %13)
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i64 @extent_usize_get(i32* %15)
  store i64 %16, i64* %9, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call %struct.TYPE_5__* @extent_hooks_get(i32* %17)
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %10, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @extent_size_get(i32* %19)
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @sz_large_pad, align 8
  %23 = add i64 %21, %22
  %24 = sub i64 %20, %23
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ugt i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %77

35:                                               ; preds = %3
  %36 = load i64, i64* %11, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %71

38:                                               ; preds = %35
  %39 = load i32*, i32** %5, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @sz_large_pad, align 8
  %44 = add i64 %42, %43
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @sz_size2index(i64 %45)
  %47 = load i64, i64* %11, align 8
  %48 = load i32, i32* @SC_NSIZES, align 4
  %49 = call i32* @extent_split_wrapper(i32* %39, i32* %40, %struct.TYPE_5__** %10, i32* %41, i64 %44, i32 %46, i32 0, i64 %47, i32 %48, i32 0)
  store i32* %49, i32** %12, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  store i32 1, i32* %4, align 4
  br label %77

53:                                               ; preds = %38
  %54 = load i64, i64* @config_fill, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load i32, i32* @opt_junk_free, align 4
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 @extent_addr_get(i32* %61)
  %63 = load i32*, i32** %12, align 8
  %64 = call i64 @extent_size_get(i32* %63)
  %65 = call i32 @large_dalloc_maybe_junk(i32 %62, i64 %64)
  br label %66

66:                                               ; preds = %60, %56, %53
  %67 = load i32*, i32** %5, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = call i32 @arena_extents_dirty_dalloc(i32* %67, i32* %68, %struct.TYPE_5__** %10, i32* %69)
  br label %71

71:                                               ; preds = %66, %35
  %72 = load i32*, i32** %5, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @arena_extent_ralloc_large_shrink(i32* %72, i32* %73, i32* %74, i64 %75)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %71, %52, %34
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32* @arena_get_from_extent(i32*) #1

declare dso_local i64 @extent_usize_get(i32*) #1

declare dso_local %struct.TYPE_5__* @extent_hooks_get(i32*) #1

declare dso_local i64 @extent_size_get(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @extent_split_wrapper(i32*, i32*, %struct.TYPE_5__**, i32*, i64, i32, i32, i64, i32, i32) #1

declare dso_local i32 @sz_size2index(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @large_dalloc_maybe_junk(i32, i64) #1

declare dso_local i32 @extent_addr_get(i32*) #1

declare dso_local i32 @arena_extents_dirty_dalloc(i32*, i32*, %struct.TYPE_5__**, i32*) #1

declare dso_local i32 @arena_extent_ralloc_large_shrink(i32*, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
