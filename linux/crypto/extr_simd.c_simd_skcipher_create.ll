; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_simd.c_simd_skcipher_create.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_simd.c_simd_skcipher_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.simd_skcipher_alg = type { i32 }

@CRYPTO_MAX_ALG_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"simd-%s\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.simd_skcipher_alg* @simd_skcipher_create(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.simd_skcipher_alg*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @snprintf(i8* %12, i32 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @ENAMETOOLONG, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.simd_skcipher_alg* @ERR_PTR(i32 %20)
  store %struct.simd_skcipher_alg* %21, %struct.simd_skcipher_alg** %3, align 8
  store i32 1, i32* %8, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call %struct.simd_skcipher_alg* @simd_skcipher_create_compat(i8* %23, i8* %12, i8* %24)
  store %struct.simd_skcipher_alg* %25, %struct.simd_skcipher_alg** %3, align 8
  store i32 1, i32* %8, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %27)
  %28 = load %struct.simd_skcipher_alg*, %struct.simd_skcipher_alg** %3, align 8
  ret %struct.simd_skcipher_alg* %28
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local %struct.simd_skcipher_alg* @ERR_PTR(i32) #2

declare dso_local %struct.simd_skcipher_alg* @simd_skcipher_create_compat(i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
