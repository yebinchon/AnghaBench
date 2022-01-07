; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-ep93xx/extr_clock.c_set_i2s_sclk_rate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-ep93xx/extr_clock.c_set_i2s_sclk_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.clk = type { i32 }

@clk_i2s_mclk = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@EP93XX_I2SCLKDIV_SDIV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@clk_i2s_sclk = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, i64)* @set_i2s_sclk_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_i2s_sclk_rate(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.clk*, %struct.clk** %4, align 8
  %8 = getelementptr inbounds %struct.clk, %struct.clk* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @__raw_readl(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i64, i64* %5, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clk_i2s_mclk, i32 0, i32 0), align 4
  %13 = sdiv i32 %12, 2
  %14 = sext i32 %13 to i64
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @EP93XX_I2SCLKDIV_SDIV, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = load %struct.clk*, %struct.clk** %4, align 8
  %22 = getelementptr inbounds %struct.clk, %struct.clk* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ep93xx_syscon_swlocked_write(i32 %20, i32 %23)
  br label %43

25:                                               ; preds = %2
  %26 = load i64, i64* %5, align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clk_i2s_mclk, i32 0, i32 0), align 4
  %28 = sdiv i32 %27, 4
  %29 = sext i32 %28 to i64
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @EP93XX_I2SCLKDIV_SDIV, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.clk*, %struct.clk** %4, align 8
  %36 = getelementptr inbounds %struct.clk, %struct.clk* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ep93xx_syscon_swlocked_write(i32 %34, i32 %37)
  br label %42

39:                                               ; preds = %25
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %45

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %16
  %44 = load i64, i64* %5, align 8
  store i64 %44, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @clk_i2s_sclk, i32 0, i32 0), align 8
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %39
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @ep93xx_syscon_swlocked_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
