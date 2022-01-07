; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_sp_cmp.c_ieee754sp_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_sp_cmp.c_ieee754sp_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ieee754sp = type { i32 }

@COMPXSP = common dso_local global i32 0, align 4
@COMPYSP = common dso_local global i32 0, align 4
@EXPLODEXSP = common dso_local global i32 0, align 4
@EXPLODEYSP = common dso_local global i32 0, align 4
@FLUSHXSP = common dso_local global i32 0, align 4
@FLUSHYSP = common dso_local global i32 0, align 4
@xc = common dso_local global i64 0, align 8
@yc = common dso_local global i64 0, align 8
@IEEE754_CLASS_SNAN = common dso_local global i64 0, align 8
@IEEE754_INVALID_OPERATION = common dso_local global i32 0, align 4
@IEEE754_CUN = common dso_local global i32 0, align 4
@SP_SIGN_BIT = common dso_local global i32 0, align 4
@IEEE754_CLT = common dso_local global i32 0, align 4
@IEEE754_CEQ = common dso_local global i32 0, align 4
@IEEE754_CGT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee754sp_cmp(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %union.ieee754sp, align 4
  %7 = alloca %union.ieee754sp, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %6, i32 0, i32 0
  store i32 %0, i32* %12, align 4
  %13 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %7, i32 0, i32 0
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @COMPXSP, align 4
  %15 = load i32, i32* @COMPYSP, align 4
  %16 = load i32, i32* @EXPLODEXSP, align 4
  %17 = load i32, i32* @EXPLODEYSP, align 4
  %18 = load i32, i32* @FLUSHXSP, align 4
  %19 = load i32, i32* @FLUSHYSP, align 4
  %20 = call i32 (...) @ieee754_clearcx()
  %21 = load i64, i64* @xc, align 8
  %22 = call i64 @ieee754_class_nan(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %4
  %25 = load i64, i64* @yc, align 8
  %26 = call i64 @ieee754_class_nan(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %24, %4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* @xc, align 8
  %33 = load i64, i64* @IEEE754_CLASS_SNAN, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* @yc, align 8
  %37 = load i64, i64* @IEEE754_CLASS_SNAN, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35, %31, %28
  %40 = load i32, i32* @IEEE754_INVALID_OPERATION, align 4
  %41 = call i32 @ieee754_setcx(i32 %40)
  br label %42

42:                                               ; preds = %39, %35
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @IEEE754_CUN, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %5, align 4
  br label %94

48:                                               ; preds = %24
  %49 = bitcast %union.ieee754sp* %6 to i32*
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %10, align 4
  %51 = bitcast %union.ieee754sp* %7 to i32*
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load i32, i32* %10, align 4
  %57 = sub nsw i32 0, %56
  %58 = load i32, i32* @SP_SIGN_BIT, align 4
  %59 = xor i32 %57, %58
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %55, %48
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32, i32* %11, align 4
  %65 = sub nsw i32 0, %64
  %66 = load i32, i32* @SP_SIGN_BIT, align 4
  %67 = xor i32 %65, %66
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %63, %60
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @IEEE754_CLT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %5, align 4
  br label %94

78:                                               ; preds = %68
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @IEEE754_CEQ, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %5, align 4
  br label %94

88:                                               ; preds = %78
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @IEEE754_CGT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %88, %82, %72, %42
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @ieee754_clearcx(...) #1

declare dso_local i64 @ieee754_class_nan(i64) #1

declare dso_local i32 @ieee754_setcx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
