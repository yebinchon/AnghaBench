; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_core/ed25519/extr_core_ed25519.c_crypto_core_ed25519_scalar_add.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_core/ed25519/extr_core_ed25519.c_crypto_core_ed25519_scalar_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_core_ed25519_NONREDUCEDSCALARBYTES = common dso_local global i32 0, align 4
@crypto_core_ed25519_SCALARBYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crypto_core_ed25519_scalar_add(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @crypto_core_ed25519_NONREDUCEDSCALARBYTES, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i32, i32* @crypto_core_ed25519_NONREDUCEDSCALARBYTES, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %17 = trunc i64 %11 to i32
  %18 = call i32 @memset(i8* %13, i32 0, i32 %17)
  %19 = trunc i64 %15 to i32
  %20 = call i32 @memset(i8* %16, i32 0, i32 %19)
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* @crypto_core_ed25519_SCALARBYTES, align 4
  %23 = call i32 @memcpy(i8* %13, i8* %21, i32 %22)
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* @crypto_core_ed25519_SCALARBYTES, align 4
  %26 = call i32 @memcpy(i8* %16, i8* %24, i32 %25)
  %27 = load i32, i32* @crypto_core_ed25519_SCALARBYTES, align 4
  %28 = call i32 @sodium_add(i8* %13, i8* %16, i32 %27)
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @crypto_core_ed25519_scalar_reduce(i8* %29, i8* %13)
  %31 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %31)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @sodium_add(i8*, i8*, i32) #2

declare dso_local i32 @crypto_core_ed25519_scalar_reduce(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
