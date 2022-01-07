; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_m53xx.c_clock_pll.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_m53xx.c_clock_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FREF = common dso_local global i32 0, align 4
@MCF_PLL_PFDR = common dso_local global i32 0, align 4
@BUSDIV = common dso_local global i32 0, align 4
@MAX_FSYS = common dso_local global i32 0, align 4
@MIN_FSYS = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDCR = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDCR_REF = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDCR_CKE = common dso_local global i32 0, align 4
@DEFAULT_LPD = common dso_local global i32 0, align 4
@MCF_PLL_PODR = common dso_local global i32 0, align 4
@MCF_SDRAMC_REFRESH = common dso_local global i32 0, align 4
@MCF_SDRAMC_LIMP_FIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clock_pll(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @FREF, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load i32, i32* @MCF_PLL_PFDR, align 4
  %16 = call i32 @readb(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %9, align 4
  %19 = mul nsw i32 %17, %18
  %20 = load i32, i32* @BUSDIV, align 4
  %21 = mul nsw i32 %20, 4
  %22 = sdiv i32 %19, %21
  store i32 %22, i32* %3, align 4
  br label %104

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @MAX_FSYS, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @MAX_FSYS, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %27, %23
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @MIN_FSYS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @MIN_FSYS, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = load i32, i32* %4, align 4
  %37 = mul nsw i32 100, %36
  %38 = load i32, i32* %6, align 4
  %39 = sdiv i32 %37, %38
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* @BUSDIV, align 4
  %41 = mul nsw i32 4, %40
  %42 = load i32, i32* %7, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sdiv i32 %43, 100
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %9, align 4
  %47 = mul nsw i32 %45, %46
  %48 = load i32, i32* @BUSDIV, align 4
  %49 = mul nsw i32 %48, 4
  %50 = sdiv i32 %47, %49
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* @MCF_SDRAMC_SDCR, align 4
  %52 = call i32 @readl(i32 %51)
  %53 = load i32, i32* @MCF_SDRAMC_SDCR_REF, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %35
  %57 = load i32, i32* @MCF_SDRAMC_SDCR, align 4
  %58 = call i32 @readl(i32 %57)
  %59 = load i32, i32* @MCF_SDRAMC_SDCR_CKE, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = load i32, i32* @MCF_SDRAMC_SDCR, align 4
  %63 = call i32 @writel(i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %56, %35
  %65 = load i32, i32* @DEFAULT_LPD, align 4
  %66 = call i32 @clock_limp(i32 %65)
  %67 = load i32, i32* @BUSDIV, align 4
  %68 = sdiv i32 %67, 3
  %69 = call i32 @MCF_PLL_PODR_CPUDIV(i32 %68)
  %70 = load i32, i32* @BUSDIV, align 4
  %71 = call i32 @MCF_PLL_PODR_BUSDIV(i32 %70)
  %72 = or i32 %69, %71
  %73 = load i32, i32* @MCF_PLL_PODR, align 4
  %74 = call i32 @writeb(i32 %72, i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @MCF_PLL_PFDR, align 4
  %77 = call i32 @writeb(i32 %75, i32 %76)
  %78 = call i32 (...) @clock_exit_limp()
  %79 = load i32, i32* @MCF_SDRAMC_SDCR, align 4
  %80 = call i32 @readl(i32 %79)
  %81 = load i32, i32* @MCF_SDRAMC_SDCR_REF, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %64
  %85 = load i32, i32* @MCF_SDRAMC_SDCR, align 4
  %86 = call i32 @readl(i32 %85)
  %87 = load i32, i32* @MCF_SDRAMC_SDCR_CKE, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @MCF_SDRAMC_SDCR, align 4
  %90 = call i32 @writel(i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %84, %64
  %92 = load i32, i32* @MCF_SDRAMC_REFRESH, align 4
  %93 = load i32, i32* @MCF_SDRAMC_LIMP_FIX, align 4
  %94 = call i32 @writel(i32 %92, i32 %93)
  store i32 0, i32* %10, align 4
  br label %95

95:                                               ; preds = %99, %91
  %96 = load i32, i32* %10, align 4
  %97 = icmp slt i32 %96, 512
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %95

102:                                              ; preds = %95
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %102, %14
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @readb(i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @clock_limp(i32) #1

declare dso_local i32 @writeb(i32, i32) #1

declare dso_local i32 @MCF_PLL_PODR_CPUDIV(i32) #1

declare dso_local i32 @MCF_PLL_PODR_BUSDIV(i32) #1

declare dso_local i32 @clock_exit_limp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
