; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_dp_fsp.c_ieee754dp_fsp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_dp_fsp.c_ieee754dp_fsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ieee754dp = type { i32 }
%union.ieee754sp = type { i32 }

@COMPXSP = common dso_local global i32 0, align 4
@EXPLODEXSP = common dso_local global i32 0, align 4
@FLUSHXSP = common dso_local global i32 0, align 4
@xc = common dso_local global i32 0, align 4
@xs = common dso_local global i32 0, align 4
@xm = common dso_local global i32 0, align 4
@SP_FBITS = common dso_local global i32 0, align 4
@xe = common dso_local global i64 0, align 8
@SP_HIDDEN_BIT = common dso_local global i32 0, align 4
@DP_EBIAS = common dso_local global i64 0, align 8
@DP_FBITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee754dp_fsp(i32 %0) #0 {
  %2 = alloca %union.ieee754dp, align 4
  %3 = alloca %union.ieee754sp, align 4
  %4 = alloca %union.ieee754dp, align 4
  %5 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %3, i32 0, i32 0
  store i32 %0, i32* %5, align 4
  %6 = load i32, i32* @COMPXSP, align 4
  %7 = load i32, i32* @EXPLODEXSP, align 4
  %8 = call i32 (...) @ieee754_clearcx()
  %9 = load i32, i32* @FLUSHXSP, align 4
  %10 = load i32, i32* @xc, align 4
  switch i32 %10, label %46 [
    i32 129, label %11
    i32 130, label %20
    i32 132, label %25
    i32 128, label %29
    i32 133, label %33
    i32 131, label %45
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @xs, align 4
  %13 = load i32, i32* @xm, align 4
  %14 = call i32 @ieee754dp_nan_fsp(i32 %12, i32 %13)
  %15 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %4, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %4, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ieee754dp_nanxcpt(i32 %17)
  %19 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %2, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  br label %62

20:                                               ; preds = %1
  %21 = load i32, i32* @xs, align 4
  %22 = load i32, i32* @xm, align 4
  %23 = call i32 @ieee754dp_nan_fsp(i32 %21, i32 %22)
  %24 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %2, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  br label %62

25:                                               ; preds = %1
  %26 = load i32, i32* @xs, align 4
  %27 = call i32 @ieee754dp_inf(i32 %26)
  %28 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %2, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  br label %62

29:                                               ; preds = %1
  %30 = load i32, i32* @xs, align 4
  %31 = call i32 @ieee754dp_zero(i32 %30)
  %32 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %2, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  br label %62

33:                                               ; preds = %1
  br label %34

34:                                               ; preds = %39, %33
  %35 = load i32, i32* @xm, align 4
  %36 = load i32, i32* @SP_FBITS, align 4
  %37 = ashr i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* @xm, align 4
  %41 = shl i32 %40, 1
  store i32 %41, i32* @xm, align 4
  %42 = load i64, i64* @xe, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* @xe, align 8
  br label %34

44:                                               ; preds = %34
  br label %46

45:                                               ; preds = %1
  br label %46

46:                                               ; preds = %1, %45, %44
  %47 = load i32, i32* @SP_HIDDEN_BIT, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* @xm, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* @xm, align 4
  %51 = load i32, i32* @xs, align 4
  %52 = load i64, i64* @xe, align 8
  %53 = load i64, i64* @DP_EBIAS, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i32, i32* @xm, align 4
  %56 = load i32, i32* @DP_FBITS, align 4
  %57 = load i32, i32* @SP_FBITS, align 4
  %58 = sub nsw i32 %56, %57
  %59 = shl i32 %55, %58
  %60 = call i32 @builddp(i32 %51, i64 %54, i32 %59)
  %61 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %2, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %46, %29, %25, %20, %11
  %63 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %2, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  ret i32 %64
}

declare dso_local i32 @ieee754_clearcx(...) #1

declare dso_local i32 @ieee754dp_nanxcpt(i32) #1

declare dso_local i32 @ieee754dp_nan_fsp(i32, i32) #1

declare dso_local i32 @ieee754dp_inf(i32) #1

declare dso_local i32 @ieee754dp_zero(i32) #1

declare dso_local i32 @builddp(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
