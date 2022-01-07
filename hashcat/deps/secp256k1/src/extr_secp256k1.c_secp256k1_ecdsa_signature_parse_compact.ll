; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_secp256k1.c_secp256k1_ecdsa_signature_parse_compact.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_secp256k1.c_secp256k1_ecdsa_signature_parse_compact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @secp256k1_ecdsa_signature_parse_compact(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @VERIFY_CHECK(i32 %13)
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @ARG_CHECK(i32 %17)
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @ARG_CHECK(i32 %21)
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = call i32 @secp256k1_scalar_set_b32(i32* %7, i8* %24, i32* %10)
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 32
  %34 = call i32 @secp256k1_scalar_set_b32(i32* %8, i8* %33, i32* %10)
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %3
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @secp256k1_ecdsa_signature_save(i32* %44, i32* %7, i32* %8)
  br label %49

46:                                               ; preds = %3
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @memset(i32* %47, i32 0, i32 4)
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %9, align 4
  ret i32 %50
}

declare dso_local i32 @VERIFY_CHECK(i32) #1

declare dso_local i32 @ARG_CHECK(i32) #1

declare dso_local i32 @secp256k1_scalar_set_b32(i32*, i8*, i32*) #1

declare dso_local i32 @secp256k1_ecdsa_signature_save(i32*, i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
