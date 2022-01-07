; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_prof_promote.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_prof_promote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@config_prof = common dso_local global i32 0, align 4
@SC_LARGE_MINCLASS = common dso_local global i64 0, align 8
@SC_SMALL_MAXCLASS = common dso_local global i64 0, align 8
@config_opt_safety_checks = common dso_local global i64 0, align 8
@extents_rtree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arena_prof_promote(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* @config_prof, align 4
  %12 = call i32 @cassert(i32 %11)
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @isalloc(i32* %17, i8* %18)
  %20 = load i64, i64* @SC_LARGE_MINCLASS, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @SC_SMALL_MAXCLASS, align 8
  %26 = icmp ule i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i64, i64* @config_opt_safety_checks, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %3
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @SC_LARGE_MINCLASS, align 8
  %35 = call i32 @safety_check_set_redzone(i8* %32, i64 %33, i64 %34)
  br label %36

36:                                               ; preds = %31, %3
  %37 = load i32*, i32** %4, align 8
  %38 = call i32* @tsdn_rtree_ctx(i32* %37, i32* %7)
  store i32* %38, i32** %8, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = ptrtoint i8* %41 to i64
  %43 = call i32* @rtree_extent_read(i32* %39, i32* @extents_rtree, i32* %40, i64 %42, i32 1)
  store i32* %43, i32** %9, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @sz_size2index(i64 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @extent_szind_set(i32* %46, i32 %47)
  %49 = load i32*, i32** %4, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = ptrtoint i8* %51 to i64
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @rtree_szind_slab_update(i32* %49, i32* @extents_rtree, i32* %50, i64 %52, i32 %53, i32 0)
  %55 = load i32*, i32** %4, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @prof_idump_rollback(i32* %55, i64 %56)
  %58 = load i32*, i32** %4, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = call i64 @isalloc(i32* %58, i8* %59)
  %61 = load i64, i64* %6, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  ret void
}

declare dso_local i32 @cassert(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @isalloc(i32*, i8*) #1

declare dso_local i32 @safety_check_set_redzone(i8*, i64, i64) #1

declare dso_local i32* @tsdn_rtree_ctx(i32*, i32*) #1

declare dso_local i32* @rtree_extent_read(i32*, i32*, i32*, i64, i32) #1

declare dso_local i32 @sz_size2index(i64) #1

declare dso_local i32 @extent_szind_set(i32*, i32) #1

declare dso_local i32 @rtree_szind_slab_update(i32*, i32*, i32*, i64, i32, i32) #1

declare dso_local i32 @prof_idump_rollback(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
