; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extents_dalloc.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extents_dalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WITNESS_RANK_CORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @extents_dalloc(i32* %0, i32* %1, i32** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32*, i32** %10, align 8
  %12 = call i32* @extent_base_get(i32* %11)
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32*, i32** %10, align 8
  %17 = call i64 @extent_size_get(i32* %16)
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32*, i32** %10, align 8
  %22 = call i32 @extent_dumpable_get(i32* %21)
  %23 = call i32 @assert(i32 %22)
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @tsdn_witness_tsdp_get(i32* %24)
  %26 = load i32, i32* @WITNESS_RANK_CORE, align 4
  %27 = call i32 @witness_assert_depth_to_rank(i32 %25, i32 %26, i32 0)
  %28 = load i32*, i32** %10, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = call i32* @extent_base_get(i32* %29)
  %31 = call i32 @extent_addr_set(i32* %28, i32* %30)
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @extent_zeroed_set(i32* %32, i32 0)
  %34 = load i32*, i32** %6, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32**, i32*** %8, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @extent_record(i32* %34, i32* %35, i32** %36, i32* %37, i32* %38, i32 0)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @extent_base_get(i32*) #1

declare dso_local i64 @extent_size_get(i32*) #1

declare dso_local i32 @extent_dumpable_get(i32*) #1

declare dso_local i32 @witness_assert_depth_to_rank(i32, i32, i32) #1

declare dso_local i32 @tsdn_witness_tsdp_get(i32*) #1

declare dso_local i32 @extent_addr_set(i32*, i32*) #1

declare dso_local i32 @extent_zeroed_set(i32*, i32) #1

declare dso_local i32 @extent_record(i32*, i32*, i32**, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
