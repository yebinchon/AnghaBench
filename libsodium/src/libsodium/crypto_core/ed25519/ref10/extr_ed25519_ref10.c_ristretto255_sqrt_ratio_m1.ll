; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_core/ed25519/ref10/extr_ed25519_ref10.c_ristretto255_sqrt_ratio_m1.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_core/ed25519/ref10/extr_ed25519_ref10.c_ristretto255_sqrt_ratio_m1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sqrtm1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ristretto255_sqrt_ratio_m1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ristretto255_sqrt_ratio_m1(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @fe25519_sq(i32 %16, i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @fe25519_mul(i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @fe25519_sq(i32 %23, i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @fe25519_mul(i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @fe25519_mul(i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @fe25519_pow22523(i32 %34, i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @fe25519_mul(i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @fe25519_mul(i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @fe25519_sq(i32 %45, i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @fe25519_mul(i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @fe25519_sub(i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @fe25519_add(i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @sqrtm1, align 4
  %63 = call i32 @fe25519_mul(i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @fe25519_add(i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @fe25519_iszero(i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @fe25519_iszero(i32 %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @fe25519_iszero(i32 %72)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @sqrtm1, align 4
  %77 = call i32 @fe25519_mul(i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %15, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @fe25519_cmov(i32 %78, i32 %79, i32 %82)
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @fe25519_abs(i32 %84, i32 %85)
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %14, align 4
  %89 = or i32 %87, %88
  ret i32 %89
}

declare dso_local i32 @fe25519_sq(i32, i32) #1

declare dso_local i32 @fe25519_mul(i32, i32, i32) #1

declare dso_local i32 @fe25519_pow22523(i32, i32) #1

declare dso_local i32 @fe25519_sub(i32, i32, i32) #1

declare dso_local i32 @fe25519_add(i32, i32, i32) #1

declare dso_local i32 @fe25519_iszero(i32) #1

declare dso_local i32 @fe25519_cmov(i32, i32, i32) #1

declare dso_local i32 @fe25519_abs(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
