; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_n2-drv.c_n2rng_check_selftest_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_n2-drv.c_n2rng_check_selftest_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.n2rng = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@RNG_v1_SELFTEST_VAL = common dso_local global i32 0, align 4
@RNG_v2_SELFTEST_VAL = common dso_local global i32 0, align 4
@SELFTEST_LOOPS_MAX = common dso_local global i32 0, align 4
@SELFTEST_MATCH_GOAL = common dso_local global i32 0, align 4
@SELFTEST_POLY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Selftest failed on unit %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Selftest passed on unit %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.n2rng*, i64)* @n2rng_check_selftest_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n2rng_check_selftest_buffer(%struct.n2rng* %0, i64 %1) #0 {
  %3 = alloca %struct.n2rng*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.n2rng* %0, %struct.n2rng** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.n2rng*, %struct.n2rng** %3, align 8
  %10 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %16 [
    i32 129, label %14
    i32 128, label %14
    i32 131, label %14
    i32 130, label %14
  ]

14:                                               ; preds = %2, %2, %2, %2
  %15 = load i32, i32* @RNG_v1_SELFTEST_VAL, align 4
  store i32 %15, i32* %5, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @RNG_v2_SELFTEST_VAL, align 4
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %16, %14
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %39, %18
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @SELFTEST_LOOPS_MAX, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  %24 = load %struct.n2rng*, %struct.n2rng** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @n2rng_test_buffer_find(%struct.n2rng* %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @SELFTEST_MATCH_GOAL, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %42

35:                                               ; preds = %23
  %36 = load i32, i32* @SELFTEST_POLY, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @advance_polynomial(i32 %36, i32 %37, i32 1)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %19

42:                                               ; preds = %34, %19
  store i32 0, i32* %6, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @SELFTEST_LOOPS_MAX, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  %49 = load %struct.n2rng*, %struct.n2rng** %3, align 8
  %50 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %53)
  %55 = load %struct.n2rng*, %struct.n2rng** %3, align 8
  %56 = call i32 @n2rng_dump_test_buffer(%struct.n2rng* %55)
  br label %64

57:                                               ; preds = %42
  %58 = load %struct.n2rng*, %struct.n2rng** %3, align 8
  %59 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @dev_info(i32* %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %62)
  br label %64

64:                                               ; preds = %57, %46
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i64 @n2rng_test_buffer_find(%struct.n2rng*, i32) #1

declare dso_local i32 @advance_polynomial(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @n2rng_dump_test_buffer(%struct.n2rng*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
