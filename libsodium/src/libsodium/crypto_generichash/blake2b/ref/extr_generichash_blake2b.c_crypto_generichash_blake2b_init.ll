; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_generichash/blake2b/ref/extr_generichash_blake2b.c_crypto_generichash_blake2b_init.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_generichash/blake2b/ref/extr_generichash_blake2b.c_crypto_generichash_blake2b_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLAKE2B_OUTBYTES = common dso_local global i64 0, align 8
@BLAKE2B_KEYBYTES = common dso_local global i64 0, align 8
@UINT8_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_generichash_blake2b_init(i32* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ule i64 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %4
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* @BLAKE2B_OUTBYTES, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @BLAKE2B_KEYBYTES, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %12, %4
  store i32 -1, i32* %5, align 4
  br label %62

21:                                               ; preds = %16
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @UINT8_MAX, align 8
  %24 = icmp ule i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @UINT8_MAX, align 8
  %29 = icmp ule i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = call i32 @COMPILER_ASSERT(i32 1)
  %33 = load i8*, i8** %7, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %21
  %36 = load i64, i64* %8, align 8
  %37 = icmp ule i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %35, %21
  %39 = load i32*, i32** %6, align 8
  %40 = bitcast i32* %39 to i8*
  %41 = bitcast i8* %40 to i32*
  %42 = load i64, i64* %9, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i64 @blake2b_init(i32* %41, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 -1, i32* %5, align 4
  br label %62

47:                                               ; preds = %38
  br label %61

48:                                               ; preds = %35
  %49 = load i32*, i32** %6, align 8
  %50 = bitcast i32* %49 to i8*
  %51 = bitcast i8* %50 to i32*
  %52 = load i64, i64* %9, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i8*, i8** %7, align 8
  %55 = load i64, i64* %8, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i64 @blake2b_init_key(i32* %51, i32 %53, i8* %54, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  store i32 -1, i32* %5, align 4
  br label %62

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60, %47
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %59, %46, %20
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @COMPILER_ASSERT(i32) #1

declare dso_local i64 @blake2b_init(i32*, i32) #1

declare dso_local i64 @blake2b_init_key(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
