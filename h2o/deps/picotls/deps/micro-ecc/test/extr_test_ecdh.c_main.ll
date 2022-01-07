; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/test/extr_test_ecdh.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/test/extr_test_ecdh.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uECC_Curve_t = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Testing 256 random private key pairs\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"uECC_make_key() failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"shared_secret() failed (1)\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"shared_secret() failed (2)\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Shared secrets are not identical!\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Private key 1 = \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Private key 2 = \00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Public key 1 = \00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Public key 2 = \00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Shared secret 1 = \00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"Shared secret 2 = \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [32 x i32], align 16
  %5 = alloca [32 x i32], align 16
  %6 = alloca [64 x i32], align 16
  %7 = alloca [64 x i32], align 16
  %8 = alloca [32 x i32], align 16
  %9 = alloca [32 x i32], align 16
  %10 = alloca [5 x %struct.uECC_Curve_t*], align 16
  %11 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %12 = bitcast [32 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 128, i1 false)
  %13 = bitcast [32 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 128, i1 false)
  %14 = bitcast [64 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 256, i1 false)
  %15 = bitcast [64 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 256, i1 false)
  %16 = bitcast [32 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 128, i1 false)
  %17 = bitcast [32 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 128, i1 false)
  store i32 0, i32* %11, align 4
  %18 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %111, %0
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %114

23:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %106, %23
  %25 = load i32, i32* %2, align 4
  %26 = icmp slt i32 %25, 256
  br i1 %26, label %27, label %109

27:                                               ; preds = %24
  %28 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @stdout, align 4
  %30 = call i32 @fflush(i32 %29)
  %31 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %32 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [5 x %struct.uECC_Curve_t*], [5 x %struct.uECC_Curve_t*]* %10, i64 0, i64 %34
  %36 = load %struct.uECC_Curve_t*, %struct.uECC_Curve_t** %35, align 8
  %37 = call i32 @uECC_make_key(i32* %31, i32* %32, %struct.uECC_Curve_t* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %27
  %40 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %41 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [5 x %struct.uECC_Curve_t*], [5 x %struct.uECC_Curve_t*]* %10, i64 0, i64 %43
  %45 = load %struct.uECC_Curve_t*, %struct.uECC_Curve_t** %44, align 8
  %46 = call i32 @uECC_make_key(i32* %40, i32* %41, %struct.uECC_Curve_t* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %39, %27
  %49 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %115

50:                                               ; preds = %39
  %51 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %52 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %53 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [5 x %struct.uECC_Curve_t*], [5 x %struct.uECC_Curve_t*]* %10, i64 0, i64 %55
  %57 = load %struct.uECC_Curve_t*, %struct.uECC_Curve_t** %56, align 8
  %58 = call i32 @uECC_shared_secret(i32* %51, i32* %52, i32* %53, %struct.uECC_Curve_t* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %50
  %61 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %115

62:                                               ; preds = %50
  %63 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %64 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %65 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 0
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [5 x %struct.uECC_Curve_t*], [5 x %struct.uECC_Curve_t*]* %10, i64 0, i64 %67
  %69 = load %struct.uECC_Curve_t*, %struct.uECC_Curve_t** %68, align 8
  %70 = call i32 @uECC_shared_secret(i32* %63, i32* %64, i32* %65, %struct.uECC_Curve_t* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %62
  %73 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %115

74:                                               ; preds = %62
  %75 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %76 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 0
  %77 = call i64 @memcmp(i32* %75, i32* %76, i32 128)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %105

79:                                               ; preds = %74
  %80 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %81 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %82 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %83 = call i32 @vli_print(i32* %82, i32 32)
  %84 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %85 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %86 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %87 = call i32 @vli_print(i32* %86, i32 32)
  %88 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %89 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %90 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %91 = call i32 @vli_print(i32* %90, i32 64)
  %92 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %93 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %94 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  %95 = call i32 @vli_print(i32* %94, i32 64)
  %96 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %97 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %98 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %99 = call i32 @vli_print(i32* %98, i32 32)
  %100 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %101 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %102 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 0
  %103 = call i32 @vli_print(i32* %102, i32 32)
  %104 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %105

105:                                              ; preds = %79, %74
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %2, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %2, align 4
  br label %24

109:                                              ; preds = %24
  %110 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109
  %112 = load i32, i32* %3, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %3, align 4
  br label %19

114:                                              ; preds = %19
  store i32 0, i32* %1, align 4
  br label %115

115:                                              ; preds = %114, %72, %60, %48
  %116 = load i32, i32* %1, align 4
  ret i32 %116
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i32 @uECC_make_key(i32*, i32*, %struct.uECC_Curve_t*) #2

declare dso_local i32 @uECC_shared_secret(i32*, i32*, i32*, %struct.uECC_Curve_t*) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @vli_print(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
