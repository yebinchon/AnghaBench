; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_rtree_leaf_elm_try_lock.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_rtree_leaf_elm_try_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@extents_rtree = common dso_local global i32 0, align 4
@lock_result_no_extent = common dso_local global i32 0, align 4
@lock_result_success = common dso_local global i32 0, align 4
@lock_result_failure = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32**, i32)* @extent_rtree_leaf_elm_try_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extent_rtree_leaf_elm_try_lock(i32* %0, i32* %1, i32** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32* @rtree_leaf_elm_extent_read(i32* %12, i32* @extents_rtree, i32* %13, i32 1)
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i32*, i32** %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i64 @rtree_leaf_elm_slab_read(i32* %21, i32* @extents_rtree, i32* %22, i32 1)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20, %4
  %26 = load i32, i32* @lock_result_no_extent, align 4
  store i32 %26, i32* %5, align 4
  br label %46

27:                                               ; preds = %20, %17
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @extent_lock(i32* %28, i32* %29)
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32* @rtree_leaf_elm_extent_read(i32* %31, i32* @extents_rtree, i32* %32, i32 1)
  store i32* %33, i32** %11, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = icmp eq i32* %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load i32*, i32** %10, align 8
  %39 = load i32**, i32*** %8, align 8
  store i32* %38, i32** %39, align 8
  %40 = load i32, i32* @lock_result_success, align 4
  store i32 %40, i32* %5, align 4
  br label %46

41:                                               ; preds = %27
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @extent_unlock(i32* %42, i32* %43)
  %45 = load i32, i32* @lock_result_failure, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %41, %37, %25
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32* @rtree_leaf_elm_extent_read(i32*, i32*, i32*, i32) #1

declare dso_local i64 @rtree_leaf_elm_slab_read(i32*, i32*, i32*, i32) #1

declare dso_local i32 @extent_lock(i32*, i32*) #1

declare dso_local i32 @extent_unlock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
