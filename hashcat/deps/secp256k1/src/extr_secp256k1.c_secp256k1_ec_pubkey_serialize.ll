; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_secp256k1.c_secp256k1_ec_pubkey_serialize.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_secp256k1.c_secp256k1_ec_pubkey_serialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SECP256K1_FLAGS_BIT_COMPRESSION = common dso_local global i32 0, align 4
@SECP256K1_FLAGS_TYPE_MASK = common dso_local global i32 0, align 4
@SECP256K1_FLAGS_TYPE_COMPRESSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @secp256k1_ec_pubkey_serialize(i32* %0, i8* %1, i64* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @VERIFY_CHECK(i32 %16)
  %18 = load i64*, i64** %8, align 8
  %19 = icmp ne i64* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @ARG_CHECK(i32 %20)
  %22 = load i64*, i64** %8, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @SECP256K1_FLAGS_BIT_COMPRESSION, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 33, i32 65
  %30 = sext i32 %29 to i64
  %31 = icmp uge i64 %23, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @ARG_CHECK(i32 %32)
  %34 = load i64*, i64** %8, align 8
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %12, align 8
  %36 = load i64*, i64** %8, align 8
  store i64 0, i64* %36, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ne i8* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @ARG_CHECK(i32 %39)
  %41 = load i8*, i8** %7, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call i32 @memset(i8* %41, i32 0, i64 %42)
  %44 = load i32*, i32** %9, align 8
  %45 = icmp ne i32* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @ARG_CHECK(i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @SECP256K1_FLAGS_TYPE_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @SECP256K1_FLAGS_TYPE_COMPRESSION, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @ARG_CHECK(i32 %53)
  %55 = load i32*, i32** %6, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call i64 @secp256k1_pubkey_load(i32* %55, i32* %11, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %5
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @SECP256K1_FLAGS_BIT_COMPRESSION, align 4
  %63 = and i32 %61, %62
  %64 = call i32 @secp256k1_eckey_pubkey_serialize(i32* %11, i8* %60, i64* %12, i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load i64, i64* %12, align 8
  %69 = load i64*, i64** %8, align 8
  store i64 %68, i64* %69, align 8
  br label %70

70:                                               ; preds = %67, %59
  br label %71

71:                                               ; preds = %70, %5
  %72 = load i32, i32* %13, align 4
  ret i32 %72
}

declare dso_local i32 @VERIFY_CHECK(i32) #1

declare dso_local i32 @ARG_CHECK(i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @secp256k1_pubkey_load(i32*, i32*, i32*) #1

declare dso_local i32 @secp256k1_eckey_pubkey_serialize(i32*, i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
