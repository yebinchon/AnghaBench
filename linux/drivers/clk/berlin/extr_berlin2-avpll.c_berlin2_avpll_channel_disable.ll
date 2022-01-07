; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/berlin/extr_berlin2-avpll.c_berlin2_avpll_channel_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/berlin/extr_berlin2-avpll.c_berlin2_avpll_channel_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.berlin2_avpll_channel = type { i32, i64 }

@VCO_CTRL10 = common dso_local global i64 0, align 8
@VCO_POWERUP_CH1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @berlin2_avpll_channel_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @berlin2_avpll_channel_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.berlin2_avpll_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.berlin2_avpll_channel* @to_avpll_channel(%struct.clk_hw* %5)
  store %struct.berlin2_avpll_channel* %6, %struct.berlin2_avpll_channel** %3, align 8
  %7 = load %struct.berlin2_avpll_channel*, %struct.berlin2_avpll_channel** %3, align 8
  %8 = getelementptr inbounds %struct.berlin2_avpll_channel, %struct.berlin2_avpll_channel* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @VCO_CTRL10, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl_relaxed(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @VCO_POWERUP_CH1, align 4
  %14 = load %struct.berlin2_avpll_channel*, %struct.berlin2_avpll_channel** %3, align 8
  %15 = getelementptr inbounds %struct.berlin2_avpll_channel, %struct.berlin2_avpll_channel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = shl i32 %13, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.berlin2_avpll_channel*, %struct.berlin2_avpll_channel** %3, align 8
  %23 = getelementptr inbounds %struct.berlin2_avpll_channel, %struct.berlin2_avpll_channel* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @VCO_CTRL10, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel_relaxed(i32 %21, i64 %26)
  ret void
}

declare dso_local %struct.berlin2_avpll_channel* @to_avpll_channel(%struct.clk_hw*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
