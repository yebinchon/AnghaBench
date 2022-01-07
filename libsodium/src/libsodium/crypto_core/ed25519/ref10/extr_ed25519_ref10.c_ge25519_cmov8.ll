; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_core/ed25519/ref10/extr_ed25519_ref10.c_ge25519_cmov8.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_core/ed25519/ref10/extr_ed25519_ref10.c_ge25519_cmov8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_7__*, i8)* @ge25519_cmov8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ge25519_cmov8(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, i8 signext %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i8 %2, i8* %6, align 1
  %10 = load i8, i8* %6, align 1
  %11 = call zeroext i8 @negative(i8 signext %10)
  store i8 %11, i8* %8, align 1
  %12 = load i8, i8* %6, align 1
  %13 = sext i8 %12 to i32
  %14 = load i8, i8* %8, align 1
  %15 = zext i8 %14 to i32
  %16 = sub nsw i32 0, %15
  %17 = load i8, i8* %6, align 1
  %18 = sext i8 %17 to i32
  %19 = and i32 %16, %18
  %20 = mul nsw i32 %19, 2
  %21 = sub nsw i32 %13, %20
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %9, align 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = call i32 @ge25519_precomp_0(%struct.TYPE_7__* %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i64 0
  %28 = load i8, i8* %9, align 1
  %29 = call zeroext i8 @equal(i8 zeroext %28, i32 1)
  %30 = call i32 @ge25519_cmov(%struct.TYPE_7__* %25, %struct.TYPE_7__* %27, i8 zeroext %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i64 1
  %34 = load i8, i8* %9, align 1
  %35 = call zeroext i8 @equal(i8 zeroext %34, i32 2)
  %36 = call i32 @ge25519_cmov(%struct.TYPE_7__* %31, %struct.TYPE_7__* %33, i8 zeroext %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i64 2
  %40 = load i8, i8* %9, align 1
  %41 = call zeroext i8 @equal(i8 zeroext %40, i32 3)
  %42 = call i32 @ge25519_cmov(%struct.TYPE_7__* %37, %struct.TYPE_7__* %39, i8 zeroext %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i64 3
  %46 = load i8, i8* %9, align 1
  %47 = call zeroext i8 @equal(i8 zeroext %46, i32 4)
  %48 = call i32 @ge25519_cmov(%struct.TYPE_7__* %43, %struct.TYPE_7__* %45, i8 zeroext %47)
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 4
  %52 = load i8, i8* %9, align 1
  %53 = call zeroext i8 @equal(i8 zeroext %52, i32 5)
  %54 = call i32 @ge25519_cmov(%struct.TYPE_7__* %49, %struct.TYPE_7__* %51, i8 zeroext %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 5
  %58 = load i8, i8* %9, align 1
  %59 = call zeroext i8 @equal(i8 zeroext %58, i32 6)
  %60 = call i32 @ge25519_cmov(%struct.TYPE_7__* %55, %struct.TYPE_7__* %57, i8 zeroext %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i64 6
  %64 = load i8, i8* %9, align 1
  %65 = call zeroext i8 @equal(i8 zeroext %64, i32 7)
  %66 = call i32 @ge25519_cmov(%struct.TYPE_7__* %61, %struct.TYPE_7__* %63, i8 zeroext %65)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 7
  %70 = load i8, i8* %9, align 1
  %71 = call zeroext i8 @equal(i8 zeroext %70, i32 8)
  %72 = call i32 @ge25519_cmov(%struct.TYPE_7__* %67, %struct.TYPE_7__* %69, i8 zeroext %71)
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @fe25519_copy(i32 %74, i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @fe25519_copy(i32 %80, i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @fe25519_neg(i32 %86, i32 %89)
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = load i8, i8* %8, align 1
  %93 = call i32 @ge25519_cmov(%struct.TYPE_7__* %91, %struct.TYPE_7__* %7, i8 zeroext %92)
  ret void
}

declare dso_local zeroext i8 @negative(i8 signext) #1

declare dso_local i32 @ge25519_precomp_0(%struct.TYPE_7__*) #1

declare dso_local i32 @ge25519_cmov(%struct.TYPE_7__*, %struct.TYPE_7__*, i8 zeroext) #1

declare dso_local zeroext i8 @equal(i8 zeroext, i32) #1

declare dso_local i32 @fe25519_copy(i32, i32) #1

declare dso_local i32 @fe25519_neg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
