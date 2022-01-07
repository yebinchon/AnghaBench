; ModuleID = '/home/carl/AnghaBench/jemalloc/test/unit/extr_prng.c_test_prng_range_zu.c'
source_filename = "/home/carl/AnghaBench/jemalloc/test/unit/extr_prng.c_test_prng_range_zu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATOMIC_RELAXED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Out of range\00", align 1
@MAX_RANGE = common dso_local global i64 0, align 8
@NREPS = common dso_local global i32 0, align 4
@RANGE_STEP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_prng_range_zu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_prng_range_zu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i64 2, i64* %3, align 8
  br label %7

7:                                                ; preds = %28, %1
  %8 = load i64, i64* %3, align 8
  %9 = icmp ult i64 %8, 10000000
  br i1 %9, label %10, label %31

10:                                               ; preds = %7
  %11 = load i64, i64* %3, align 8
  %12 = load i32, i32* @ATOMIC_RELAXED, align 4
  %13 = call i32 @atomic_store_zu(i32* %4, i64 %11, i32 %12)
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %24, %10
  %15 = load i32, i32* %5, align 4
  %16 = icmp ult i32 %15, 10
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i64, i64* %3, align 8
  %19 = load i32, i32* %2, align 4
  %20 = call i64 @prng_range_zu(i32* %4, i64 %18, i32 %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @assert_zu_lt(i64 %21, i64 %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %14

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %3, align 8
  %30 = add i64 %29, 97
  store i64 %30, i64* %3, align 8
  br label %7

31:                                               ; preds = %7
  ret void
}

declare dso_local i32 @atomic_store_zu(i32*, i64, i32) #1

declare dso_local i64 @prng_range_zu(i32*, i64, i32) #1

declare dso_local i32 @assert_zu_lt(i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
