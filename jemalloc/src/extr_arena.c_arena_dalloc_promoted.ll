; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_dalloc_promoted.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_dalloc_promoted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@config_prof = common dso_local global i32 0, align 4
@opt_prof = common dso_local global i32 0, align 4
@config_opt_safety_checks = common dso_local global i64 0, align 8
@SC_LARGE_MINCLASS = common dso_local global i64 0, align 8
@tcache_maxclass = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arena_dalloc_promoted(i32* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @config_prof, align 4
  %13 = call i32 @cassert(i32 %12)
  %14 = load i32, i32* @opt_prof, align 4
  %15 = call i32 @assert(i32 %14)
  %16 = load i32*, i32** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32* @iealloc(i32* %16, i8* %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i64 @extent_usize_get(i32* %19)
  store i64 %20, i64* %10, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @arena_prof_demote(i32* %21, i32* %22, i8* %23)
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* @config_opt_safety_checks, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %4
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @SC_LARGE_MINCLASS, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* @SC_LARGE_MINCLASS, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @safety_check_verify_redzone(i8* %37, i64 %38, i64 %39)
  br label %41

41:                                               ; preds = %31, %27, %4
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* @tcache_maxclass, align 8
  %44 = icmp ule i64 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load i32*, i32** %7, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @tsdn_tsd(i32* %49)
  %51 = load i32*, i32** %7, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @sz_size2index(i64 %53)
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @tcache_dalloc_large(i32 %50, i32* %51, i8* %52, i32 %54, i32 %55)
  br label %61

57:                                               ; preds = %45, %41
  %58 = load i32*, i32** %5, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @large_dalloc(i32* %58, i32* %59)
  br label %61

61:                                               ; preds = %57, %48
  ret void
}

declare dso_local i32 @cassert(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @iealloc(i32*, i8*) #1

declare dso_local i64 @extent_usize_get(i32*) #1

declare dso_local i64 @arena_prof_demote(i32*, i32*, i8*) #1

declare dso_local i32 @safety_check_verify_redzone(i8*, i64, i64) #1

declare dso_local i32 @tcache_dalloc_large(i32, i32*, i8*, i32, i32) #1

declare dso_local i32 @tsdn_tsd(i32*) #1

declare dso_local i32 @sz_size2index(i64) #1

declare dso_local i32 @large_dalloc(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
