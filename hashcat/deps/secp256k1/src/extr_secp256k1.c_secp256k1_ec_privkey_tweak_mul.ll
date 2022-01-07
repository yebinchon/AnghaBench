; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_secp256k1.c_secp256k1_ec_privkey_tweak_mul.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_secp256k1.c_secp256k1_ec_privkey_tweak_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @secp256k1_ec_privkey_tweak_mul(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @VERIFY_CHECK(i32 %13)
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @ARG_CHECK(i32 %17)
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @ARG_CHECK(i32 %21)
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @secp256k1_scalar_set_b32(i32* %7, i8* %23, i32* %10)
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @secp256k1_scalar_set_b32(i32* %8, i8* %25, i32* null)
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = call i64 @secp256k1_eckey_privkey_tweak_mul(i32* %8, i32* %7)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %29, %3
  %33 = phi i1 [ false, %3 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @memset(i8* %35, i32 0, i32 32)
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @secp256k1_scalar_get_b32(i8* %40, i32* %8)
  br label %42

42:                                               ; preds = %39, %32
  %43 = call i32 @secp256k1_scalar_clear(i32* %8)
  %44 = call i32 @secp256k1_scalar_clear(i32* %7)
  %45 = load i32, i32* %9, align 4
  ret i32 %45
}

declare dso_local i32 @VERIFY_CHECK(i32) #1

declare dso_local i32 @ARG_CHECK(i32) #1

declare dso_local i32 @secp256k1_scalar_set_b32(i32*, i8*, i32*) #1

declare dso_local i64 @secp256k1_eckey_privkey_tweak_mul(i32*, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @secp256k1_scalar_get_b32(i8*, i32*) #1

declare dso_local i32 @secp256k1_scalar_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
