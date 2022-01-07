; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_box_seal.c_tv1.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_box_seal.c_tv1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@crypto_box_SECRETKEYBYTES = common dso_local global i32 0, align 4
@crypto_box_SEALBYTES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"crypto_box_seal() failure\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"crypto_box_seal_open() failure\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tv1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tv1() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %1, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %2, align 8
  %14 = load i32, i32* @crypto_box_SECRETKEYBYTES, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %3, align 8
  %17 = call i32 @crypto_box_keypair(i8* %13, i8* %16)
  %18 = call i64 @randombytes_uniform(i32 1000)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* @crypto_box_SEALBYTES, align 8
  %20 = load i64, i64* %7, align 8
  %21 = add i64 %19, %20
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @sodium_malloc(i64 %22)
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %5, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @sodium_malloc(i64 %25)
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** %6, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i64 @sodium_malloc(i64 %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @randombytes_buf(i8* %31, i64 %32)
  %34 = load i8*, i8** %4, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @crypto_box_seal(i8* %34, i8* %35, i64 %36, i8* %13)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %0
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %81

41:                                               ; preds = %0
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @crypto_box_seal_open(i8* %42, i8* %43, i64 %44, i8* %13, i8* %16)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %81

49:                                               ; preds = %41
  %50 = load i8*, i8** %5, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @memcmp(i8* %50, i8* %51, i64 %52)
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @crypto_box_seal_open(i8* %55, i8* %56, i64 0, i8* %13, i8* %16)
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i8*, i8** %5, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = load i64, i64* %8, align 8
  %62 = sub i64 %61, 1
  %63 = call i32 @crypto_box_seal_open(i8* %59, i8* %60, i64 %62, i8* %13, i8* %16)
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load i8*, i8** %5, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @crypto_box_seal_open(i8* %65, i8* %66, i64 %67, i8* %16, i8* %13)
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i8*, i8** %4, align 8
  %71 = call i32 @sodium_free(i8* %70)
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @sodium_free(i8* %72)
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @sodium_free(i8* %74)
  %76 = call i64 (...) @crypto_box_sealbytes()
  %77 = load i64, i64* @crypto_box_SEALBYTES, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %49, %47, %39
  %82 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %9, align 4
  switch i32 %83, label %85 [
    i32 0, label %84
    i32 1, label %84
  ]

84:                                               ; preds = %81, %81
  ret void

85:                                               ; preds = %81
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @crypto_box_keypair(i8*, i8*) #2

declare dso_local i64 @randombytes_uniform(i32) #2

declare dso_local i64 @sodium_malloc(i64) #2

declare dso_local i32 @randombytes_buf(i8*, i64) #2

declare dso_local i64 @crypto_box_seal(i8*, i8*, i64, i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @crypto_box_seal_open(i8*, i8*, i64, i8*, i8*) #2

declare dso_local i32 @memcmp(i8*, i8*, i64) #2

declare dso_local i32 @sodium_free(i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @crypto_box_sealbytes(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
