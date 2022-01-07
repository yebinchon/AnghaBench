; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/test/extr_test_compress.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/test/extr_test_compress.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uECC_Curve_t = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"Testing compression and decompression of %d random EC points\0A\00", align 1
@uECC_TEST_NUMBER_OF_ITERATIONS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"uECC_make_key() failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Original and decompressed points are not identical!\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Original point =     \00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Compressed point =   \00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Decompressed point = \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [64 x i32], align 16
  %3 = alloca [32 x i32], align 16
  %4 = alloca [33 x i32], align 16
  %5 = alloca [64 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [5 x %struct.uECC_Curve_t*], align 16
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @uECC_TEST_NUMBER_OF_ITERATIONS, align 4
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %10)
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %72, %0
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %75

16:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %67, %16
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @uECC_TEST_NUMBER_OF_ITERATIONS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %70

21:                                               ; preds = %17
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @stdout, align 4
  %24 = call i32 @fflush(i32 %23)
  %25 = getelementptr inbounds [64 x i32], [64 x i32]* %2, i64 0, i64 0
  %26 = call i32 @memset(i32* %25, i32 0, i32 256)
  %27 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %28 = call i32 @memset(i32* %27, i32 0, i32 256)
  %29 = getelementptr inbounds [64 x i32], [64 x i32]* %2, i64 0, i64 0
  %30 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [5 x %struct.uECC_Curve_t*], [5 x %struct.uECC_Curve_t*]* %8, i64 0, i64 %32
  %34 = load %struct.uECC_Curve_t*, %struct.uECC_Curve_t** %33, align 8
  %35 = call i32 @uECC_make_key(i32* %29, i32* %30, %struct.uECC_Curve_t* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %21
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %67

39:                                               ; preds = %21
  %40 = getelementptr inbounds [64 x i32], [64 x i32]* %2, i64 0, i64 0
  %41 = getelementptr inbounds [33 x i32], [33 x i32]* %4, i64 0, i64 0
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [5 x %struct.uECC_Curve_t*], [5 x %struct.uECC_Curve_t*]* %8, i64 0, i64 %43
  %45 = load %struct.uECC_Curve_t*, %struct.uECC_Curve_t** %44, align 8
  %46 = call i32 @uECC_compress(i32* %40, i32* %41, %struct.uECC_Curve_t* %45)
  %47 = getelementptr inbounds [33 x i32], [33 x i32]* %4, i64 0, i64 0
  %48 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [5 x %struct.uECC_Curve_t*], [5 x %struct.uECC_Curve_t*]* %8, i64 0, i64 %50
  %52 = load %struct.uECC_Curve_t*, %struct.uECC_Curve_t** %51, align 8
  %53 = call i32 @uECC_decompress(i32* %47, i32* %48, %struct.uECC_Curve_t* %52)
  %54 = getelementptr inbounds [64 x i32], [64 x i32]* %2, i64 0, i64 0
  %55 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %56 = call i64 @memcmp(i32* %54, i32* %55, i32 256)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %39
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %60 = getelementptr inbounds [64 x i32], [64 x i32]* %2, i64 0, i64 0
  %61 = call i32 @vli_print(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32* %60, i32 256)
  %62 = getelementptr inbounds [33 x i32], [33 x i32]* %4, i64 0, i64 0
  %63 = call i32 @vli_print(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32* %62, i32 132)
  %64 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %65 = call i32 @vli_print(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32* %64, i32 256)
  br label %66

66:                                               ; preds = %58, %39
  br label %67

67:                                               ; preds = %66, %37
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %17

70:                                               ; preds = %17
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %12

75:                                               ; preds = %12
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @uECC_make_key(i32*, i32*, %struct.uECC_Curve_t*) #1

declare dso_local i32 @uECC_compress(i32*, i32*, %struct.uECC_Curve_t*) #1

declare dso_local i32 @uECC_decompress(i32*, i32*, %struct.uECC_Curve_t*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @vli_print(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
