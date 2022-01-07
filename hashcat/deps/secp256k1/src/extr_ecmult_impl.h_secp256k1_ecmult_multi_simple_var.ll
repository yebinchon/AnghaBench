; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_impl.h_secp256k1_ecmult_multi_simple_var.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_impl.h_secp256k1_ecmult_multi_simple_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32 (i32*, i32*, i64, i8*)*, i8*, i64)* @secp256k1_ecmult_multi_simple_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secp256k1_ecmult_multi_simple_var(i32* %0, i32* %1, i32* %2, i32 (i32*, i32*, i64, i8*)* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32 (i32*, i32*, i64, i8*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 (i32*, i32*, i64, i8*)* %3, i32 (i32*, i32*, i64, i8*)** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %20 = call i32 @secp256k1_scalar_set_int(i32* %15, i32 0)
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @secp256k1_gej_set_infinity(i32* %21)
  %23 = call i32 @secp256k1_gej_set_infinity(i32* %16)
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = call i32 @secp256k1_ecmult(i32* %24, i32* %25, i32* %16, i32* %15, i32* %26)
  store i64 0, i64* %14, align 8
  br label %28

28:                                               ; preds = %46, %6
  %29 = load i64, i64* %14, align 8
  %30 = load i64, i64* %13, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = load i32 (i32*, i32*, i64, i8*)*, i32 (i32*, i32*, i64, i8*)** %11, align 8
  %34 = load i64, i64* %14, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = call i32 %33(i32* %19, i32* %17, i64 %34, i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %50

39:                                               ; preds = %32
  %40 = call i32 @secp256k1_gej_set_ge(i32* %18, i32* %17)
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @secp256k1_ecmult(i32* %41, i32* %16, i32* %18, i32* %19, i32* null)
  %43 = load i32*, i32** %9, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @secp256k1_gej_add_var(i32* %43, i32* %44, i32* %16, i32* null)
  br label %46

46:                                               ; preds = %39
  %47 = load i64, i64* %14, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %14, align 8
  br label %28

49:                                               ; preds = %28
  store i32 1, i32* %7, align 4
  br label %50

50:                                               ; preds = %49, %38
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @secp256k1_scalar_set_int(i32*, i32) #1

declare dso_local i32 @secp256k1_gej_set_infinity(i32*) #1

declare dso_local i32 @secp256k1_ecmult(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @secp256k1_gej_set_ge(i32*, i32*) #1

declare dso_local i32 @secp256k1_gej_add_var(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
