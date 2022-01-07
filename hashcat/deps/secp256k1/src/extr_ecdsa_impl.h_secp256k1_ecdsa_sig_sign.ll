; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecdsa_impl.h_secp256k1_ecdsa_sig_sign.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecdsa_impl.h_secp256k1_ecdsa_sig_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32*, i32*, i32*)* @secp256k1_ecdsa_sig_sign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secp256k1_ecdsa_sig_sign(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [32 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_4__, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %20, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = call i32 @secp256k1_ecmult_gen(i32* %21, i32* %17, i32* %22)
  %24 = call i32 @secp256k1_ge_set_gej(%struct.TYPE_4__* %18, i32* %17)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %26 = call i32 @secp256k1_fe_normalize(i32* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %28 = call i32 @secp256k1_fe_normalize(i32* %27)
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %31 = call i32 @secp256k1_fe_get_b32(i8* %29, i32* %30)
  %32 = load i32*, i32** %10, align 8
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %34 = call i32 @secp256k1_scalar_set_b32(i32* %32, i8* %33, i32* %20)
  %35 = load i32*, i32** %10, align 8
  %36 = call i64 @secp256k1_scalar_is_zero(i32* %35)
  %37 = icmp ne i64 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @VERIFY_CHECK(i32 %39)
  %41 = load i32, i32* %20, align 4
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @VERIFY_CHECK(i32 %43)
  %45 = load i32*, i32** %15, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %7
  %48 = load i32, i32* %20, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 2, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %53 = call i64 @secp256k1_fe_is_odd(i32* %52)
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 1, i32 0
  %57 = or i32 %51, %56
  %58 = load i32*, i32** %15, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %47, %7
  %60 = load i32*, i32** %10, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 @secp256k1_scalar_mul(i32* %19, i32* %60, i32* %61)
  %63 = load i32*, i32** %13, align 8
  %64 = call i32 @secp256k1_scalar_add(i32* %19, i32* %19, i32* %63)
  %65 = load i32*, i32** %11, align 8
  %66 = load i32*, i32** %14, align 8
  %67 = call i32 @secp256k1_scalar_inverse(i32* %65, i32* %66)
  %68 = load i32*, i32** %11, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @secp256k1_scalar_mul(i32* %68, i32* %69, i32* %19)
  %71 = call i32 @secp256k1_scalar_clear(i32* %19)
  %72 = call i32 @secp256k1_gej_clear(i32* %17)
  %73 = call i32 @secp256k1_ge_clear(%struct.TYPE_4__* %18)
  %74 = load i32*, i32** %11, align 8
  %75 = call i64 @secp256k1_scalar_is_zero(i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %59
  store i32 0, i32* %8, align 4
  br label %94

78:                                               ; preds = %59
  %79 = load i32*, i32** %11, align 8
  %80 = call i64 @secp256k1_scalar_is_high(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %78
  %83 = load i32*, i32** %11, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @secp256k1_scalar_negate(i32* %83, i32* %84)
  %86 = load i32*, i32** %15, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i32*, i32** %15, align 8
  %90 = load i32, i32* %89, align 4
  %91 = xor i32 %90, 1
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %88, %82
  br label %93

93:                                               ; preds = %92, %78
  store i32 1, i32* %8, align 4
  br label %94

94:                                               ; preds = %93, %77
  %95 = load i32, i32* %8, align 4
  ret i32 %95
}

declare dso_local i32 @secp256k1_ecmult_gen(i32*, i32*, i32*) #1

declare dso_local i32 @secp256k1_ge_set_gej(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @secp256k1_fe_normalize(i32*) #1

declare dso_local i32 @secp256k1_fe_get_b32(i8*, i32*) #1

declare dso_local i32 @secp256k1_scalar_set_b32(i32*, i8*, i32*) #1

declare dso_local i32 @VERIFY_CHECK(i32) #1

declare dso_local i64 @secp256k1_scalar_is_zero(i32*) #1

declare dso_local i64 @secp256k1_fe_is_odd(i32*) #1

declare dso_local i32 @secp256k1_scalar_mul(i32*, i32*, i32*) #1

declare dso_local i32 @secp256k1_scalar_add(i32*, i32*, i32*) #1

declare dso_local i32 @secp256k1_scalar_inverse(i32*, i32*) #1

declare dso_local i32 @secp256k1_scalar_clear(i32*) #1

declare dso_local i32 @secp256k1_gej_clear(i32*) #1

declare dso_local i32 @secp256k1_ge_clear(%struct.TYPE_4__*) #1

declare dso_local i64 @secp256k1_scalar_is_high(i32*) #1

declare dso_local i32 @secp256k1_scalar_negate(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
