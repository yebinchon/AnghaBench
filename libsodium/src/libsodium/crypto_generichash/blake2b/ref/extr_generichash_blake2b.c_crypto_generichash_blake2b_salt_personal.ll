; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_generichash/blake2b/ref/extr_generichash_blake2b.c_crypto_generichash_blake2b_salt_personal.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_generichash/blake2b/ref/extr_generichash_blake2b.c_crypto_generichash_blake2b_salt_personal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLAKE2B_OUTBYTES = common dso_local global i64 0, align 8
@BLAKE2B_KEYBYTES = common dso_local global i64 0, align 8
@UINT64_MAX = common dso_local global i64 0, align 8
@UINT8_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_generichash_blake2b_salt_personal(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %10, align 8
  store i64 %1, i64* %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  %18 = load i64, i64* %11, align 8
  %19 = icmp ule i64 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %8
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* @BLAKE2B_OUTBYTES, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* %15, align 8
  %26 = load i64, i64* @BLAKE2B_KEYBYTES, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* @UINT64_MAX, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %24, %20, %8
  store i32 -1, i32* %9, align 4
  br label %57

33:                                               ; preds = %28
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* @UINT8_MAX, align 8
  %36 = icmp ule i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i64, i64* %15, align 8
  %40 = load i64, i64* @UINT8_MAX, align 8
  %41 = icmp ule i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i8*, i8** %10, align 8
  %45 = bitcast i8* %44 to i32*
  %46 = load i8*, i8** %12, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = load i64, i64* %11, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i64, i64* %13, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i64, i64* %15, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i8*, i8** %16, align 8
  %55 = load i8*, i8** %17, align 8
  %56 = call i32 @blake2b_salt_personal(i32* %45, i8* %46, i8* %47, i32 %49, i32 %51, i32 %53, i8* %54, i8* %55)
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %33, %32
  %58 = load i32, i32* %9, align 4
  ret i32 %58
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @blake2b_salt_personal(i32*, i8*, i8*, i32, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
