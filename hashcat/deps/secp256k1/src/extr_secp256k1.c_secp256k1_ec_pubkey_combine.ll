; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_secp256k1.c_secp256k1_ec_pubkey_combine.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_secp256k1.c_secp256k1_ec_pubkey_combine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @secp256k1_ec_pubkey_combine(i32* %0, i32* %1, i32** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @ARG_CHECK(i32 %15)
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @memset(i32* %17, i32 0, i32 4)
  %19 = load i64, i64* %9, align 8
  %20 = icmp uge i64 %19, 1
  %21 = zext i1 %20 to i32
  %22 = call i32 @ARG_CHECK(i32 %21)
  %23 = load i32**, i32*** %8, align 8
  %24 = icmp ne i32** %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @ARG_CHECK(i32 %25)
  %27 = call i32 @secp256k1_gej_set_infinity(i32* %11)
  store i64 0, i64* %10, align 8
  br label %28

28:                                               ; preds = %40, %4
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load i32*, i32** %6, align 8
  %34 = load i32**, i32*** %8, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds i32*, i32** %34, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @secp256k1_pubkey_load(i32* %33, i32* %12, i32* %37)
  %39 = call i32 @secp256k1_gej_add_ge(i32* %11, i32* %11, i32* %12)
  br label %40

40:                                               ; preds = %32
  %41 = load i64, i64* %10, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %10, align 8
  br label %28

43:                                               ; preds = %28
  %44 = call i64 @secp256k1_gej_is_infinity(i32* %11)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %51

47:                                               ; preds = %43
  %48 = call i32 @secp256k1_ge_set_gej(i32* %12, i32* %11)
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @secp256k1_pubkey_save(i32* %49, i32* %12)
  store i32 1, i32* %5, align 4
  br label %51

51:                                               ; preds = %47, %46
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @ARG_CHECK(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @secp256k1_gej_set_infinity(i32*) #1

declare dso_local i32 @secp256k1_pubkey_load(i32*, i32*, i32*) #1

declare dso_local i32 @secp256k1_gej_add_ge(i32*, i32*, i32*) #1

declare dso_local i64 @secp256k1_gej_is_infinity(i32*) #1

declare dso_local i32 @secp256k1_ge_set_gej(i32*, i32*) #1

declare dso_local i32 @secp256k1_pubkey_save(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
