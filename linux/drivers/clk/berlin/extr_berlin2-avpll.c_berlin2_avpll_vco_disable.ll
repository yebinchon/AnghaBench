; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/berlin/extr_berlin2-avpll.c_berlin2_avpll_vco_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/berlin/extr_berlin2-avpll.c_berlin2_avpll_vco_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.berlin2_avpll_vco = type { i32, i64 }

@VCO_CTRL0 = common dso_local global i64 0, align 8
@BERLIN2_AVPLL_BIT_QUIRK = common dso_local global i32 0, align 4
@VCO_POWERUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @berlin2_avpll_vco_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @berlin2_avpll_vco_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.berlin2_avpll_vco*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.berlin2_avpll_vco* @to_avpll_vco(%struct.clk_hw* %5)
  store %struct.berlin2_avpll_vco* %6, %struct.berlin2_avpll_vco** %3, align 8
  %7 = load %struct.berlin2_avpll_vco*, %struct.berlin2_avpll_vco** %3, align 8
  %8 = getelementptr inbounds %struct.berlin2_avpll_vco, %struct.berlin2_avpll_vco* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @VCO_CTRL0, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl_relaxed(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.berlin2_avpll_vco*, %struct.berlin2_avpll_vco** %3, align 8
  %14 = getelementptr inbounds %struct.berlin2_avpll_vco, %struct.berlin2_avpll_vco* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @BERLIN2_AVPLL_BIT_QUIRK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load i32, i32* @VCO_POWERUP, align 4
  %21 = shl i32 %20, 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %4, align 4
  br label %30

25:                                               ; preds = %1
  %26 = load i32, i32* @VCO_POWERUP, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %25, %19
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.berlin2_avpll_vco*, %struct.berlin2_avpll_vco** %3, align 8
  %33 = getelementptr inbounds %struct.berlin2_avpll_vco, %struct.berlin2_avpll_vco* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @VCO_CTRL0, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel_relaxed(i32 %31, i64 %36)
  ret void
}

declare dso_local %struct.berlin2_avpll_vco* @to_avpll_vco(%struct.clk_hw*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
