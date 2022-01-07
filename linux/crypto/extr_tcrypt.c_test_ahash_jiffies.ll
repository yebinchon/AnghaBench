; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_tcrypt.c_test_ahash_jiffies.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_tcrypt.c_test_ahash_jiffies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%6u opers/sec, %9lu bytes/sec\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i32, i32, i8*, i32)* @test_ahash_jiffies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_ahash_jiffies(%struct.ahash_request* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ahash_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i8*, i8** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @test_ahash_jiffies_digest(%struct.ahash_request* %21, i32 %22, i8* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  br label %93

26:                                               ; preds = %5
  %27 = load i64, i64* @jiffies, align 8
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @HZ, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = add i64 %28, %32
  store i64 %33, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %34

34:                                               ; preds = %77, %26
  %35 = load i64, i64* @jiffies, align 8
  %36 = load i64, i64* %13, align 8
  %37 = call i64 @time_before(i64 %35, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %80

39:                                               ; preds = %34
  %40 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  %41 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  %42 = call i32 @crypto_ahash_init(%struct.ahash_request* %41)
  %43 = call i32 @do_one_ahash_op(%struct.ahash_request* %40, i32 %42)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %16, align 4
  store i32 %47, i32* %6, align 4
  br label %93

48:                                               ; preds = %39
  store i32 0, i32* %15, align 4
  br label %49

49:                                               ; preds = %63, %48
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  %55 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  %56 = call i32 @crypto_ahash_update(%struct.ahash_request* %55)
  %57 = call i32 @do_one_ahash_op(%struct.ahash_request* %54, i32 %56)
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %16, align 4
  store i32 %61, i32* %6, align 4
  br label %93

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %15, align 4
  br label %49

67:                                               ; preds = %49
  %68 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  %69 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  %70 = call i32 @crypto_ahash_final(%struct.ahash_request* %69)
  %71 = call i32 @do_one_ahash_op(%struct.ahash_request* %68, i32 %70)
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* %16, align 4
  store i32 %75, i32* %6, align 4
  br label %93

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %14, align 4
  br label %34

80:                                               ; preds = %34
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %11, align 4
  %83 = sdiv i32 %81, %82
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = mul nsw i64 %85, %87
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = sdiv i64 %88, %90
  %92 = call i32 @pr_cont(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %83, i64 %91)
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %80, %74, %60, %46, %20
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @test_ahash_jiffies_digest(%struct.ahash_request*, i32, i8*, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @do_one_ahash_op(%struct.ahash_request*, i32) #1

declare dso_local i32 @crypto_ahash_init(%struct.ahash_request*) #1

declare dso_local i32 @crypto_ahash_update(%struct.ahash_request*) #1

declare dso_local i32 @crypto_ahash_final(%struct.ahash_request*) #1

declare dso_local i32 @pr_cont(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
