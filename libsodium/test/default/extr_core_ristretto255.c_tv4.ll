; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_core_ristretto255.c_tv4.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_core_ristretto255.c_tv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_core_ristretto255_NONREDUCEDSCALARBYTES = common dso_local global i32 0, align 4
@crypto_core_ristretto255_SCALARBYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tv4() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = load i32, i32* @crypto_core_ristretto255_NONREDUCEDSCALARBYTES, align 4
  %7 = call i64 @sodium_malloc(i32 %6)
  %8 = inttoptr i64 %7 to i8*
  store i8* %8, i8** %1, align 8
  %9 = load i32, i32* @crypto_core_ristretto255_SCALARBYTES, align 4
  %10 = call i64 @sodium_malloc(i32 %9)
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %2, align 8
  %12 = load i32, i32* @crypto_core_ristretto255_SCALARBYTES, align 4
  %13 = call i64 @sodium_malloc(i32 %12)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %3, align 8
  %15 = load i32, i32* @crypto_core_ristretto255_SCALARBYTES, align 4
  %16 = call i64 @sodium_malloc(i32 %15)
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %4, align 8
  %18 = load i32, i32* @crypto_core_ristretto255_SCALARBYTES, align 4
  %19 = call i64 @sodium_malloc(i32 %18)
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @crypto_core_ristretto255_scalar_random(i8* %21)
  %23 = load i8*, i8** %1, align 8
  %24 = load i32, i32* @crypto_core_ristretto255_NONREDUCEDSCALARBYTES, align 4
  %25 = call i32 @randombytes_buf(i8* %23, i32 %24)
  %26 = load i8*, i8** %3, align 8
  %27 = load i8*, i8** %1, align 8
  %28 = call i32 @crypto_core_ristretto255_scalar_reduce(i8* %26, i8* %27)
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %2, align 8
  %31 = load i32, i32* @crypto_core_ristretto255_SCALARBYTES, align 4
  %32 = call i32 @memcpy(i8* %29, i8* %30, i32 %31)
  %33 = load i8*, i8** %4, align 8
  %34 = load i8*, i8** %2, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @crypto_core_ristretto255_scalar_add(i8* %33, i8* %34, i8* %35)
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %2, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @crypto_core_ristretto255_scalar_sub(i8* %37, i8* %38, i8* %39)
  %41 = load i8*, i8** %3, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @crypto_core_ristretto255_scalar_add(i8* %41, i8* %42, i8* %43)
  %45 = load i8*, i8** %3, align 8
  %46 = load i8*, i8** %3, align 8
  %47 = load i8*, i8** %2, align 8
  %48 = call i32 @crypto_core_ristretto255_scalar_sub(i8* %45, i8* %46, i8* %47)
  %49 = load i8*, i8** %3, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 @crypto_core_ristretto255_scalar_mul(i8* %49, i8* %50, i8* %51)
  %53 = load i8*, i8** %5, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @crypto_core_ristretto255_scalar_invert(i8* %53, i8* %54)
  %56 = load i8*, i8** %3, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @crypto_core_ristretto255_scalar_mul(i8* %56, i8* %57, i8* %58)
  %60 = load i8*, i8** %2, align 8
  %61 = load i8*, i8** %2, align 8
  %62 = call i32 @crypto_core_ristretto255_scalar_negate(i8* %60, i8* %61)
  %63 = load i8*, i8** %3, align 8
  %64 = load i8*, i8** %3, align 8
  %65 = load i8*, i8** %2, align 8
  %66 = call i32 @crypto_core_ristretto255_scalar_add(i8* %63, i8* %64, i8* %65)
  %67 = load i8*, i8** %2, align 8
  %68 = load i8*, i8** %3, align 8
  %69 = call i32 @crypto_core_ristretto255_scalar_complement(i8* %67, i8* %68)
  %70 = load i8*, i8** %2, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = add i8 %72, -1
  store i8 %73, i8* %71, align 1
  %74 = load i8*, i8** %2, align 8
  %75 = load i32, i32* @crypto_core_ristretto255_SCALARBYTES, align 4
  %76 = call i32 @sodium_is_zero(i8* %74, i32 %75)
  %77 = call i32 @assert(i32 %76)
  %78 = load i8*, i8** %2, align 8
  %79 = call i32 @sodium_free(i8* %78)
  %80 = load i8*, i8** %3, align 8
  %81 = call i32 @sodium_free(i8* %80)
  %82 = load i8*, i8** %4, align 8
  %83 = call i32 @sodium_free(i8* %82)
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 @sodium_free(i8* %84)
  %86 = load i8*, i8** %1, align 8
  %87 = call i32 @sodium_free(i8* %86)
  ret void
}

declare dso_local i64 @sodium_malloc(i32) #1

declare dso_local i32 @crypto_core_ristretto255_scalar_random(i8*) #1

declare dso_local i32 @randombytes_buf(i8*, i32) #1

declare dso_local i32 @crypto_core_ristretto255_scalar_reduce(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @crypto_core_ristretto255_scalar_add(i8*, i8*, i8*) #1

declare dso_local i32 @crypto_core_ristretto255_scalar_sub(i8*, i8*, i8*) #1

declare dso_local i32 @crypto_core_ristretto255_scalar_mul(i8*, i8*, i8*) #1

declare dso_local i32 @crypto_core_ristretto255_scalar_invert(i8*, i8*) #1

declare dso_local i32 @crypto_core_ristretto255_scalar_negate(i8*, i8*) #1

declare dso_local i32 @crypto_core_ristretto255_scalar_complement(i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sodium_is_zero(i8*, i32) #1

declare dso_local i32 @sodium_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
