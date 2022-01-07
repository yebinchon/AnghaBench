; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_core_ristretto255.c_xmain.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_core_ristretto255.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_core_ristretto255_BYTES = common dso_local global i64 0, align 8
@crypto_core_ristretto255_SCALARBYTES = common dso_local global i64 0, align 8
@crypto_core_ristretto255_NONREDUCEDSCALARBYTES = common dso_local global i64 0, align 8
@crypto_core_ristretto255_HASHBYTES = common dso_local global i64 0, align 8
@crypto_core_ed25519_BYTES = common dso_local global i64 0, align 8
@crypto_core_ed25519_SCALARBYTES = common dso_local global i64 0, align 8
@crypto_core_ed25519_NONREDUCEDSCALARBYTES = common dso_local global i64 0, align 8
@crypto_core_ed25519_UNIFORMBYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (...) @tv1()
  %3 = call i32 (...) @tv2()
  %4 = call i32 (...) @tv3()
  %5 = call i32 (...) @tv4()
  %6 = load i64, i64* @crypto_core_ristretto255_BYTES, align 8
  %7 = call i64 (...) @crypto_core_ristretto255_bytes()
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i64, i64* @crypto_core_ristretto255_SCALARBYTES, align 8
  %12 = call i64 (...) @crypto_core_ristretto255_scalarbytes()
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i64, i64* @crypto_core_ristretto255_NONREDUCEDSCALARBYTES, align 8
  %17 = call i64 (...) @crypto_core_ristretto255_nonreducedscalarbytes()
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i64, i64* @crypto_core_ristretto255_NONREDUCEDSCALARBYTES, align 8
  %22 = load i64, i64* @crypto_core_ristretto255_SCALARBYTES, align 8
  %23 = icmp sge i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i64, i64* @crypto_core_ristretto255_HASHBYTES, align 8
  %27 = call i64 (...) @crypto_core_ristretto255_hashbytes()
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i64, i64* @crypto_core_ristretto255_HASHBYTES, align 8
  %32 = load i64, i64* @crypto_core_ristretto255_BYTES, align 8
  %33 = icmp sge i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i64, i64* @crypto_core_ristretto255_BYTES, align 8
  %37 = load i64, i64* @crypto_core_ed25519_BYTES, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i64, i64* @crypto_core_ristretto255_SCALARBYTES, align 8
  %42 = load i64, i64* @crypto_core_ed25519_SCALARBYTES, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i64, i64* @crypto_core_ristretto255_NONREDUCEDSCALARBYTES, align 8
  %47 = load i64, i64* @crypto_core_ed25519_NONREDUCEDSCALARBYTES, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i64, i64* @crypto_core_ristretto255_HASHBYTES, align 8
  %52 = load i32, i32* @crypto_core_ed25519_UNIFORMBYTES, align 4
  %53 = mul nsw i32 2, %52
  %54 = sext i32 %53 to i64
  %55 = icmp sge i64 %51, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @tv1(...) #1

declare dso_local i32 @tv2(...) #1

declare dso_local i32 @tv3(...) #1

declare dso_local i32 @tv4(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @crypto_core_ristretto255_bytes(...) #1

declare dso_local i64 @crypto_core_ristretto255_scalarbytes(...) #1

declare dso_local i64 @crypto_core_ristretto255_nonreducedscalarbytes(...) #1

declare dso_local i64 @crypto_core_ristretto255_hashbytes(...) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
