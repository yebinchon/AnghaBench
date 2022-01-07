; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_metamorphic.c_mm_hmacsha256.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_metamorphic.c_mm_hmacsha256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_ITER = common dso_local global i32 0, align 4
@MAXLEN = common dso_local global i32 0, align 4
@crypto_auth_hmacsha256_KEYBYTES = common dso_local global i64 0, align 8
@crypto_auth_hmacsha256_BYTES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mm_hmacsha256 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mm_hmacsha256() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %86, %0
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @MAX_ITER, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %89

14:                                               ; preds = %10
  %15 = load i32, i32* @MAXLEN, align 4
  %16 = call i64 @randombytes_uniform(i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @sodium_malloc(i64 %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %5, align 8
  %20 = load i64, i64* @crypto_auth_hmacsha256_KEYBYTES, align 8
  %21 = call i64 @sodium_malloc(i64 %20)
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %4, align 8
  %23 = load i64, i64* @crypto_auth_hmacsha256_BYTES, align 8
  %24 = call i64 @sodium_malloc(i64 %23)
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %2, align 8
  %26 = load i64, i64* @crypto_auth_hmacsha256_BYTES, align 8
  %27 = call i64 @sodium_malloc(i64 %26)
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %3, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @crypto_auth_hmacsha256_keygen(i8* %29)
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @randombytes_buf(i8* %31, i64 %32)
  %34 = load i8*, i8** %4, align 8
  %35 = load i64, i64* @crypto_auth_hmacsha256_KEYBYTES, align 8
  %36 = call i32 @crypto_auth_hmacsha256_init(i32* %1, i8* %34, i64 %35)
  %37 = load i64, i64* %6, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i64 @randombytes_uniform(i32 %38)
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = sub i64 %40, %41
  %43 = trunc i64 %42 to i32
  %44 = call i64 @randombytes_uniform(i32 %43)
  store i64 %44, i64* %8, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @crypto_auth_hmacsha256_update(i32* %1, i8* %45, i64 %46)
  %48 = load i8*, i8** %5, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @crypto_auth_hmacsha256_update(i32* %1, i8* %50, i64 %51)
  %53 = load i8*, i8** %5, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = sub i64 %58, %59
  %61 = load i64, i64* %8, align 8
  %62 = sub i64 %60, %61
  %63 = call i32 @crypto_auth_hmacsha256_update(i32* %1, i8* %57, i64 %62)
  %64 = load i8*, i8** %2, align 8
  %65 = call i32 @crypto_auth_hmacsha256_final(i32* %1, i8* %64)
  %66 = load i8*, i8** %3, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = call i32 @crypto_auth_hmacsha256(i8* %66, i8* %67, i64 %68, i8* %69)
  %71 = load i8*, i8** %2, align 8
  %72 = load i8*, i8** %3, align 8
  %73 = load i64, i64* @crypto_auth_hmacsha256_BYTES, align 8
  %74 = call i64 @memcmp(i8* %71, i8* %72, i64 %73)
  %75 = icmp eq i64 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load i8*, i8** %3, align 8
  %79 = call i32 @sodium_free(i8* %78)
  %80 = load i8*, i8** %2, align 8
  %81 = call i32 @sodium_free(i8* %80)
  %82 = load i8*, i8** %4, align 8
  %83 = call i32 @sodium_free(i8* %82)
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 @sodium_free(i8* %84)
  br label %86

86:                                               ; preds = %14
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %10

89:                                               ; preds = %10
  ret void
}

declare dso_local i64 @randombytes_uniform(i32) #1

declare dso_local i64 @sodium_malloc(i64) #1

declare dso_local i32 @crypto_auth_hmacsha256_keygen(i8*) #1

declare dso_local i32 @randombytes_buf(i8*, i64) #1

declare dso_local i32 @crypto_auth_hmacsha256_init(i32*, i8*, i64) #1

declare dso_local i32 @crypto_auth_hmacsha256_update(i32*, i8*, i64) #1

declare dso_local i32 @crypto_auth_hmacsha256_final(i32*, i8*) #1

declare dso_local i32 @crypto_auth_hmacsha256(i8*, i8*, i64, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @sodium_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
