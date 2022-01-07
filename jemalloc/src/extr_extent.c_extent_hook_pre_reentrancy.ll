; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_hook_pre_reentrancy.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_extent.c_extent_hook_pre_reentrancy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @extent_hook_pre_reentrancy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extent_hook_pre_reentrancy(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i64 @tsdn_null(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32* (...) @tsd_fetch()
  br label %14

11:                                               ; preds = %2
  %12 = load i32*, i32** %3, align 8
  %13 = call i32* @tsdn_tsd(i32* %12)
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi i32* [ %10, %9 ], [ %13, %11 ]
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @tsd_tsdn(i32* %17)
  %19 = call i32* @arena_get(i32 %18, i32 0, i32 0)
  %20 = icmp eq i32* %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @pre_reentrancy(i32* %22, i32* null)
  br label %28

24:                                               ; preds = %14
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @pre_reentrancy(i32* %25, i32* %26)
  br label %28

28:                                               ; preds = %24, %21
  ret void
}

declare dso_local i64 @tsdn_null(i32*) #1

declare dso_local i32* @tsd_fetch(...) #1

declare dso_local i32* @tsdn_tsd(i32*) #1

declare dso_local i32* @arena_get(i32, i32, i32) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i32 @pre_reentrancy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
