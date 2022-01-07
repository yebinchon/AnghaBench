; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/samsung/extr_clk-s3c2410-dclk.c_s3c24xx_dclk_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/samsung/extr_clk-s3c2410-dclk.c_s3c24xx_dclk_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.s3c24xx_dclk = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.clk_hw** }
%struct.clk_hw = type { i32 }

@DIV_DCLK1 = common dso_local global i64 0, align 8
@DIV_DCLK0 = common dso_local global i64 0, align 8
@DCLK_MAX_CLKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s3c24xx_dclk_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_dclk_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.s3c24xx_dclk*, align 8
  %4 = alloca %struct.clk_hw**, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.s3c24xx_dclk* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.s3c24xx_dclk* %7, %struct.s3c24xx_dclk** %3, align 8
  %8 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %3, align 8
  %9 = getelementptr inbounds %struct.s3c24xx_dclk, %struct.s3c24xx_dclk* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.clk_hw**, %struct.clk_hw*** %10, align 8
  store %struct.clk_hw** %11, %struct.clk_hw*** %4, align 8
  %12 = load %struct.clk_hw**, %struct.clk_hw*** %4, align 8
  %13 = load i64, i64* @DIV_DCLK1, align 8
  %14 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %12, i64 %13
  %15 = load %struct.clk_hw*, %struct.clk_hw** %14, align 8
  %16 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %3, align 8
  %19 = getelementptr inbounds %struct.s3c24xx_dclk, %struct.s3c24xx_dclk* %18, i32 0, i32 1
  %20 = call i32 @clk_notifier_unregister(i32 %17, i32* %19)
  %21 = load %struct.clk_hw**, %struct.clk_hw*** %4, align 8
  %22 = load i64, i64* @DIV_DCLK0, align 8
  %23 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %21, i64 %22
  %24 = load %struct.clk_hw*, %struct.clk_hw** %23, align 8
  %25 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %3, align 8
  %28 = getelementptr inbounds %struct.s3c24xx_dclk, %struct.s3c24xx_dclk* %27, i32 0, i32 0
  %29 = call i32 @clk_notifier_unregister(i32 %26, i32* %28)
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %41, %1
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @DCLK_MAX_CLKS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load %struct.clk_hw**, %struct.clk_hw*** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %35, i64 %37
  %39 = load %struct.clk_hw*, %struct.clk_hw** %38, align 8
  %40 = call i32 @clk_hw_unregister(%struct.clk_hw* %39)
  br label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %30

44:                                               ; preds = %30
  ret i32 0
}

declare dso_local %struct.s3c24xx_dclk* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @clk_notifier_unregister(i32, i32*) #1

declare dso_local i32 @clk_hw_unregister(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
