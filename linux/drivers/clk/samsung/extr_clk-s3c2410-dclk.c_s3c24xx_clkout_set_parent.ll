; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/samsung/extr_clk-s3c2410-dclk.c_s3c24xx_clkout_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/samsung/extr_clk-s3c2410-dclk.c_s3c24xx_clkout_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.s3c24xx_clkout = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i32)* @s3c24xx_clkout_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_clkout_set_parent(%struct.clk_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s3c24xx_clkout*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %7 = call %struct.s3c24xx_clkout* @to_s3c24xx_clkout(%struct.clk_hw* %6)
  store %struct.s3c24xx_clkout* %7, %struct.s3c24xx_clkout** %5, align 8
  %8 = load %struct.s3c24xx_clkout*, %struct.s3c24xx_clkout** %5, align 8
  %9 = getelementptr inbounds %struct.s3c24xx_clkout, %struct.s3c24xx_clkout* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.s3c24xx_clkout*, %struct.s3c24xx_clkout** %5, align 8
  %12 = getelementptr inbounds %struct.s3c24xx_clkout, %struct.s3c24xx_clkout* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %10, %13
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.s3c24xx_clkout*, %struct.s3c24xx_clkout** %5, align 8
  %17 = getelementptr inbounds %struct.s3c24xx_clkout, %struct.s3c24xx_clkout* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %15, %18
  %20 = call i32 @s3c2410_modify_misccr(i32 %14, i32 %19)
  ret i32 0
}

declare dso_local %struct.s3c24xx_clkout* @to_s3c24xx_clkout(%struct.clk_hw*) #1

declare dso_local i32 @s3c2410_modify_misccr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
