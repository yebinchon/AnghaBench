; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_core/ed25519/ref10/extr_ed25519_ref10.c_ristretto255_frombytes.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_core/ed25519/ref10/extr_ed25519_ref10.c_ristretto255_frombytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@d = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ristretto255_frombytes(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
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
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @ristretto255_is_canonical(i8* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %149

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @fe25519_frombytes(i32 %22, i8* %23)
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @fe25519_sq(i32 %25, i32 %26)
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @fe25519_1(i32 %28)
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @fe25519_sub(i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @fe25519_sq(i32 %34, i32 %35)
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @fe25519_1(i32 %37)
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @fe25519_add(i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @fe25519_sq(i32 %43, i32 %44)
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* @d, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @fe25519_mul(i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @fe25519_neg(i32 %50, i32 %51)
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @fe25519_sub(i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @fe25519_mul(i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @fe25519_1(i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @ristretto255_sqrt_ratio_m1(i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %16, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @fe25519_mul(i32 %69, i32 %70, i32 %71)
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @fe25519_mul(i32 %75, i32 %76, i32 %79)
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @fe25519_mul(i32 %83, i32 %86, i32 %87)
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @fe25519_mul(i32 %91, i32 %94, i32 %95)
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @fe25519_add(i32 %99, i32 %102, i32 %105)
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @fe25519_abs(i32 %109, i32 %112)
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @fe25519_mul(i32 %116, i32 %117, i32 %120)
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @fe25519_1(i32 %124)
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @fe25519_mul(i32 %128, i32 %131, i32 %134)
  %136 = load i32, i32* %16, align 4
  %137 = sub nsw i32 1, %136
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @fe25519_isnegative(i32 %140)
  %142 = or i32 %137, %141
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @fe25519_iszero(i32 %145)
  %147 = or i32 %142, %146
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %21, %20
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i64 @ristretto255_is_canonical(i8*) #1

declare dso_local i32 @fe25519_frombytes(i32, i8*) #1

declare dso_local i32 @fe25519_sq(i32, i32) #1

declare dso_local i32 @fe25519_1(i32) #1

declare dso_local i32 @fe25519_sub(i32, i32, i32) #1

declare dso_local i32 @fe25519_add(i32, i32, i32) #1

declare dso_local i32 @fe25519_mul(i32, i32, i32) #1

declare dso_local i32 @fe25519_neg(i32, i32) #1

declare dso_local i32 @ristretto255_sqrt_ratio_m1(i32, i32, i32) #1

declare dso_local i32 @fe25519_abs(i32, i32) #1

declare dso_local i32 @fe25519_isnegative(i32) #1

declare dso_local i32 @fe25519_iszero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
