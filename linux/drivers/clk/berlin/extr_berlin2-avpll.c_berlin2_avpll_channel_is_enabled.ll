; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/berlin/extr_berlin2-avpll.c_berlin2_avpll_channel_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/berlin/extr_berlin2-avpll.c_berlin2_avpll_channel_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.berlin2_avpll_channel = type { i32, i64 }

@VCO_CTRL10 = common dso_local global i64 0, align 8
@VCO_POWERUP_CH1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @berlin2_avpll_channel_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @berlin2_avpll_channel_is_enabled(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.berlin2_avpll_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %7 = call %struct.berlin2_avpll_channel* @to_avpll_channel(%struct.clk_hw* %6)
  store %struct.berlin2_avpll_channel* %7, %struct.berlin2_avpll_channel** %4, align 8
  %8 = load %struct.berlin2_avpll_channel*, %struct.berlin2_avpll_channel** %4, align 8
  %9 = getelementptr inbounds %struct.berlin2_avpll_channel, %struct.berlin2_avpll_channel* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 7
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %32

13:                                               ; preds = %1
  %14 = load %struct.berlin2_avpll_channel*, %struct.berlin2_avpll_channel** %4, align 8
  %15 = getelementptr inbounds %struct.berlin2_avpll_channel, %struct.berlin2_avpll_channel* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VCO_CTRL10, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl_relaxed(i64 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @VCO_POWERUP_CH1, align 4
  %21 = load %struct.berlin2_avpll_channel*, %struct.berlin2_avpll_channel** %4, align 8
  %22 = getelementptr inbounds %struct.berlin2_avpll_channel, %struct.berlin2_avpll_channel* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = shl i32 %20, %23
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %13, %12
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.berlin2_avpll_channel* @to_avpll_channel(%struct.clk_hw*) #1

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
