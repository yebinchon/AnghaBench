; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_ed25519_convert.c_xmain.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_ed25519_convert.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_sign_ed25519_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@crypto_sign_ed25519_SECRETKEYBYTES = common dso_local global i32 0, align 4
@crypto_scalarmult_curve25519_BYTES = common dso_local global i32 0, align 4
@crypto_sign_ed25519_SEEDBYTES = common dso_local global i64 0, align 8
@crypto_hash_sha512_BYTES = common dso_local global i64 0, align 8
@keypair_seed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"conversion failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"curve25519 pk: [%s]\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"curve25519 sk: [%s]\0A\00", align 1
@.str.3 = private unnamed_addr constant [129 x i8] c"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000\00", align 1
@.str.4 = private unnamed_addr constant [129 x i8] c"02000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000\00", align 1
@.str.5 = private unnamed_addr constant [129 x i8] c"05000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %11 = load i32, i32* @crypto_sign_ed25519_PUBLICKEYBYTES, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %2, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %3, align 8
  %15 = load i32, i32* @crypto_sign_ed25519_SECRETKEYBYTES, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %4, align 8
  %18 = load i32, i32* @crypto_scalarmult_curve25519_BYTES, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %5, align 8
  %21 = load i32, i32* @crypto_scalarmult_curve25519_BYTES, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %6, align 8
  %24 = load i32, i32* @crypto_scalarmult_curve25519_BYTES, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %7, align 8
  %27 = load i32, i32* @crypto_scalarmult_curve25519_BYTES, align 4
  %28 = mul nsw i32 %27, 2
  %29 = add nsw i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %8, align 8
  %32 = load i32, i32* @crypto_scalarmult_curve25519_BYTES, align 4
  %33 = mul nsw i32 %32, 2
  %34 = add nsw i32 %33, 1
  %35 = zext i32 %34 to i64
  %36 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %9, align 8
  %37 = load i64, i64* @crypto_sign_ed25519_SEEDBYTES, align 8
  %38 = load i64, i64* @crypto_hash_sha512_BYTES, align 8
  %39 = icmp sle i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* @keypair_seed, align 4
  %43 = call i32 @crypto_sign_ed25519_seed_keypair(i8* %14, i8* %17, i32 %42)
  %44 = call i32 @crypto_sign_ed25519_pk_to_curve25519(i8* %20, i8* %14)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %0
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %0
  %49 = call i32 @crypto_sign_ed25519_sk_to_curve25519(i8* %26, i8* %17)
  %50 = trunc i64 %30 to i32
  %51 = trunc i64 %19 to i32
  %52 = call i32 @sodium_bin2hex(i8* %31, i32 %50, i8* %20, i32 %51)
  %53 = trunc i64 %35 to i32
  %54 = trunc i64 %25 to i32
  %55 = call i32 @sodium_bin2hex(i8* %36, i32 %53, i8* %26, i32 %54)
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %76, %48
  %59 = load i32, i32* %10, align 4
  %60 = icmp ult i32 %59, 500
  br i1 %60, label %61, label %79

61:                                               ; preds = %58
  %62 = call i32 @crypto_sign_ed25519_keypair(i8* %14, i8* %17)
  %63 = call i32 @crypto_sign_ed25519_pk_to_curve25519(i8* %20, i8* %14)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %61
  %68 = call i32 @crypto_sign_ed25519_sk_to_curve25519(i8* %26, i8* %17)
  %69 = call i32 @crypto_scalarmult_curve25519_base(i8* %23, i8* %26)
  %70 = trunc i64 %19 to i32
  %71 = call i64 @memcmp(i8* %20, i8* %23, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %67
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %10, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %58

79:                                               ; preds = %58
  %80 = load i32, i32* @crypto_sign_ed25519_PUBLICKEYBYTES, align 4
  %81 = call i32 @sodium_hex2bin(i8* %14, i32 %80, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.3, i64 0, i64 0), i32 64, i32* null, i32* null, i32* null)
  %82 = call i32 @crypto_sign_ed25519_pk_to_curve25519(i8* %20, i8* %14)
  %83 = icmp eq i32 %82, -1
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load i32, i32* @crypto_sign_ed25519_PUBLICKEYBYTES, align 4
  %87 = call i32 @sodium_hex2bin(i8* %14, i32 %86, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.4, i64 0, i64 0), i32 64, i32* null, i32* null, i32* null)
  %88 = call i32 @crypto_sign_ed25519_pk_to_curve25519(i8* %20, i8* %14)
  %89 = icmp eq i32 %88, -1
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load i32, i32* @crypto_sign_ed25519_PUBLICKEYBYTES, align 4
  %93 = call i32 @sodium_hex2bin(i8* %14, i32 %92, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.5, i64 0, i64 0), i32 64, i32* null, i32* null, i32* null)
  %94 = call i32 @crypto_sign_ed25519_pk_to_curve25519(i8* %20, i8* %14)
  %95 = icmp eq i32 %94, -1
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  %99 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %1, align 4
  ret i32 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @crypto_sign_ed25519_seed_keypair(i8*, i8*, i32) #2

declare dso_local i32 @crypto_sign_ed25519_pk_to_curve25519(i8*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @crypto_sign_ed25519_sk_to_curve25519(i8*, i8*) #2

declare dso_local i32 @sodium_bin2hex(i8*, i32, i8*, i32) #2

declare dso_local i32 @crypto_sign_ed25519_keypair(i8*, i8*) #2

declare dso_local i32 @crypto_scalarmult_curve25519_base(i8*, i8*) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @sodium_hex2bin(i8*, i32, i8*, i32, i32*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
