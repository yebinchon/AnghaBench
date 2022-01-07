; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_ext_secp256k1.c_hc_secp256k1_pubkey_tweak_mul.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_ext_secp256k1.c_hc_secp256k1_pubkey_tweak_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@SECP256K1_CONTEXT_NONE = common dso_local global i32 0, align 4
@SECP256K1_CONTEXT_VERIFY = common dso_local global i32 0, align 4
@SECP256K1_EC_COMPRESSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hc_secp256k1_pubkey_tweak_mul(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i32, i32* @SECP256K1_CONTEXT_NONE, align 4
  %15 = call i32* @secp256k1_context_create(i32 %14)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @secp256k1_pubkey_load(i32* %16, %struct.TYPE_5__* %10, i32* %17)
  store i32 0, i32* %11, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @secp256k1_scalar_set_b32(i32* %12, i32* %19, i32* %11)
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = call i32 @secp256k1_scalar_clear(i32* %12)
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @secp256k1_context_destroy(i32* %25)
  store i32 0, i32* %4, align 4
  br label %57

27:                                               ; preds = %3
  %28 = call i64 @secp256k1_scalar_is_zero(i32* %12)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = call i32 @secp256k1_scalar_clear(i32* %12)
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @secp256k1_context_destroy(i32* %32)
  store i32 0, i32* %4, align 4
  br label %57

34:                                               ; preds = %27
  %35 = load i64, i64* %7, align 8
  %36 = sub i64 %35, 1
  %37 = mul i64 %36, 8
  store i64 %37, i64* %13, align 8
  %38 = load i64, i64* %13, align 8
  %39 = call i32 @secp256k1_ecmult_const(i32* %9, %struct.TYPE_5__* %10, i32* %12, i64 %38)
  %40 = call i32 @secp256k1_ge_set_gej(%struct.TYPE_5__* %10, i32* %9)
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %42 = call i32 @secp256k1_fe_normalize(i32* %41)
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %44 = call i32 @secp256k1_fe_normalize(i32* %43)
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %46 = call i32 @secp256k1_fe_is_odd(i32* %45)
  %47 = or i32 2, %46
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %47, i32* %49, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %53 = call i32 @secp256k1_fe_get_b32(i32* %51, i32* %52)
  %54 = call i32 @secp256k1_scalar_clear(i32* %12)
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @secp256k1_context_destroy(i32* %55)
  store i32 1, i32* %4, align 4
  br label %57

57:                                               ; preds = %34, %30, %23
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32* @secp256k1_context_create(i32) #1

declare dso_local i32 @secp256k1_pubkey_load(i32*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @secp256k1_scalar_set_b32(i32*, i32*, i32*) #1

declare dso_local i32 @secp256k1_scalar_clear(i32*) #1

declare dso_local i32 @secp256k1_context_destroy(i32*) #1

declare dso_local i64 @secp256k1_scalar_is_zero(i32*) #1

declare dso_local i32 @secp256k1_ecmult_const(i32*, %struct.TYPE_5__*, i32*, i64) #1

declare dso_local i32 @secp256k1_ge_set_gej(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @secp256k1_fe_normalize(i32*) #1

declare dso_local i32 @secp256k1_fe_is_odd(i32*) #1

declare dso_local i32 @secp256k1_fe_get_b32(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
