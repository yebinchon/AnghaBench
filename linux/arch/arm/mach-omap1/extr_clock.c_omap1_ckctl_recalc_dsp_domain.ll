; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_clock.c_omap1_ckctl_recalc_dsp_domain.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_clock.c_omap1_ckctl_recalc_dsp_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@api_ck_p = common dso_local global i32 0, align 4
@DSP_CKCTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @omap1_ckctl_recalc_dsp_domain(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %2, align 8
  %4 = load i32, i32* @api_ck_p, align 4
  %5 = call i32 @omap1_clk_enable(i32 %4)
  %6 = load i32, i32* @DSP_CKCTL, align 4
  %7 = call i32 @__raw_readw(i32 %6)
  %8 = load %struct.clk*, %struct.clk** %2, align 8
  %9 = getelementptr inbounds %struct.clk, %struct.clk* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = ashr i32 %7, %10
  %12 = and i32 3, %11
  %13 = shl i32 1, %12
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @api_ck_p, align 4
  %15 = call i32 @omap1_clk_disable(i32 %14)
  %16 = load %struct.clk*, %struct.clk** %2, align 8
  %17 = getelementptr inbounds %struct.clk, %struct.clk* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %3, align 4
  %22 = sdiv i32 %20, %21
  %23 = sext i32 %22 to i64
  ret i64 %23
}

declare dso_local i32 @omap1_clk_enable(i32) #1

declare dso_local i32 @__raw_readw(i32) #1

declare dso_local i32 @omap1_clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
