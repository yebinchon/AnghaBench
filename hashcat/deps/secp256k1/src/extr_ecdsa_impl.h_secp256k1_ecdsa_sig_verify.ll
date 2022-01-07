; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecdsa_impl.h_secp256k1_ecdsa_sig_verify.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecdsa_impl.h_secp256k1_ecdsa_sig_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@secp256k1_ecdsa_const_p_minus_order = common dso_local global i32 0, align 4
@secp256k1_ecdsa_const_order_as_fe = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, %struct.TYPE_5__*, i32*)* @secp256k1_ecdsa_sig_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secp256k1_ecdsa_sig_verify(i32* %0, i32* %1, i32* %2, %struct.TYPE_5__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [32 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i64 @secp256k1_scalar_is_zero(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %5
  %23 = load i32*, i32** %9, align 8
  %24 = call i64 @secp256k1_scalar_is_zero(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %5
  store i32 0, i32* %6, align 4
  br label %60

27:                                               ; preds = %22
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @secp256k1_scalar_inverse_var(i32* %13, i32* %28)
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 @secp256k1_scalar_mul(i32* %14, i32* %13, i32* %30)
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @secp256k1_scalar_mul(i32* %15, i32* %13, i32* %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %35 = call i32 @secp256k1_gej_set_ge(i32* %17, %struct.TYPE_5__* %34)
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @secp256k1_ecmult(i32* %36, i32* %18, i32* %17, i32* %15, i32* %14)
  %38 = call i64 @secp256k1_gej_is_infinity(i32* %18)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %60

41:                                               ; preds = %27
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @secp256k1_scalar_get_b32(i8* %42, i32* %43)
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %46 = call i32 @secp256k1_fe_set_b32(i32* %16, i8* %45)
  %47 = call i64 @secp256k1_gej_eq_x_var(i32* %16, i32* %18)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 1, i32* %6, align 4
  br label %60

50:                                               ; preds = %41
  %51 = call i64 @secp256k1_fe_cmp_var(i32* %16, i32* @secp256k1_ecdsa_const_p_minus_order)
  %52 = icmp sge i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %60

54:                                               ; preds = %50
  %55 = call i32 @secp256k1_fe_add(i32* %16, i32* @secp256k1_ecdsa_const_order_as_fe)
  %56 = call i64 @secp256k1_gej_eq_x_var(i32* %16, i32* %18)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 1, i32* %6, align 4
  br label %60

59:                                               ; preds = %54
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %59, %58, %53, %49, %40, %26
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i64 @secp256k1_scalar_is_zero(i32*) #1

declare dso_local i32 @secp256k1_scalar_inverse_var(i32*, i32*) #1

declare dso_local i32 @secp256k1_scalar_mul(i32*, i32*, i32*) #1

declare dso_local i32 @secp256k1_gej_set_ge(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @secp256k1_ecmult(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @secp256k1_gej_is_infinity(i32*) #1

declare dso_local i32 @secp256k1_scalar_get_b32(i8*, i32*) #1

declare dso_local i32 @secp256k1_fe_set_b32(i32*, i8*) #1

declare dso_local i64 @secp256k1_gej_eq_x_var(i32*, i32*) #1

declare dso_local i64 @secp256k1_fe_cmp_var(i32*, i32*) #1

declare dso_local i32 @secp256k1_fe_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
