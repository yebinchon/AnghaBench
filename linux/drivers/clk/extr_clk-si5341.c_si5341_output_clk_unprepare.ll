; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5341.c_si5341_output_clk_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5341.c_si5341_output_clk_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_si5341_output = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SI5341_OUT_CFG_OE = common dso_local global i32 0, align 4
@SI5341_OUT_CFG_PDN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @si5341_output_clk_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si5341_output_clk_unprepare(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_si5341_output*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %4 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %5 = call %struct.clk_si5341_output* @to_clk_si5341_output(%struct.clk_hw* %4)
  store %struct.clk_si5341_output* %5, %struct.clk_si5341_output** %3, align 8
  %6 = load %struct.clk_si5341_output*, %struct.clk_si5341_output** %3, align 8
  %7 = getelementptr inbounds %struct.clk_si5341_output, %struct.clk_si5341_output* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.clk_si5341_output*, %struct.clk_si5341_output** %3, align 8
  %12 = call i32 @SI5341_OUT_CONFIG(%struct.clk_si5341_output* %11)
  %13 = load i32, i32* @SI5341_OUT_CFG_OE, align 4
  %14 = call i32 @regmap_update_bits(i32 %10, i32 %12, i32 %13, i32 0)
  %15 = load %struct.clk_si5341_output*, %struct.clk_si5341_output** %3, align 8
  %16 = getelementptr inbounds %struct.clk_si5341_output, %struct.clk_si5341_output* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.clk_si5341_output*, %struct.clk_si5341_output** %3, align 8
  %21 = call i32 @SI5341_OUT_CONFIG(%struct.clk_si5341_output* %20)
  %22 = load i32, i32* @SI5341_OUT_CFG_PDN, align 4
  %23 = load i32, i32* @SI5341_OUT_CFG_PDN, align 4
  %24 = call i32 @regmap_update_bits(i32 %19, i32 %21, i32 %22, i32 %23)
  ret void
}

declare dso_local %struct.clk_si5341_output* @to_clk_si5341_output(%struct.clk_hw*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SI5341_OUT_CONFIG(%struct.clk_si5341_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
