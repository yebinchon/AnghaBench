; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/test/extr_test_ecdsa.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/test/extr_test_ecdsa.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uECC_Curve_t = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Testing 256 signatures\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"uECC_make_key() failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"uECC_sign() failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"uECC_verify() failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [32 x i32], align 16
  %5 = alloca [64 x i32], align 16
  %6 = alloca [32 x i32], align 16
  %7 = alloca [64 x i32], align 16
  %8 = alloca [5 x %struct.uECC_Curve_t*], align 16
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %10 = bitcast [32 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 128, i1 false)
  %11 = bitcast [64 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 256, i1 false)
  %12 = bitcast [32 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 128, i1 false)
  %13 = bitcast [64 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 256, i1 false)
  store i32 0, i32* %9, align 4
  %14 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %70, %0
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %73

19:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %65, %19
  %21 = load i32, i32* %2, align 4
  %22 = icmp slt i32 %21, 256
  br i1 %22, label %23, label %68

23:                                               ; preds = %20
  %24 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @stdout, align 4
  %26 = call i32 @fflush(i32 %25)
  %27 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %28 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [5 x %struct.uECC_Curve_t*], [5 x %struct.uECC_Curve_t*]* %8, i64 0, i64 %30
  %32 = load %struct.uECC_Curve_t*, %struct.uECC_Curve_t** %31, align 8
  %33 = call i32 @uECC_make_key(i32* %27, i32* %28, %struct.uECC_Curve_t* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %23
  %36 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %74

37:                                               ; preds = %23
  %38 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %39 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %40 = call i32 @memcpy(i32* %38, i32* %39, i32 128)
  %41 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %42 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %43 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [5 x %struct.uECC_Curve_t*], [5 x %struct.uECC_Curve_t*]* %8, i64 0, i64 %45
  %47 = load %struct.uECC_Curve_t*, %struct.uECC_Curve_t** %46, align 8
  %48 = call i32 @uECC_sign(i32* %41, i32* %42, i32 128, i32* %43, %struct.uECC_Curve_t* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %37
  %51 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %74

52:                                               ; preds = %37
  %53 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %54 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %55 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [5 x %struct.uECC_Curve_t*], [5 x %struct.uECC_Curve_t*]* %8, i64 0, i64 %57
  %59 = load %struct.uECC_Curve_t*, %struct.uECC_Curve_t** %58, align 8
  %60 = call i32 @uECC_verify(i32* %53, i32* %54, i32 128, i32* %55, %struct.uECC_Curve_t* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %52
  %63 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %74

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %2, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %2, align 4
  br label %20

68:                                               ; preds = %20
  %69 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %3, align 4
  br label %15

73:                                               ; preds = %15
  store i32 0, i32* %1, align 4
  br label %74

74:                                               ; preds = %73, %62, %50, %35
  %75 = load i32, i32* %1, align 4
  ret i32 %75
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i32 @uECC_make_key(i32*, i32*, %struct.uECC_Curve_t*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @uECC_sign(i32*, i32*, i32, i32*, %struct.uECC_Curve_t*) #2

declare dso_local i32 @uECC_verify(i32*, i32*, i32, i32*, %struct.uECC_Curve_t*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
