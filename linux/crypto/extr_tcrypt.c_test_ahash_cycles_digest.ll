; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_tcrypt.c_test_ahash_cycles_digest.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_tcrypt.c_test_ahash_cycles_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"%6lu cycles/operation, %4lu cycles/byte\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i32, i8*)* @test_ahash_cycles_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_ahash_cycles_digest(%struct.ahash_request* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ahash_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %25, %3
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %18 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %19 = call i32 @crypto_ahash_digest(%struct.ahash_request* %18)
  %20 = call i32 @do_one_ahash_op(%struct.ahash_request* %17, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %52

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %10, align 4
  br label %13

28:                                               ; preds = %13
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %48, %28
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 8
  br i1 %31, label %32, label %51

32:                                               ; preds = %29
  %33 = call i64 (...) @get_cycles()
  store i64 %33, i64* %11, align 8
  %34 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %35 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %36 = call i32 @crypto_ahash_digest(%struct.ahash_request* %35)
  %37 = call i32 @do_one_ahash_op(%struct.ahash_request* %34, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %52

41:                                               ; preds = %32
  %42 = call i64 (...) @get_cycles()
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %11, align 8
  %45 = sub nsw i64 %43, %44
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %8, align 8
  br label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %29

51:                                               ; preds = %29
  br label %52

52:                                               ; preds = %51, %40, %23
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %4, align 4
  br label %66

57:                                               ; preds = %52
  %58 = load i64, i64* %8, align 8
  %59 = udiv i64 %58, 8
  %60 = load i64, i64* %8, align 8
  %61 = load i32, i32* %6, align 4
  %62 = mul nsw i32 8, %61
  %63 = sext i32 %62 to i64
  %64 = udiv i64 %60, %63
  %65 = call i32 @pr_cont(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %59, i64 %64)
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %57, %55
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @do_one_ahash_op(%struct.ahash_request*, i32) #1

declare dso_local i32 @crypto_ahash_digest(%struct.ahash_request*) #1

declare dso_local i64 @get_cycles(...) #1

declare dso_local i32 @pr_cont(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
