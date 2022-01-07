; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_tcrypt.c_test_mb_ahash_cycles.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_tcrypt.c_test_mb_ahash_cycles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_mb_ahash_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"1 operation in %lu cycles (%d bytes)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.test_mb_ahash_data*, i32, i32)* @test_mb_ahash_cycles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_mb_ahash_cycles(%struct.test_mb_ahash_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.test_mb_ahash_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.test_mb_ahash_data* %0, %struct.test_mb_ahash_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32* @kcalloc(i32 %14, i32 4, i32 %15)
  store i32* %16, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %74

22:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %35, %22
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 4
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load %struct.test_mb_ahash_data*, %struct.test_mb_ahash_data** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32*, i32** %11, align 8
  %30 = call i32 @do_mult_ahash_op(%struct.test_mb_ahash_data* %27, i32 %28, i32* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %70

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %23

38:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %58, %38
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 8
  br i1 %41, label %42, label %61

42:                                               ; preds = %39
  %43 = call i64 (...) @get_cycles()
  store i64 %43, i64* %12, align 8
  %44 = load %struct.test_mb_ahash_data*, %struct.test_mb_ahash_data** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @do_mult_ahash_op(%struct.test_mb_ahash_data* %44, i32 %45, i32* %46)
  store i32 %47, i32* %9, align 4
  %48 = call i64 (...) @get_cycles()
  store i64 %48, i64* %13, align 8
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %70

52:                                               ; preds = %42
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* %12, align 8
  %55 = sub nsw i64 %53, %54
  %56 = load i64, i64* %8, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %8, align 8
  br label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %39

61:                                               ; preds = %39
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, 4
  %64 = load i32, i32* %7, align 4
  %65 = mul nsw i32 8, %64
  %66 = sext i32 %65 to i64
  %67 = udiv i64 %63, %66
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @pr_cont(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %67, i32 %68)
  br label %70

70:                                               ; preds = %61, %51, %33
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @kfree(i32* %71)
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %70, %19
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @do_mult_ahash_op(%struct.test_mb_ahash_data*, i32, i32*) #1

declare dso_local i64 @get_cycles(...) #1

declare dso_local i32 @pr_cont(i8*, i64, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
