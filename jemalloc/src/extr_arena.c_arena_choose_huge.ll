; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_choose_huge.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_choose_huge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@huge_arena_ind = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @arena_choose_huge(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i64, i64* @huge_arena_ind, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = call i32 (...) @malloc_initialized()
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  br label %13

13:                                               ; preds = %7, %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @tsd_tsdn(i32* %14)
  %16 = load i64, i64* @huge_arena_ind, align 8
  %17 = call i32* @arena_get(i32 %15, i64 %16, i32 0)
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %49

20:                                               ; preds = %13
  %21 = load i64, i64* @huge_arena_ind, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @tsd_tsdn(i32* %25)
  %27 = load i64, i64* @huge_arena_ind, align 8
  %28 = call i32* @arena_get(i32 %26, i64 %27, i32 1)
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  store i32* null, i32** %2, align 8
  br label %51

32:                                               ; preds = %20
  %33 = call i64 (...) @arena_dirty_decay_ms_default_get()
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @tsd_tsdn(i32* %36)
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @arena_dirty_decay_ms_set(i32 %37, i32* %38, i32 0)
  br label %40

40:                                               ; preds = %35, %32
  %41 = call i64 (...) @arena_muzzy_decay_ms_default_get()
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @tsd_tsdn(i32* %44)
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @arena_muzzy_decay_ms_set(i32 %45, i32* %46, i32 0)
  br label %48

48:                                               ; preds = %43, %40
  br label %49

49:                                               ; preds = %48, %13
  %50 = load i32*, i32** %4, align 8
  store i32* %50, i32** %2, align 8
  br label %51

51:                                               ; preds = %49, %31
  %52 = load i32*, i32** %2, align 8
  ret i32* %52
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @malloc_initialized(...) #1

declare dso_local i32* @arena_get(i32, i64, i32) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i64 @arena_dirty_decay_ms_default_get(...) #1

declare dso_local i32 @arena_dirty_decay_ms_set(i32, i32*, i32) #1

declare dso_local i64 @arena_muzzy_decay_ms_default_get(...) #1

declare dso_local i32 @arena_muzzy_decay_ms_set(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
