; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_auth/hmacsha256/extr_auth_hmacsha256.c_crypto_auth_hmacsha256_verify.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_auth/hmacsha256/extr_auth_hmacsha256.c_crypto_auth_hmacsha256_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_auth_hmacsha256_verify(i8* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [32 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %11 = load i8*, i8** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 @crypto_auth_hmacsha256(i8* %10, i8* %11, i64 %12, i8* %13)
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %17 = call i32 @crypto_verify_32(i8* %15, i8* %16)
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %20 = icmp eq i8* %18, %19
  %21 = zext i1 %20 to i32
  %22 = sub nsw i32 0, %21
  %23 = or i32 %17, %22
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @sodium_memcmp(i8* %24, i8* %25, i32 32)
  %27 = or i32 %23, %26
  ret i32 %27
}

declare dso_local i32 @crypto_auth_hmacsha256(i8*, i8*, i64, i8*) #1

declare dso_local i32 @crypto_verify_32(i8*, i8*) #1

declare dso_local i32 @sodium_memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
