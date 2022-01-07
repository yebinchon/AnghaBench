; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_deregister_impl.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_deregister_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SC_NSIZES = common dso_local global i32 0, align 4
@config_prof = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @extent_deregister_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extent_deregister_impl(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32* @tsdn_rtree_ctx(i32* %11, i32* %7)
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @extent_rtree_leaf_elms_lookup(i32* %13, i32* %14, i32* %15, i32 1, i32 0, i32** %9, i32** %10)
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @extent_lock(i32* %17, i32* %18)
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* @SC_NSIZES, align 4
  %24 = call i32 @extent_rtree_write_acquired(i32* %20, i32* %21, i32* %22, i32* null, i32 %23, i32 0)
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @extent_slab_get(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = load i32*, i32** %4, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @extent_interior_deregister(i32* %29, i32* %30, i32* %31)
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @extent_slab_set(i32* %33, i32 0)
  br label %35

35:                                               ; preds = %28, %3
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @extent_unlock(i32* %36, i32* %37)
  %39 = load i64, i64* @config_prof, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32*, i32** %4, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @extent_gdump_sub(i32* %45, i32* %46)
  br label %48

48:                                               ; preds = %44, %41, %35
  ret void
}

declare dso_local i32* @tsdn_rtree_ctx(i32*, i32*) #1

declare dso_local i32 @extent_rtree_leaf_elms_lookup(i32*, i32*, i32*, i32, i32, i32**, i32**) #1

declare dso_local i32 @extent_lock(i32*, i32*) #1

declare dso_local i32 @extent_rtree_write_acquired(i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i64 @extent_slab_get(i32*) #1

declare dso_local i32 @extent_interior_deregister(i32*, i32*, i32*) #1

declare dso_local i32 @extent_slab_set(i32*, i32) #1

declare dso_local i32 @extent_unlock(i32*, i32*) #1

declare dso_local i32 @extent_gdump_sub(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
