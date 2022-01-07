; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/samsung/extr_clk-s3c2410-dclk.c_s3c24xx_clkout_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/samsung/extr_clk-s3c2410-dclk.c_s3c24xx_clkout_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.s3c24xx_clkout = type { i32, i32 }

@S3C24XX_MISCCR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @s3c24xx_clkout_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_clkout_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.s3c24xx_clkout*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.s3c24xx_clkout* @to_s3c24xx_clkout(%struct.clk_hw* %7)
  store %struct.s3c24xx_clkout* %8, %struct.s3c24xx_clkout** %4, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %10 = call i32 @clk_hw_get_num_parents(%struct.clk_hw* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @S3C24XX_MISCCR, align 4
  %12 = call i32 @readl_relaxed(i32 %11)
  %13 = load %struct.s3c24xx_clkout*, %struct.s3c24xx_clkout** %4, align 8
  %14 = getelementptr inbounds %struct.s3c24xx_clkout, %struct.s3c24xx_clkout* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = ashr i32 %12, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.s3c24xx_clkout*, %struct.s3c24xx_clkout** %4, align 8
  %18 = getelementptr inbounds %struct.s3c24xx_clkout, %struct.s3c24xx_clkout* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = ashr i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load %struct.s3c24xx_clkout*, %struct.s3c24xx_clkout** %4, align 8
  %23 = getelementptr inbounds %struct.s3c24xx_clkout, %struct.s3c24xx_clkout* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %35

33:                                               ; preds = %1
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.s3c24xx_clkout* @to_s3c24xx_clkout(%struct.clk_hw*) #1

declare dso_local i32 @clk_hw_get_num_parents(%struct.clk_hw*) #1

declare dso_local i32 @readl_relaxed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
