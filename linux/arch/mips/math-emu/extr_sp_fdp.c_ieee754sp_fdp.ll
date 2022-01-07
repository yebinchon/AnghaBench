; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_sp_fdp.c_ieee754sp_fdp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_sp_fdp.c_ieee754sp_fdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%union.ieee754sp = type { i32 }
%union.ieee754dp = type { i32 }

@COMPXDP = common dso_local global i32 0, align 4
@COMPYSP = common dso_local global i32 0, align 4
@EXPLODEXDP = common dso_local global i32 0, align 4
@FLUSHXDP = common dso_local global i32 0, align 4
@xc = common dso_local global i32 0, align 4
@xs = common dso_local global i32 0, align 4
@xm = common dso_local global i32 0, align 4
@ieee754_csr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EXPLODEYSP = common dso_local global i32 0, align 4
@yc = common dso_local global i32 0, align 4
@IEEE754_UNDERFLOW = common dso_local global i32 0, align 4
@IEEE754_INEXACT = common dso_local global i32 0, align 4
@FPU_CSR_RU = common dso_local global i32 0, align 4
@FPU_CSR_RD = common dso_local global i32 0, align 4
@DP_FBITS = common dso_local global i32 0, align 4
@SP_FBITS = common dso_local global i32 0, align 4
@xe = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee754sp_fdp(i32 %0) #0 {
  %2 = alloca %union.ieee754sp, align 4
  %3 = alloca %union.ieee754dp, align 4
  %4 = alloca %union.ieee754sp, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.ieee754dp, align 4
  %7 = alloca %union.ieee754sp, align 4
  %8 = alloca %union.ieee754sp, align 4
  %9 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %3, i32 0, i32 0
  store i32 %0, i32* %9, align 4
  %10 = load i32, i32* @COMPXDP, align 4
  %11 = load i32, i32* @COMPYSP, align 4
  %12 = load i32, i32* @EXPLODEXDP, align 4
  %13 = call i32 (...) @ieee754_clearcx()
  %14 = load i32, i32* @FLUSHXDP, align 4
  %15 = load i32, i32* @xc, align 4
  switch i32 %15, label %82 [
    i32 129, label %16
    i32 130, label %24
    i32 132, label %47
    i32 128, label %51
    i32 133, label %55
    i32 131, label %81
  ]

16:                                               ; preds = %1
  %17 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %3, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ieee754dp_nanxcpt(i32 %18)
  %20 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %6, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = bitcast %union.ieee754dp* %3 to i8*
  %22 = bitcast %union.ieee754dp* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = load i32, i32* @EXPLODEXDP, align 4
  br label %24

24:                                               ; preds = %1, %16
  %25 = load i32, i32* @xs, align 4
  %26 = load i32, i32* @xm, align 4
  %27 = call i32 @ieee754sp_nan_fdp(i32 %25, i32 %26)
  %28 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %7, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = bitcast %union.ieee754sp* %4 to i8*
  %30 = bitcast %union.ieee754sp* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 4, i1 false)
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ieee754_csr, i32 0, i32 1), align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @EXPLODEYSP, align 4
  %35 = load i32, i32* @yc, align 4
  %36 = call i32 @ieee754_class_nan(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = call i32 (...) @ieee754sp_indef()
  %40 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %8, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = bitcast %union.ieee754sp* %4 to i8*
  %42 = bitcast %union.ieee754sp* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  br label %43

43:                                               ; preds = %38, %33
  br label %44

44:                                               ; preds = %43, %24
  %45 = bitcast %union.ieee754sp* %2 to i8*
  %46 = bitcast %union.ieee754sp* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 4, i1 false)
  br label %104

47:                                               ; preds = %1
  %48 = load i32, i32* @xs, align 4
  %49 = call i32 @ieee754sp_inf(i32 %48)
  %50 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %2, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  br label %104

51:                                               ; preds = %1
  %52 = load i32, i32* @xs, align 4
  %53 = call i32 @ieee754sp_zero(i32 %52)
  %54 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %2, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  br label %104

55:                                               ; preds = %1
  %56 = load i32, i32* @IEEE754_UNDERFLOW, align 4
  %57 = call i32 @ieee754_setcx(i32 %56)
  %58 = load i32, i32* @IEEE754_INEXACT, align 4
  %59 = call i32 @ieee754_setcx(i32 %58)
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ieee754_csr, i32 0, i32 0), align 4
  %61 = load i32, i32* @FPU_CSR_RU, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32, i32* @xs, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %63, %55
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ieee754_csr, i32 0, i32 0), align 4
  %68 = load i32, i32* @FPU_CSR_RD, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load i32, i32* @xs, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70, %63
  %74 = load i32, i32* @xs, align 4
  %75 = call i32 @ieee754sp_mind(i32 %74)
  %76 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %2, i32 0, i32 0
  store i32 %75, i32* %76, align 4
  br label %104

77:                                               ; preds = %70, %66
  %78 = load i32, i32* @xs, align 4
  %79 = call i32 @ieee754sp_zero(i32 %78)
  %80 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %2, i32 0, i32 0
  store i32 %79, i32* %80, align 4
  br label %104

81:                                               ; preds = %1
  br label %82

82:                                               ; preds = %1, %81
  %83 = load i32, i32* @xm, align 4
  %84 = load i32, i32* @DP_FBITS, align 4
  %85 = load i32, i32* @SP_FBITS, align 4
  %86 = add nsw i32 %85, 3
  %87 = sub nsw i32 %84, %86
  %88 = ashr i32 %83, %87
  %89 = load i32, i32* @xm, align 4
  %90 = load i32, i32* @DP_FBITS, align 4
  %91 = load i32, i32* @SP_FBITS, align 4
  %92 = add nsw i32 %91, 3
  %93 = sub nsw i32 %90, %92
  %94 = sub nsw i32 64, %93
  %95 = shl i32 %89, %94
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = or i32 %88, %97
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* @xs, align 4
  %100 = load i32, i32* @xe, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @ieee754sp_format(i32 %99, i32 %100, i32 %101)
  %103 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %2, i32 0, i32 0
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %82, %77, %73, %51, %47, %44
  %105 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %2, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  ret i32 %106
}

declare dso_local i32 @ieee754_clearcx(...) #1

declare dso_local i32 @ieee754dp_nanxcpt(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ieee754sp_nan_fdp(i32, i32) #1

declare dso_local i32 @ieee754_class_nan(i32) #1

declare dso_local i32 @ieee754sp_indef(...) #1

declare dso_local i32 @ieee754sp_inf(i32) #1

declare dso_local i32 @ieee754sp_zero(i32) #1

declare dso_local i32 @ieee754_setcx(i32) #1

declare dso_local i32 @ieee754sp_mind(i32) #1

declare dso_local i32 @ieee754sp_format(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
