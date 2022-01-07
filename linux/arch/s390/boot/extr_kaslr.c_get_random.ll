; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/boot/extr_kaslr.c_get_random.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/boot/extr_kaslr.c_get_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prng_parm = type { i64 }
%struct.prno_parm = type { i32 }

@__const.get_random.prng = private unnamed_addr constant %struct.prng_parm { i64 15 }, align 8
@CPACF_PRNO_SHA512_DRNG_SEED = common dso_local global i32 0, align 4
@CPACF_PRNO_SHA512_DRNG_GEN = common dso_local global i32 0, align 4
@CPACF_KMC_PRNG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @get_random to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_random(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.prng_parm, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.prno_parm, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %10 = bitcast %struct.prng_parm* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.prng_parm* @__const.get_random.prng to i8*), i64 8, i1 false)
  %11 = call i32 (...) @check_prng()
  store i32 %11, i32* %8, align 4
  %12 = call i64 (...) @get_tod_clock_fast()
  store i64 %12, i64* %4, align 8
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %58 [
    i32 128, label %14
    i32 130, label %17
    i32 129, label %24
  ]

14:                                               ; preds = %1
  %15 = bitcast i64* %5 to i8*
  %16 = call i32 @cpacf_trng(i32* null, i32 0, i8* %15, i32 8)
  br label %59

17:                                               ; preds = %1
  %18 = load i32, i32* @CPACF_PRNO_SHA512_DRNG_SEED, align 4
  %19 = bitcast i64* %4 to i8*
  %20 = call i32 @cpacf_prno(i32 %18, %struct.prno_parm* %6, i8* null, i32 0, i8* %19, i32 8)
  %21 = load i32, i32* @CPACF_PRNO_SHA512_DRNG_GEN, align 4
  %22 = bitcast i64* %5 to i8*
  %23 = call i32 @cpacf_prno(i32 %21, %struct.prno_parm* %6, i8* %22, i32 8, i8* null, i32 0)
  br label %59

24:                                               ; preds = %1
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds %struct.prng_parm, %struct.prng_parm* %3, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = xor i64 %29, %25
  store i64 %30, i64* %28, align 8
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %47, %24
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 16
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  %35 = load i32, i32* @CPACF_KMC_PRNG, align 4
  %36 = getelementptr inbounds %struct.prng_parm, %struct.prng_parm* %3, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %39 = bitcast i32* %38 to i8*
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %41 = bitcast i32* %40 to i8*
  %42 = call i32 @cpacf_kmc(i32 %35, i64 %37, i8* %39, i8* %41, i32 16)
  %43 = getelementptr inbounds %struct.prng_parm, %struct.prng_parm* %3, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %46 = call i32 @memcpy(i64 %44, i32* %45, i32 16)
  br label %47

47:                                               ; preds = %34
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %31

50:                                               ; preds = %31
  %51 = load i64, i64* %4, align 8
  store i64 %51, i64* %5, align 8
  %52 = load i32, i32* @CPACF_KMC_PRNG, align 4
  %53 = getelementptr inbounds %struct.prng_parm, %struct.prng_parm* %3, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = bitcast i64* %5 to i8*
  %56 = bitcast i64* %5 to i8*
  %57 = call i32 @cpacf_kmc(i32 %52, i64 %54, i8* %55, i8* %56, i32 8)
  br label %59

58:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %59

59:                                               ; preds = %58, %50, %17, %14
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %2, align 8
  %62 = urem i64 %60, %61
  ret i64 %62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @check_prng(...) #2

declare dso_local i64 @get_tod_clock_fast(...) #2

declare dso_local i32 @cpacf_trng(i32*, i32, i8*, i32) #2

declare dso_local i32 @cpacf_prno(i32, %struct.prno_parm*, i8*, i32, i8*, i32) #2

declare dso_local i32 @cpacf_kmc(i32, i64, i8*, i8*, i32) #2

declare dso_local i32 @memcpy(i64, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
