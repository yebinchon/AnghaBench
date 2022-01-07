; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_clock.c_omap1_clk_set_rate_dsp_domain.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_clock.c_omap1_clk_set_rate_dsp_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DSP_CKCTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap1_clk_set_rate_dsp_domain(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.clk*, %struct.clk** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @calc_dsor_exp(%struct.clk* %8, i64 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp sgt i32 %11, 3
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %51

21:                                               ; preds = %16
  %22 = load i32, i32* @DSP_CKCTL, align 4
  %23 = call i32 @__raw_readw(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.clk*, %struct.clk** %4, align 8
  %25 = getelementptr inbounds %struct.clk, %struct.clk* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = shl i32 3, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.clk*, %struct.clk** %4, align 8
  %33 = getelementptr inbounds %struct.clk, %struct.clk* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = shl i32 %31, %34
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @DSP_CKCTL, align 4
  %40 = call i32 @__raw_writew(i32 %38, i32 %39)
  %41 = load %struct.clk*, %struct.clk** %4, align 8
  %42 = getelementptr inbounds %struct.clk, %struct.clk* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = shl i32 1, %46
  %48 = sdiv i32 %45, %47
  %49 = load %struct.clk*, %struct.clk** %4, align 8
  %50 = getelementptr inbounds %struct.clk, %struct.clk* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %21, %19
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @calc_dsor_exp(%struct.clk*, i64) #1

declare dso_local i32 @__raw_readw(i32) #1

declare dso_local i32 @__raw_writew(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
