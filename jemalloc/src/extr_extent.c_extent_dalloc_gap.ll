; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_dalloc_gap.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_dalloc_gap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXTENT_HOOKS_INITIALIZER = common dso_local global i32* null, align 8
@WITNESS_RANK_CORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @extent_dalloc_gap(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** @EXTENT_HOOKS_INITIALIZER, align 8
  store i32* %8, i32** %7, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @tsdn_witness_tsdp_get(i32* %9)
  %11 = load i32, i32* @WITNESS_RANK_CORE, align 4
  %12 = call i32 @witness_assert_depth_to_rank(i32 %10, i32 %11, i32 0)
  %13 = load i32*, i32** %4, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i64 @extent_register(i32* %13, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i32*, i32** %4, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @extent_dalloc(i32* %18, i32* %19, i32* %20)
  br label %27

22:                                               ; preds = %3
  %23 = load i32*, i32** %4, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @extent_dalloc_wrapper(i32* %23, i32* %24, i32** %7, i32* %25)
  br label %27

27:                                               ; preds = %22, %17
  ret void
}

declare dso_local i32 @witness_assert_depth_to_rank(i32, i32, i32) #1

declare dso_local i32 @tsdn_witness_tsdp_get(i32*) #1

declare dso_local i64 @extent_register(i32*, i32*) #1

declare dso_local i32 @extent_dalloc(i32*, i32*, i32*) #1

declare dso_local i32 @extent_dalloc_wrapper(i32*, i32*, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
