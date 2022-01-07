; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/versatile/extr_clk-sp810.c_clk_sp810_timerclken_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/versatile/extr_clk-sp810.c_clk_sp810_timerclken_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_sp810_timerclken = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SCCTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_sp810_timerclken_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_sp810_timerclken_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_sp810_timerclken*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.clk_sp810_timerclken* @to_clk_sp810_timerclken(%struct.clk_hw* %5)
  store %struct.clk_sp810_timerclken* %6, %struct.clk_sp810_timerclken** %3, align 8
  %7 = load %struct.clk_sp810_timerclken*, %struct.clk_sp810_timerclken** %3, align 8
  %8 = getelementptr inbounds %struct.clk_sp810_timerclken, %struct.clk_sp810_timerclken* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SCCTRL, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.clk_sp810_timerclken*, %struct.clk_sp810_timerclken** %3, align 8
  %17 = getelementptr inbounds %struct.clk_sp810_timerclken, %struct.clk_sp810_timerclken* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @SCCTRL_TIMERENnSEL_SHIFT(i32 %18)
  %20 = shl i32 1, %19
  %21 = and i32 %15, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  ret i32 %25
}

declare dso_local %struct.clk_sp810_timerclken* @to_clk_sp810_timerclken(%struct.clk_hw*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @SCCTRL_TIMERENnSEL_SHIFT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
