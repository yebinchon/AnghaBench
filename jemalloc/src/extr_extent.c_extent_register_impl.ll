; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_register_impl.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_register_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@config_prof = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @extent_register_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extent_register_impl(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i32* @tsdn_rtree_ctx(i32* %14, i32* %8)
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @extent_lock(i32* %16, i32* %17)
  %19 = load i32*, i32** %5, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @extent_rtree_leaf_elms_lookup(i32* %19, i32* %20, i32* %21, i32 0, i32 1, i32** %10, i32** %11)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @extent_unlock(i32* %25, i32* %26)
  store i32 1, i32* %4, align 4
  br label %62

28:                                               ; preds = %3
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @extent_szind_get_maybe_invalid(i32* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @extent_slab_get(i32* %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @extent_rtree_write_acquired(i32* %33, i32* %34, i32* %35, i32* %36, i32 %37, i32 %38)
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %28
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @extent_interior_register(i32* %43, i32* %44, i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %42, %28
  %49 = load i32*, i32** %5, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @extent_unlock(i32* %49, i32* %50)
  %52 = load i64, i64* @config_prof, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32*, i32** %5, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @extent_gdump_add(i32* %58, i32* %59)
  br label %61

61:                                               ; preds = %57, %54, %48
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %24
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32* @tsdn_rtree_ctx(i32*, i32*) #1

declare dso_local i32 @extent_lock(i32*, i32*) #1

declare dso_local i64 @extent_rtree_leaf_elms_lookup(i32*, i32*, i32*, i32, i32, i32**, i32**) #1

declare dso_local i32 @extent_unlock(i32*, i32*) #1

declare dso_local i32 @extent_szind_get_maybe_invalid(i32*) #1

declare dso_local i32 @extent_slab_get(i32*) #1

declare dso_local i32 @extent_rtree_write_acquired(i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @extent_interior_register(i32*, i32*, i32*, i32) #1

declare dso_local i32 @extent_gdump_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
