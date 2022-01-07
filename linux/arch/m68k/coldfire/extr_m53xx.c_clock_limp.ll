; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_m53xx.c_clock_limp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_m53xx.c_clock_limp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIN_LPD = common dso_local global i32 0, align 4
@MAX_LPD = common dso_local global i32 0, align 4
@MCF_CCM_CDR = common dso_local global i32 0, align 4
@MCF_CCM_MISCCR = common dso_local global i32 0, align 4
@MCF_CCM_MISCCR_LIMP = common dso_local global i32 0, align 4
@FREF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clock_limp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @MIN_LPD, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @MIN_LPD, align 4
  store i32 %8, i32* %2, align 4
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @MAX_LPD, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @MAX_LPD, align 4
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %13, %9
  %16 = load i32, i32* @MCF_CCM_CDR, align 4
  %17 = call i32 @readw(i32 %16)
  %18 = call i32 @MCF_CCM_CDR_SSIDIV(i32 15)
  %19 = and i32 %17, %18
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @MCF_CCM_CDR_LPDIV(i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @MCF_CCM_CDR_SSIDIV(i32 %22)
  %24 = or i32 %21, %23
  %25 = load i32, i32* @MCF_CCM_CDR, align 4
  %26 = call i32 @writew(i32 %24, i32 %25)
  %27 = load i32, i32* @MCF_CCM_MISCCR, align 4
  %28 = call i32 @readw(i32 %27)
  %29 = load i32, i32* @MCF_CCM_MISCCR_LIMP, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @MCF_CCM_MISCCR, align 4
  %32 = call i32 @writew(i32 %30, i32 %31)
  %33 = load i32, i32* @FREF, align 4
  %34 = load i32, i32* %2, align 4
  %35 = shl i32 1, %34
  %36 = mul nsw i32 3, %35
  %37 = sdiv i32 %33, %36
  ret i32 %37
}

declare dso_local i32 @readw(i32) #1

declare dso_local i32 @MCF_CCM_CDR_SSIDIV(i32) #1

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i32 @MCF_CCM_CDR_LPDIV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
