; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_stash_decayed.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_stash_decayed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WITNESS_RANK_CORE = common dso_local global i32 0, align 4
@LG_PAGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32**, i32*, i64, i64, i32*)* @arena_stash_decayed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @arena_stash_decayed(i32* %0, i32* %1, i32** %2, i32* %3, i64 %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @tsdn_witness_tsdp_get(i32* %17)
  %19 = load i32, i32* @WITNESS_RANK_CORE, align 4
  %20 = call i32 @witness_assert_depth_to_rank(i32 %18, i32 %19, i32 0)
  store i64 0, i64* %15, align 8
  br label %21

21:                                               ; preds = %35, %7
  %22 = load i64, i64* %15, align 8
  %23 = load i64, i64* %13, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load i32*, i32** %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32**, i32*** %10, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load i64, i64* %12, align 8
  %31 = call i32* @extents_evict(i32* %26, i32* %27, i32** %28, i32* %29, i64 %30)
  store i32* %31, i32** %16, align 8
  %32 = icmp ne i32* %31, null
  br label %33

33:                                               ; preds = %25, %21
  %34 = phi i1 [ false, %21 ], [ %32, %25 ]
  br i1 %34, label %35, label %45

35:                                               ; preds = %33
  %36 = load i32*, i32** %14, align 8
  %37 = load i32*, i32** %16, align 8
  %38 = call i32 @extent_list_append(i32* %36, i32* %37)
  %39 = load i32*, i32** %16, align 8
  %40 = call i64 @extent_size_get(i32* %39)
  %41 = load i64, i64* @LG_PAGE, align 8
  %42 = lshr i64 %40, %41
  %43 = load i64, i64* %15, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %15, align 8
  br label %21

45:                                               ; preds = %33
  %46 = load i64, i64* %15, align 8
  ret i64 %46
}

declare dso_local i32 @witness_assert_depth_to_rank(i32, i32, i32) #1

declare dso_local i32 @tsdn_witness_tsdp_get(i32*) #1

declare dso_local i32* @extents_evict(i32*, i32*, i32**, i32*, i64) #1

declare dso_local i32 @extent_list_append(i32*, i32*) #1

declare dso_local i64 @extent_size_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
