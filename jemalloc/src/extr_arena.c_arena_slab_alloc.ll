; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_slab_alloc.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_slab_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@WITNESS_RANK_CORE = common dso_local global i32 0, align 4
@EXTENT_HOOKS_INITIALIZER = common dso_local global i32* null, align 8
@PAGE = common dso_local global i32 0, align 4
@LG_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_14__*, i32, i32, %struct.TYPE_13__*)* @arena_slab_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @arena_slab_alloc(i32* %0, %struct.TYPE_14__* %1, i32 %2, i32 %3, %struct.TYPE_13__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_13__* %4, %struct.TYPE_13__** %11, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @tsdn_witness_tsdp_get(i32* %18)
  %20 = load i32, i32* @WITNESS_RANK_CORE, align 4
  %21 = call i32 @witness_assert_depth_to_rank(i32 %19, i32 %20, i32 0)
  %22 = load i32*, i32** @EXTENT_HOOKS_INITIALIZER, align 8
  store i32* %22, i32** %12, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @sz_size2index(i32 %25)
  store i32 %26, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PAGE, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32* @extents_alloc(i32* %27, %struct.TYPE_14__* %28, i32** %12, i32* %30, i32* null, i32 %33, i32 0, i32 %34, i32 1, i32 %35, i32* %14, i32* %15)
  store i32* %36, i32** %16, align 8
  %37 = load i32*, i32** %16, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %54

39:                                               ; preds = %5
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %41 = call i64 @arena_may_have_muzzy(%struct.TYPE_14__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load i32*, i32** %7, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PAGE, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32* @extents_alloc(i32* %44, %struct.TYPE_14__* %45, i32** %12, i32* %47, i32* null, i32 %50, i32 0, i32 %51, i32 1, i32 %52, i32* %14, i32* %15)
  store i32* %53, i32** %16, align 8
  br label %54

54:                                               ; preds = %43, %39, %5
  %55 = load i32*, i32** %16, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load i32*, i32** %7, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i32* @arena_slab_alloc_hard(i32* %58, %struct.TYPE_14__* %59, i32** %12, %struct.TYPE_13__* %60, i32 %61)
  store i32* %62, i32** %16, align 8
  %63 = load i32*, i32** %16, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store i32* null, i32** %6, align 8
  br label %92

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %54
  %68 = load i32*, i32** %16, align 8
  %69 = call i32 @extent_slab_get(i32* %68)
  %70 = call i32 @assert(i32 %69)
  %71 = load i32*, i32** %16, align 8
  %72 = call %struct.TYPE_12__* @extent_slab_data_get(i32* %71)
  store %struct.TYPE_12__* %72, %struct.TYPE_12__** %17, align 8
  %73 = load i32*, i32** %16, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @extent_nfree_binshard_set(i32* %73, i32 %76, i32 %77)
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = call i32 @bitmap_init(i32 %81, i32* %83, i32 0)
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %86 = load i32*, i32** %16, align 8
  %87 = call i32 @extent_size_get(i32* %86)
  %88 = load i32, i32* @LG_PAGE, align 4
  %89 = ashr i32 %87, %88
  %90 = call i32 @arena_nactive_add(%struct.TYPE_14__* %85, i32 %89)
  %91 = load i32*, i32** %16, align 8
  store i32* %91, i32** %6, align 8
  br label %92

92:                                               ; preds = %67, %65
  %93 = load i32*, i32** %6, align 8
  ret i32* %93
}

declare dso_local i32 @witness_assert_depth_to_rank(i32, i32, i32) #1

declare dso_local i32 @tsdn_witness_tsdp_get(i32*) #1

declare dso_local i32 @sz_size2index(i32) #1

declare dso_local i32* @extents_alloc(i32*, %struct.TYPE_14__*, i32**, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @arena_may_have_muzzy(%struct.TYPE_14__*) #1

declare dso_local i32* @arena_slab_alloc_hard(i32*, %struct.TYPE_14__*, i32**, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @extent_slab_get(i32*) #1

declare dso_local %struct.TYPE_12__* @extent_slab_data_get(i32*) #1

declare dso_local i32 @extent_nfree_binshard_set(i32*, i32, i32) #1

declare dso_local i32 @bitmap_init(i32, i32*, i32) #1

declare dso_local i32 @arena_nactive_add(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @extent_size_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
