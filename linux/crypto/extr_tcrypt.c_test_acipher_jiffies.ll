; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_tcrypt.c_test_acipher_jiffies.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_tcrypt.c_test_acipher_jiffies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%d operations in %d seconds (%ld bytes)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*, i32, i32, i32)* @test_acipher_jiffies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_acipher_jiffies(%struct.skcipher_request* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.skcipher_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i64, i64* @jiffies, align 8
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @HZ, align 4
  %18 = mul nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = add i64 %15, %19
  store i64 %20, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %45, %4
  %22 = load i64, i64* @jiffies, align 8
  %23 = load i64, i64* %11, align 8
  %24 = call i64 @time_before(i64 %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.skcipher_request*, %struct.skcipher_request** %6, align 8
  %31 = load %struct.skcipher_request*, %struct.skcipher_request** %6, align 8
  %32 = call i32 @crypto_skcipher_encrypt(%struct.skcipher_request* %31)
  %33 = call i32 @do_one_acipher_op(%struct.skcipher_request* %30, i32 %32)
  store i32 %33, i32* %13, align 4
  br label %39

34:                                               ; preds = %26
  %35 = load %struct.skcipher_request*, %struct.skcipher_request** %6, align 8
  %36 = load %struct.skcipher_request*, %struct.skcipher_request** %6, align 8
  %37 = call i32 @crypto_skcipher_decrypt(%struct.skcipher_request* %36)
  %38 = call i32 @do_one_acipher_op(%struct.skcipher_request* %35, i32 %37)
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %5, align 4
  br label %57

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %12, align 4
  br label %21

48:                                               ; preds = %21
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = mul nsw i64 %52, %54
  %56 = call i32 @pr_cont(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50, i64 %55)
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %48, %42
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @do_one_acipher_op(%struct.skcipher_request*, i32) #1

declare dso_local i32 @crypto_skcipher_encrypt(%struct.skcipher_request*) #1

declare dso_local i32 @crypto_skcipher_decrypt(%struct.skcipher_request*) #1

declare dso_local i32 @pr_cont(i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
