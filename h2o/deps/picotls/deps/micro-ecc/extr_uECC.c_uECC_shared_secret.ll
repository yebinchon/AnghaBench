; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/extr_uECC.c_uECC_shared_secret.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/extr_uECC.c_uECC_shared_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, i32 }

@uECC_MAX_WORDS = common dso_local global i32 0, align 4
@g_rng_function = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uECC_shared_secret(i32* %0, i32* %1, i32* %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [2 x i64*], align 16
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  %20 = load i32, i32* @uECC_MAX_WORDS, align 4
  %21 = mul nsw i32 %20, 2
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i64, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %25 = load i32, i32* @uECC_MAX_WORDS, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i64, i64 %26, align 16
  store i64 %26, i64* %12, align 8
  %28 = load i32, i32* @uECC_MAX_WORDS, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i64, i64 %29, align 16
  store i64 %29, i64* %13, align 8
  %31 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 0
  store i64* %27, i64** %31, align 8
  %32 = getelementptr inbounds i64*, i64** %31, i64 1
  store i64* %30, i64** %32, align 8
  store i64* null, i64** %15, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %17, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %18, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @BITS_TO_BYTES(i64 %42)
  %44 = call i32 @uECC_vli_bytesToNative(i64* %27, i32* %39, i32 %43)
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %18, align 4
  %47 = call i32 @uECC_vli_bytesToNative(i64* %24, i32* %45, i32 %46)
  %48 = load i32, i32* %17, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %24, i64 %49
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %18, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %18, align 4
  %56 = call i32 @uECC_vli_bytesToNative(i64* %50, i32* %54, i32 %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %58 = call i64 @regularize_k(i64* %27, i64* %27, i64* %30, %struct.TYPE_6__* %57)
  store i64 %58, i64* %16, align 8
  %59 = load i64, i64* @g_rng_function, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %4
  %62 = load i64, i64* %16, align 8
  %63 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 %62
  %64 = load i64*, i64** %63, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %17, align 4
  %69 = call i32 @uECC_generate_random_int(i64* %64, i32 %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %99

72:                                               ; preds = %61
  %73 = load i64, i64* %16, align 8
  %74 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 %73
  %75 = load i64*, i64** %74, align 8
  store i64* %75, i64** %15, align 8
  br label %76

76:                                               ; preds = %72, %4
  %77 = load i64, i64* %16, align 8
  %78 = icmp ne i64 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 %81
  %83 = load i64*, i64** %82, align 8
  %84 = load i64*, i64** %15, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, 1
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %90 = call i32 @EccPoint_mult(i64* %24, i64* %24, i64* %83, i64* %84, i64 %88, %struct.TYPE_6__* %89)
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %18, align 4
  %93 = call i32 @uECC_vli_nativeToBytes(i32* %91, i32 %92, i64* %24)
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %95 = call i32 @EccPoint_isZero(i64* %24, %struct.TYPE_6__* %94)
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %99

99:                                               ; preds = %76, %71
  %100 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @uECC_vli_bytesToNative(i64*, i32*, i32) #2

declare dso_local i32 @BITS_TO_BYTES(i64) #2

declare dso_local i64 @regularize_k(i64*, i64*, i64*, %struct.TYPE_6__*) #2

declare dso_local i32 @uECC_generate_random_int(i64*, i32, i32) #2

declare dso_local i32 @EccPoint_mult(i64*, i64*, i64*, i64*, i64, %struct.TYPE_6__*) #2

declare dso_local i32 @uECC_vli_nativeToBytes(i32*, i32, i64*) #2

declare dso_local i32 @EccPoint_isZero(i64*, %struct.TYPE_6__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
