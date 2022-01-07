; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/microchip/extr_clk-core.c_pbclk_read_pbdiv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/microchip/extr_clk-core.c_pbclk_read_pbdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pic32_periph_clk = type { i32 }

@PB_DIV_SHIFT = common dso_local global i32 0, align 4
@PB_DIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pic32_periph_clk*)* @pbclk_read_pbdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pbclk_read_pbdiv(%struct.pic32_periph_clk* %0) #0 {
  %2 = alloca %struct.pic32_periph_clk*, align 8
  store %struct.pic32_periph_clk* %0, %struct.pic32_periph_clk** %2, align 8
  %3 = load %struct.pic32_periph_clk*, %struct.pic32_periph_clk** %2, align 8
  %4 = getelementptr inbounds %struct.pic32_periph_clk, %struct.pic32_periph_clk* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @readl(i32 %5)
  %7 = load i32, i32* @PB_DIV_SHIFT, align 4
  %8 = ashr i32 %6, %7
  %9 = load i32, i32* @PB_DIV_MASK, align 4
  %10 = and i32 %8, %9
  %11 = add nsw i32 %10, 1
  ret i32 %11
}

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
