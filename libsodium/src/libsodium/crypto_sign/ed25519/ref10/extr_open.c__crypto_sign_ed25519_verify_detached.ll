; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_sign/ed25519/ref10/extr_open.c__crypto_sign_ed25519_verify_detached.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_sign/ed25519/ref10/extr_open.c__crypto_sign_ed25519_verify_detached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_crypto_sign_ed25519_verify_detached(i8* %0, i8* %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [64 x i8], align 16
  %14 = alloca [32 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 63
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %20, 240
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %5
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 32
  %26 = call i64 @sc25519_is_canonical(i8* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 -1, i32* %6, align 4
  br label %81

29:                                               ; preds = %23, %5
  %30 = load i8*, i8** %7, align 8
  %31 = call i64 @ge25519_has_small_order(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 -1, i32* %6, align 4
  br label %81

34:                                               ; preds = %29
  %35 = load i8*, i8** %10, align 8
  %36 = call i64 @ge25519_is_canonical(i8* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i8*, i8** %10, align 8
  %40 = call i64 @ge25519_has_small_order(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %34
  store i32 -1, i32* %6, align 4
  br label %81

43:                                               ; preds = %38
  %44 = load i8*, i8** %10, align 8
  %45 = call i64 @ge25519_frombytes_negate_vartime(i32* %15, i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 -1, i32* %6, align 4
  br label %81

48:                                               ; preds = %43
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @_crypto_sign_ed25519_ref10_hinit(i32* %12, i32 %49)
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @crypto_hash_sha512_update(i32* %12, i8* %51, i64 32)
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 @crypto_hash_sha512_update(i32* %12, i8* %53, i64 32)
  %55 = load i8*, i8** %8, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @crypto_hash_sha512_update(i32* %12, i8* %55, i64 %56)
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %59 = call i32 @crypto_hash_sha512_final(i32* %12, i8* %58)
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %61 = call i32 @sc25519_reduce(i8* %60)
  %62 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 32
  %65 = call i32 @ge25519_double_scalarmult_vartime(i32* %16, i8* %62, i32* %15, i8* %64)
  %66 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %67 = call i32 @ge25519_tobytes(i8* %66, i32* %16)
  %68 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @crypto_verify_32(i8* %68, i8* %69)
  %71 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %72 = load i8*, i8** %7, align 8
  %73 = icmp eq i8* %71, %72
  %74 = zext i1 %73 to i32
  %75 = sub nsw i32 0, %74
  %76 = or i32 %70, %75
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %79 = call i32 @sodium_memcmp(i8* %77, i8* %78, i32 32)
  %80 = or i32 %76, %79
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %48, %47, %42, %33, %28
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i64 @sc25519_is_canonical(i8*) #1

declare dso_local i64 @ge25519_has_small_order(i8*) #1

declare dso_local i64 @ge25519_is_canonical(i8*) #1

declare dso_local i64 @ge25519_frombytes_negate_vartime(i32*, i8*) #1

declare dso_local i32 @_crypto_sign_ed25519_ref10_hinit(i32*, i32) #1

declare dso_local i32 @crypto_hash_sha512_update(i32*, i8*, i64) #1

declare dso_local i32 @crypto_hash_sha512_final(i32*, i8*) #1

declare dso_local i32 @sc25519_reduce(i8*) #1

declare dso_local i32 @ge25519_double_scalarmult_vartime(i32*, i8*, i32*, i8*) #1

declare dso_local i32 @ge25519_tobytes(i8*, i32*) #1

declare dso_local i32 @crypto_verify_32(i8*, i8*) #1

declare dso_local i32 @sodium_memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
