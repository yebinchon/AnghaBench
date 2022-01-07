; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_dalloc_wrapper_try.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_dalloc_wrapper_try.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 (%struct.TYPE_6__*, i32*, i64, i32, i32)* }

@WITNESS_RANK_CORE = common dso_local global i32 0, align 4
@extent_hooks_default = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_6__**, i32*)* @extent_dalloc_wrapper_try to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extent_dalloc_wrapper_try(i32* %0, i32* %1, %struct.TYPE_6__** %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_6__** %2, %struct.TYPE_6__*** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = call i32* @extent_base_get(i32* %10)
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32*, i32** %8, align 8
  %16 = call i64 @extent_size_get(i32* %15)
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @tsdn_witness_tsdp_get(i32* %20)
  %22 = load i32, i32* @WITNESS_RANK_CORE, align 4
  %23 = call i32 @witness_assert_depth_to_rank(i32 %21, i32 %22, i32 0)
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32* @extent_base_get(i32* %25)
  %27 = call i32 @extent_addr_set(i32* %24, i32* %26)
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %30 = call i32 @extent_hooks_assure_initialized(i32* %28, %struct.TYPE_6__** %29)
  %31 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = icmp eq %struct.TYPE_6__* %32, @extent_hooks_default
  br i1 %33, label %34, label %40

34:                                               ; preds = %4
  %35 = load i32*, i32** %8, align 8
  %36 = call i32* @extent_base_get(i32* %35)
  %37 = load i32*, i32** %8, align 8
  %38 = call i64 @extent_size_get(i32* %37)
  %39 = call i32 @extent_dalloc_default_impl(i32* %36, i64 %38)
  store i32 %39, i32* %9, align 4
  br label %71

40:                                               ; preds = %4
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @extent_hook_pre_reentrancy(i32* %41, i32* %42)
  %44 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64 (%struct.TYPE_6__*, i32*, i64, i32, i32)*, i64 (%struct.TYPE_6__*, i32*, i64, i32, i32)** %46, align 8
  %48 = icmp eq i64 (%struct.TYPE_6__*, i32*, i64, i32, i32)* %47, null
  br i1 %48, label %66, label %49

49:                                               ; preds = %40
  %50 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64 (%struct.TYPE_6__*, i32*, i64, i32, i32)*, i64 (%struct.TYPE_6__*, i32*, i64, i32, i32)** %52, align 8
  %54 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = call i32* @extent_base_get(i32* %56)
  %58 = load i32*, i32** %8, align 8
  %59 = call i64 @extent_size_get(i32* %58)
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @extent_committed_get(i32* %60)
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @arena_ind_get(i32* %62)
  %64 = call i64 %53(%struct.TYPE_6__* %55, i32* %57, i64 %59, i32 %61, i32 %63)
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %49, %40
  %67 = phi i1 [ true, %40 ], [ %65, %49 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %9, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @extent_hook_post_reentrancy(i32* %69)
  br label %71

71:                                               ; preds = %66, %34
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  %75 = load i32*, i32** %5, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @extent_dalloc(i32* %75, i32* %76, i32* %77)
  br label %79

79:                                               ; preds = %74, %71
  %80 = load i32, i32* %9, align 4
  ret i32 %80
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @extent_base_get(i32*) #1

declare dso_local i64 @extent_size_get(i32*) #1

declare dso_local i32 @witness_assert_depth_to_rank(i32, i32, i32) #1

declare dso_local i32 @tsdn_witness_tsdp_get(i32*) #1

declare dso_local i32 @extent_addr_set(i32*, i32*) #1

declare dso_local i32 @extent_hooks_assure_initialized(i32*, %struct.TYPE_6__**) #1

declare dso_local i32 @extent_dalloc_default_impl(i32*, i64) #1

declare dso_local i32 @extent_hook_pre_reentrancy(i32*, i32*) #1

declare dso_local i32 @extent_committed_get(i32*) #1

declare dso_local i32 @arena_ind_get(i32*) #1

declare dso_local i32 @extent_hook_post_reentrancy(i32*) #1

declare dso_local i32 @extent_dalloc(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
