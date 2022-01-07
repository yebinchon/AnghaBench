; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_tcrypt.c_test_mb_ahash_jiffies.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_tcrypt.c_test_mb_ahash_jiffies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_mb_ahash_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%d operations in %d seconds (%ld bytes)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.test_mb_ahash_data*, i32, i32, i32)* @test_mb_ahash_jiffies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_mb_ahash_jiffies(%struct.test_mb_ahash_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.test_mb_ahash_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.test_mb_ahash_data* %0, %struct.test_mb_ahash_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kcalloc(i32 %15, i32 4, i32 %16)
  store i32* %17, i32** %14, align 8
  %18 = load i32*, i32** %14, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %66

23:                                               ; preds = %4
  %24 = load i64, i64* @jiffies, align 8
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @HZ, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = add i64 %25, %29
  store i64 %30, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %45, %23
  %32 = load i64, i64* @jiffies, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call i64 @time_before(i64 %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load %struct.test_mb_ahash_data*, %struct.test_mb_ahash_data** %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32*, i32** %14, align 8
  %40 = call i32 @do_mult_ahash_op(%struct.test_mb_ahash_data* %37, i32 %38, i32* %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %62

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %12, align 4
  br label %31

48:                                               ; preds = %31
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %9, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = mul nsw i64 %54, %56
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = mul nsw i64 %57, %59
  %61 = call i32 @pr_cont(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52, i64 %60)
  br label %62

62:                                               ; preds = %48, %43
  %63 = load i32*, i32** %14, align 8
  %64 = call i32 @kfree(i32* %63)
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %62, %20
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @do_mult_ahash_op(%struct.test_mb_ahash_data*, i32, i32*) #1

declare dso_local i32 @pr_cont(i8*, i32, i32, i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
