; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_malloc_hard.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_malloc_hard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SC_SMALL_MAXCLASS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @arena_malloc_hard(i32* %0, i32* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @tsdn_null(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br label %18

18:                                               ; preds = %15, %5
  %19 = phi i1 [ true, %5 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @tsdn_null(i32* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @likely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %18
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @tsdn_tsd(i32* %30)
  %32 = load i32*, i32** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32* @arena_choose_maybe_huge(i32 %31, i32* %32, i64 %33)
  store i32* %34, i32** %8, align 8
  br label %35

35:                                               ; preds = %29, %18
  %36 = load i32*, i32** %8, align 8
  %37 = icmp eq i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i8* null, i8** %6, align 8
  br label %62

42:                                               ; preds = %35
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @SC_SMALL_MAXCLASS, align 8
  %45 = icmp ule i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @likely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load i32*, i32** %7, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i8* @arena_malloc_small(i32* %50, i32* %51, i32 %52, i32 %53)
  store i8* %54, i8** %6, align 8
  br label %62

55:                                               ; preds = %42
  %56 = load i32*, i32** %7, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @sz_index2size(i32 %58)
  %60 = load i32, i32* %11, align 4
  %61 = call i8* @large_malloc(i32* %56, i32* %57, i32 %59, i32 %60)
  store i8* %61, i8** %6, align 8
  br label %62

62:                                               ; preds = %55, %49, %41
  %63 = load i8*, i8** %6, align 8
  ret i8* %63
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tsdn_null(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32* @arena_choose_maybe_huge(i32, i32*, i64) #1

declare dso_local i32 @tsdn_tsd(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @arena_malloc_small(i32*, i32*, i32, i32) #1

declare dso_local i8* @large_malloc(i32*, i32*, i32, i32) #1

declare dso_local i32 @sz_index2size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
