; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_set_frequency_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_set_frequency_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dfll = type { i32, i32 }
%struct.dfll_rate_req = type { i32, i32, i32 }

@FORCE_MIN = common dso_local global i32 0, align 4
@FORCE_MAX = common dso_local global i32 0, align 4
@DFLL_FREQ_REQ_MULT_SHIFT = common dso_local global i32 0, align 4
@DFLL_FREQ_REQ_SCALE_SHIFT = common dso_local global i32 0, align 4
@DFLL_FREQ_REQ_FORCE_SHIFT = common dso_local global i32 0, align 4
@DFLL_FREQ_REQ_FORCE_MASK = common dso_local global i32 0, align 4
@DFLL_FREQ_REQ_FREQ_VALID = common dso_local global i32 0, align 4
@DFLL_FREQ_REQ_FORCE_ENABLE = common dso_local global i32 0, align 4
@DFLL_FREQ_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_dfll*, %struct.dfll_rate_req*)* @dfll_set_frequency_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dfll_set_frequency_request(%struct.tegra_dfll* %0, %struct.dfll_rate_req* %1) #0 {
  %3 = alloca %struct.tegra_dfll*, align 8
  %4 = alloca %struct.dfll_rate_req*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tegra_dfll* %0, %struct.tegra_dfll** %3, align 8
  store %struct.dfll_rate_req* %1, %struct.dfll_rate_req** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 128, i32* %7, align 4
  %8 = load %struct.dfll_rate_req*, %struct.dfll_rate_req** %4, align 8
  %9 = getelementptr inbounds %struct.dfll_rate_req, %struct.dfll_rate_req* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %12 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %10, %13
  %15 = load i32, i32* %7, align 4
  %16 = mul nsw i32 %14, %15
  %17 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %18 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %16, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @FORCE_MIN, align 4
  %23 = load i32, i32* @FORCE_MAX, align 4
  %24 = call i32 @clamp(i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.dfll_rate_req*, %struct.dfll_rate_req** %4, align 8
  %26 = getelementptr inbounds %struct.dfll_rate_req, %struct.dfll_rate_req* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DFLL_FREQ_REQ_MULT_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load %struct.dfll_rate_req*, %struct.dfll_rate_req** %4, align 8
  %33 = getelementptr inbounds %struct.dfll_rate_req, %struct.dfll_rate_req* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @DFLL_FREQ_REQ_SCALE_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @DFLL_FREQ_REQ_FORCE_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* @DFLL_FREQ_REQ_FORCE_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* @DFLL_FREQ_REQ_FREQ_VALID, align 4
  %47 = load i32, i32* @DFLL_FREQ_REQ_FORCE_ENABLE, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @DFLL_FREQ_REQ, align 4
  %54 = call i32 @dfll_writel(%struct.tegra_dfll* %51, i32 %52, i32 %53)
  %55 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %56 = call i32 @dfll_wmb(%struct.tegra_dfll* %55)
  ret void
}

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @dfll_writel(%struct.tegra_dfll*, i32, i32) #1

declare dso_local i32 @dfll_wmb(%struct.tegra_dfll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
