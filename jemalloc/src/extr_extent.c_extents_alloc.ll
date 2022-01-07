; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extents_alloc.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extents_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WITNESS_RANK_CORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @extents_alloc(i32* %0, i32* %1, i32** %2, i32* %3, i8* %4, i64 %5, i64 %6, i64 %7, i32 %8, i32 %9, i32* %10, i32* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  store i32* %0, i32** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32** %2, i32*** %15, align 8
  store i32* %3, i32** %16, align 8
  store i8* %4, i8** %17, align 8
  store i64 %5, i64* %18, align 8
  store i64 %6, i64* %19, align 8
  store i64 %7, i64* %20, align 8
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32* %10, i32** %23, align 8
  store i32* %11, i32** %24, align 8
  %26 = load i64, i64* %18, align 8
  %27 = load i64, i64* %19, align 8
  %28 = add i64 %26, %27
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i64, i64* %20, align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32*, i32** %13, align 8
  %37 = call i32 @tsdn_witness_tsdp_get(i32* %36)
  %38 = load i32, i32* @WITNESS_RANK_CORE, align 4
  %39 = call i32 @witness_assert_depth_to_rank(i32 %37, i32 %38, i32 0)
  %40 = load i32*, i32** %13, align 8
  %41 = load i32*, i32** %14, align 8
  %42 = load i32**, i32*** %15, align 8
  %43 = load i32*, i32** %16, align 8
  %44 = load i8*, i8** %17, align 8
  %45 = load i64, i64* %18, align 8
  %46 = load i64, i64* %19, align 8
  %47 = load i64, i64* %20, align 8
  %48 = load i32, i32* %21, align 4
  %49 = load i32, i32* %22, align 4
  %50 = load i32*, i32** %23, align 8
  %51 = load i32*, i32** %24, align 8
  %52 = call i32* @extent_recycle(i32* %40, i32* %41, i32** %42, i32* %43, i8* %44, i64 %45, i64 %46, i64 %47, i32 %48, i32 %49, i32* %50, i32* %51, i32 0)
  store i32* %52, i32** %25, align 8
  %53 = load i32*, i32** %25, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %12
  %56 = load i32*, i32** %25, align 8
  %57 = call i64 @extent_dumpable_get(i32* %56)
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %55, %12
  %60 = phi i1 [ true, %12 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i32*, i32** %25, align 8
  ret i32* %63
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @witness_assert_depth_to_rank(i32, i32, i32) #1

declare dso_local i32 @tsdn_witness_tsdp_get(i32*) #1

declare dso_local i32* @extent_recycle(i32*, i32*, i32**, i32*, i8*, i64, i64, i64, i32, i32, i32*, i32*, i32) #1

declare dso_local i64 @extent_dumpable_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
