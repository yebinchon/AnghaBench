; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_mcbsp.c_omap1_mcbsp_request.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_mcbsp.c_omap1_mcbsp_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dsp_use = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"api_ck\00", align 1
@api_clk = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"dsp_ck\00", align 1
@dsp_clk = common dso_local global i32 0, align 4
@DSP_RSTCT2 = common dso_local global i32 0, align 4
@DPS_RSTCT2_PER_EN = common dso_local global i32 0, align 4
@DSP_RSTCT2_WD_PER_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @omap1_mcbsp_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap1_mcbsp_request(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %37

8:                                                ; preds = %5, %1
  %9 = load i32, i32* @dsp_use, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @dsp_use, align 4
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %8
  %13 = call i32 @clk_get(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* @api_clk, align 4
  %14 = call i32 @clk_get(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %14, i32* @dsp_clk, align 4
  %15 = load i32, i32* @api_clk, align 4
  %16 = call i32 @IS_ERR(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @dsp_clk, align 4
  %20 = call i32 @IS_ERR(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @api_clk, align 4
  %24 = call i32 @clk_enable(i32 %23)
  %25 = load i32, i32* @dsp_clk, align 4
  %26 = call i32 @clk_enable(i32 %25)
  %27 = load i32, i32* @DSP_RSTCT2, align 4
  %28 = call i32 @__raw_readw(i32 %27)
  %29 = load i32, i32* @DPS_RSTCT2_PER_EN, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @DSP_RSTCT2_WD_PER_EN, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @DSP_RSTCT2, align 4
  %34 = call i32 @__raw_writew(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %22, %18, %12
  br label %36

36:                                               ; preds = %35, %8
  br label %37

37:                                               ; preds = %36, %5
  ret void
}

declare dso_local i32 @clk_get(i32*, i8*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @__raw_writew(i32, i32) #1

declare dso_local i32 @__raw_readw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
