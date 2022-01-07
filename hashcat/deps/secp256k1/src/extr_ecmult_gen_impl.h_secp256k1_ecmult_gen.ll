; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_gen_impl.h_secp256k1_ecmult_gen.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_gen_impl.h_secp256k1_ecmult_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32***, i32, i32 }
%struct.TYPE_7__ = type { i64 }

@ECMULT_GEN_PREC_N = common dso_local global i32 0, align 4
@ECMULT_GEN_PREC_B = common dso_local global i32 0, align 4
@ECMULT_GEN_PREC_G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32*, i32*)* @secp256k1_ecmult_gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @secp256k1_ecmult_gen(%struct.TYPE_8__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = call i32 @memset(i32* %8, i32 0, i32 4)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = call i32 @secp256k1_scalar_add(i32* %9, i32* %18, i32* %20)
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i64 0, i64* %22, align 8
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %62, %3
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @ECMULT_GEN_PREC_N, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %65

27:                                               ; preds = %23
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @ECMULT_GEN_PREC_B, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32, i32* @ECMULT_GEN_PREC_B, align 4
  %32 = call i32 @secp256k1_scalar_get_bits(i32* %9, i32 %30, i32 %31)
  store i32 %32, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %54, %27
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @ECMULT_GEN_PREC_G, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %33
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32***, i32**** %39, align 8
  %41 = load i32**, i32*** %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @secp256k1_ge_storage_cmov(i32* %8, i32* %48, i32 %52)
  br label %54

54:                                               ; preds = %37
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %33

57:                                               ; preds = %33
  %58 = call i32 @secp256k1_ge_from_storage(%struct.TYPE_7__* %7, i32* %8)
  %59 = load i32*, i32** %5, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @secp256k1_gej_add_ge(i32* %59, i32* %60, %struct.TYPE_7__* %7)
  br label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %23

65:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  %66 = call i32 @secp256k1_ge_clear(%struct.TYPE_7__* %7)
  %67 = call i32 @secp256k1_scalar_clear(i32* %9)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @secp256k1_scalar_add(i32*, i32*, i32*) #1

declare dso_local i32 @secp256k1_scalar_get_bits(i32*, i32, i32) #1

declare dso_local i32 @secp256k1_ge_storage_cmov(i32*, i32*, i32) #1

declare dso_local i32 @secp256k1_ge_from_storage(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @secp256k1_gej_add_ge(i32*, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @secp256k1_ge_clear(%struct.TYPE_7__*) #1

declare dso_local i32 @secp256k1_scalar_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
