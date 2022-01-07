; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/test/extr_test_compute.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/test/extr_test_compute.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uECC_Curve_t = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Testing 256 random private key pairs\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"uECC_make_key() failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"uECC_compute_public_key() failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Computed and provided public keys are not identical!\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Computed public key = \00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Provided public key = \00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Private key = \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Testing private key = 0\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"uECC_compute_public_key() should have failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [32 x i32], align 16
  %5 = alloca [64 x i32], align 16
  %6 = alloca [64 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca [5 x %struct.uECC_Curve_t*], align 16
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %9, align 4
  %10 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %83, %0
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %86

15:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %62, %15
  %17 = load i32, i32* %2, align 4
  %18 = icmp slt i32 %17, 256
  br i1 %18, label %19, label %65

19:                                               ; preds = %16
  %20 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @stdout, align 4
  %22 = call i32 @fflush(i32 %21)
  %23 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %24 = call i32 @memset(i32* %23, i32 0, i32 256)
  %25 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %26 = call i32 @memset(i32* %25, i32 0, i32 256)
  %27 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %28 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [5 x %struct.uECC_Curve_t*], [5 x %struct.uECC_Curve_t*]* %8, i64 0, i64 %30
  %32 = load %struct.uECC_Curve_t*, %struct.uECC_Curve_t** %31, align 8
  %33 = call i32 @uECC_make_key(i32* %27, i32* %28, %struct.uECC_Curve_t* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %19
  %36 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %62

37:                                               ; preds = %19
  %38 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %39 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [5 x %struct.uECC_Curve_t*], [5 x %struct.uECC_Curve_t*]* %8, i64 0, i64 %41
  %43 = load %struct.uECC_Curve_t*, %struct.uECC_Curve_t** %42, align 8
  %44 = call i32 @uECC_compute_public_key(i32* %38, i32* %39, %struct.uECC_Curve_t* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %37
  %47 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %37
  %49 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %50 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %51 = call i64 @memcmp(i32* %49, i32* %50, i32 256)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %55 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %56 = call i32 @vli_print(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32* %55, i32 256)
  %57 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %58 = call i32 @vli_print(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32* %57, i32 256)
  %59 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %60 = call i32 @vli_print(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32* %59, i32 128)
  br label %61

61:                                               ; preds = %53, %48
  br label %62

62:                                               ; preds = %61, %35
  %63 = load i32, i32* %2, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %2, align 4
  br label %16

65:                                               ; preds = %16
  %66 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %67 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %68 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %69 = call i32 @memset(i32* %68, i32 0, i32 128)
  %70 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %71 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [5 x %struct.uECC_Curve_t*], [5 x %struct.uECC_Curve_t*]* %8, i64 0, i64 %73
  %75 = load %struct.uECC_Curve_t*, %struct.uECC_Curve_t** %74, align 8
  %76 = call i32 @uECC_compute_public_key(i32* %70, i32* %71, %struct.uECC_Curve_t* %75)
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* %3, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %65
  %80 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %65
  %82 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %11

86:                                               ; preds = %11
  ret i32 0
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @uECC_make_key(i32*, i32*, %struct.uECC_Curve_t*) #1

declare dso_local i32 @uECC_compute_public_key(i32*, i32*, %struct.uECC_Curve_t*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @vli_print(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
