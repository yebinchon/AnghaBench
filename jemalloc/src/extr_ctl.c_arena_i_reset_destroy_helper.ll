; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_ctl.c_arena_i_reset_destroy_helper.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_ctl.c_arena_i_reset_destroy_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i64, i8*, i64*, i8*, i64, i32*, i32**)* @arena_i_reset_destroy_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arena_i_reset_destroy_helper(i32* %0, i64* %1, i64 %2, i8* %3, i64* %4, i8* %5, i64 %6, i32* %7, i32** %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32**, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i64* %1, i64** %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i64* %4, i64** %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32* %7, i32** %17, align 8
  store i32** %8, i32*** %18, align 8
  %20 = call i32 (...) @READONLY()
  %21 = call i32 (...) @WRITEONLY()
  %22 = load i32*, i32** %17, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @MIB_UNSIGNED(i32 %23, i32 1)
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @tsd_tsdn(i32* %25)
  %27 = load i32*, i32** %17, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @arena_get(i32 %26, i32 %28, i32 0)
  %30 = load i32**, i32*** %18, align 8
  store i32* %29, i32** %30, align 8
  %31 = load i32**, i32*** %18, align 8
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %9
  %35 = load i32**, i32*** %18, align 8
  %36 = load i32*, i32** %35, align 8
  %37 = call i64 @arena_is_auto(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34, %9
  %40 = load i32, i32* @EFAULT, align 4
  store i32 %40, i32* %19, align 4
  br label %42

41:                                               ; preds = %34
  store i32 0, i32* %19, align 4
  br label %42

42:                                               ; preds = %41, %39
  %43 = load i32, i32* %19, align 4
  ret i32 %43
}

declare dso_local i32 @READONLY(...) #1

declare dso_local i32 @WRITEONLY(...) #1

declare dso_local i32 @MIB_UNSIGNED(i32, i32) #1

declare dso_local i32* @arena_get(i32, i32, i32) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i64 @arena_is_auto(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
