; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_gdump_add.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_gdump_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@config_prof = common dso_local global i32 0, align 4
@WITNESS_RANK_CORE = common dso_local global i32 0, align 4
@opt_prof = common dso_local global i64 0, align 8
@extent_state_active = common dso_local global i64 0, align 8
@LG_PAGE = common dso_local global i64 0, align 8
@curpages = common dso_local global i32 0, align 4
@ATOMIC_RELAXED = common dso_local global i32 0, align 4
@highpages = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @extent_gdump_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extent_gdump_add(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32, i32* @config_prof, align 4
  %9 = call i32 @cassert(i32 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @tsdn_witness_tsdp_get(i32* %10)
  %12 = load i32, i32* @WITNESS_RANK_CORE, align 4
  %13 = call i32 @witness_assert_depth_to_rank(i32 %11, i32 %12, i32 0)
  %14 = load i64, i64* @opt_prof, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %58

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @extent_state_get(i32* %17)
  %19 = load i64, i64* @extent_state_active, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %58

21:                                               ; preds = %16
  %22 = load i32*, i32** %4, align 8
  %23 = call i64 @extent_size_get(i32* %22)
  %24 = load i64, i64* @LG_PAGE, align 8
  %25 = lshr i64 %23, %24
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i32, i32* @ATOMIC_RELAXED, align 4
  %28 = call i64 @atomic_fetch_add_zu(i32* @curpages, i64 %26, i32 %27)
  %29 = load i64, i64* %5, align 8
  %30 = add i64 %28, %29
  store i64 %30, i64* %6, align 8
  %31 = load i32, i32* @ATOMIC_RELAXED, align 4
  %32 = call i64 @atomic_load_zu(i32* @highpages, i32 %31)
  store i64 %32, i64* %7, align 8
  br label %33

33:                                               ; preds = %46, %21
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i64, i64* %6, align 8
  %39 = load i32, i32* @ATOMIC_RELAXED, align 4
  %40 = load i32, i32* @ATOMIC_RELAXED, align 4
  %41 = call i32 @atomic_compare_exchange_weak_zu(i32* @highpages, i64* %7, i64 %38, i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %37, %33
  %45 = phi i1 [ false, %33 ], [ %43, %37 ]
  br i1 %45, label %46, label %47

46:                                               ; preds = %44
  br label %33

47:                                               ; preds = %44
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = call i64 (...) @prof_gdump_get_unlocked()
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @prof_gdump(i32* %55)
  br label %57

57:                                               ; preds = %54, %51, %47
  br label %58

58:                                               ; preds = %57, %16, %2
  ret void
}

declare dso_local i32 @cassert(i32) #1

declare dso_local i32 @witness_assert_depth_to_rank(i32, i32, i32) #1

declare dso_local i32 @tsdn_witness_tsdp_get(i32*) #1

declare dso_local i64 @extent_state_get(i32*) #1

declare dso_local i64 @extent_size_get(i32*) #1

declare dso_local i64 @atomic_fetch_add_zu(i32*, i64, i32) #1

declare dso_local i64 @atomic_load_zu(i32*, i32) #1

declare dso_local i32 @atomic_compare_exchange_weak_zu(i32*, i64*, i64, i32, i32) #1

declare dso_local i64 @prof_gdump_get_unlocked(...) #1

declare dso_local i32 @prof_gdump(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
