; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_tcrypt.c_test_mb_acipher_jiffies.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_tcrypt.c_test_mb_acipher_jiffies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_mb_skcipher_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%d operations in %d seconds (%ld bytes)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.test_mb_skcipher_data*, i32, i32, i32, i32)* @test_mb_acipher_jiffies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_mb_acipher_jiffies(%struct.test_mb_skcipher_data* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.test_mb_skcipher_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.test_mb_skcipher_data* %0, %struct.test_mb_skcipher_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32* @kcalloc(i32 %17, i32 4, i32 %18)
  store i32* %19, i32** %16, align 8
  %20 = load i32*, i32** %16, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %69

25:                                               ; preds = %5
  %26 = load i64, i64* @jiffies, align 8
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @HZ, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = add i64 %27, %31
  store i64 %32, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %33

33:                                               ; preds = %48, %25
  %34 = load i64, i64* @jiffies, align 8
  %35 = load i64, i64* %13, align 8
  %36 = call i64 @time_before(i64 %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load %struct.test_mb_skcipher_data*, %struct.test_mb_skcipher_data** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32*, i32** %16, align 8
  %43 = call i32 @do_mult_acipher_op(%struct.test_mb_skcipher_data* %39, i32 %40, i32 %41, i32* %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %65

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %14, align 4
  br label %33

51:                                               ; preds = %33
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %11, align 4
  %54 = mul nsw i32 %52, %53
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = mul nsw i64 %57, %59
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = mul nsw i64 %60, %62
  %64 = call i32 @pr_cont(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55, i64 %63)
  br label %65

65:                                               ; preds = %51, %46
  %66 = load i32*, i32** %16, align 8
  %67 = call i32 @kfree(i32* %66)
  %68 = load i32, i32* %15, align 4
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %65, %22
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @do_mult_acipher_op(%struct.test_mb_skcipher_data*, i32, i32, i32*) #1

declare dso_local i32 @pr_cont(i8*, i32, i32, i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
