; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_core/ed25519/ref10/extr_ed25519_ref10.c_ristretto255_p3_tobytes.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_core/ed25519/ref10/extr_ed25519_ref10.c_ristretto255_p3_tobytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@sqrtm1 = common dso_local global i32 0, align 4
@invsqrtamd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ristretto255_p3_tobytes(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
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
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %24 = load i32, i32* %15, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @fe25519_add(i32 %24, i32 %27, i32 %30)
  %32 = load i32, i32* %22, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @fe25519_sub(i32 %32, i32 %35, i32 %38)
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %22, align 4
  %43 = call i32 @fe25519_mul(i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %16, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @fe25519_mul(i32 %44, i32 %47, i32 %50)
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %16, align 4
  %54 = call i32 @fe25519_sq(i32 %52, i32 %53)
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %17, align 4
  %58 = call i32 @fe25519_mul(i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @fe25519_1(i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %17, align 4
  %64 = call i32 @ristretto255_sqrt_ratio_m1(i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @fe25519_mul(i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @fe25519_mul(i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* %21, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @fe25519_mul(i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* %21, align 4
  %78 = load i32, i32* %21, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @fe25519_mul(i32 %77, i32 %78, i32 %81)
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @sqrtm1, align 4
  %88 = call i32 @fe25519_mul(i32 %83, i32 %86, i32 %87)
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @sqrtm1, align 4
  %94 = call i32 @fe25519_mul(i32 %89, i32 %92, i32 %93)
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @invsqrtamd, align 4
  %98 = call i32 @fe25519_mul(i32 %95, i32 %96, i32 %97)
  %99 = load i32, i32* %14, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %21, align 4
  %104 = call i32 @fe25519_mul(i32 %99, i32 %102, i32 %103)
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @fe25519_isnegative(i32 %105)
  store i32 %106, i32* %23, align 4
  %107 = load i32, i32* %18, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @fe25519_copy(i32 %107, i32 %110)
  %112 = load i32, i32* %19, align 4
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @fe25519_copy(i32 %112, i32 %115)
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @fe25519_copy(i32 %117, i32 %118)
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %23, align 4
  %123 = call i32 @fe25519_cmov(i32 %120, i32 %121, i32 %122)
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %23, align 4
  %127 = call i32 @fe25519_cmov(i32 %124, i32 %125, i32 %126)
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %23, align 4
  %131 = call i32 @fe25519_cmov(i32 %128, i32 %129, i32 %130)
  %132 = load i32, i32* %20, align 4
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* %21, align 4
  %135 = call i32 @fe25519_mul(i32 %132, i32 %133, i32 %134)
  %136 = load i32, i32* %19, align 4
  %137 = load i32, i32* %19, align 4
  %138 = load i32, i32* %20, align 4
  %139 = call i32 @fe25519_isnegative(i32 %138)
  %140 = call i32 @fe25519_cneg(i32 %136, i32 %137, i32 %139)
  %141 = load i32, i32* %13, align 4
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %19, align 4
  %146 = call i32 @fe25519_sub(i32 %141, i32 %144, i32 %145)
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %13, align 4
  %150 = call i32 @fe25519_mul(i32 %147, i32 %148, i32 %149)
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* %13, align 4
  %153 = call i32 @fe25519_abs(i32 %151, i32 %152)
  %154 = load i8*, i8** %3, align 8
  %155 = load i32, i32* %13, align 4
  %156 = call i32 @fe25519_tobytes(i8* %154, i32 %155)
  ret void
}

declare dso_local i32 @fe25519_add(i32, i32, i32) #1

declare dso_local i32 @fe25519_sub(i32, i32, i32) #1

declare dso_local i32 @fe25519_mul(i32, i32, i32) #1

declare dso_local i32 @fe25519_sq(i32, i32) #1

declare dso_local i32 @fe25519_1(i32) #1

declare dso_local i32 @ristretto255_sqrt_ratio_m1(i32, i32, i32) #1

declare dso_local i32 @fe25519_isnegative(i32) #1

declare dso_local i32 @fe25519_copy(i32, i32) #1

declare dso_local i32 @fe25519_cmov(i32, i32, i32) #1

declare dso_local i32 @fe25519_cneg(i32, i32, i32) #1

declare dso_local i32 @fe25519_abs(i32, i32) #1

declare dso_local i32 @fe25519_tobytes(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
