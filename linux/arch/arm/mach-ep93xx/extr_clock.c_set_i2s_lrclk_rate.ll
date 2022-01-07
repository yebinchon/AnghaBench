; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-ep93xx/extr_clock.c_set_i2s_lrclk_rate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-ep93xx/extr_clock.c_set_i2s_lrclk_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.clk = type { i32 }

@EP93XX_I2SCLKDIV_LRDIV_MASK = common dso_local global i32 0, align 4
@clk_i2s_sclk = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@EP93XX_I2SCLKDIV_LRDIV32 = common dso_local global i32 0, align 4
@EP93XX_I2SCLKDIV_LRDIV64 = common dso_local global i32 0, align 4
@EP93XX_I2SCLKDIV_LRDIV128 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@clk_i2s_lrclk = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, i64)* @set_i2s_lrclk_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_i2s_lrclk_rate(%struct.clk* %0, i64 %1) #0 {
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
  %11 = load i32, i32* @EP93XX_I2SCLKDIV_LRDIV_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  store i32 %13, i32* %6, align 4
  %14 = load i64, i64* %5, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @clk_i2s_sclk, i32 0, i32 0), align 4
  %16 = sdiv i32 %15, 32
  %17 = sext i32 %16 to i64
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @EP93XX_I2SCLKDIV_LRDIV32, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.clk*, %struct.clk** %4, align 8
  %24 = getelementptr inbounds %struct.clk, %struct.clk* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ep93xx_syscon_swlocked_write(i32 %22, i32 %25)
  br label %60

27:                                               ; preds = %2
  %28 = load i64, i64* %5, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @clk_i2s_sclk, i32 0, i32 0), align 4
  %30 = sdiv i32 %29, 64
  %31 = sext i32 %30 to i64
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @EP93XX_I2SCLKDIV_LRDIV64, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.clk*, %struct.clk** %4, align 8
  %38 = getelementptr inbounds %struct.clk, %struct.clk* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ep93xx_syscon_swlocked_write(i32 %36, i32 %39)
  br label %59

41:                                               ; preds = %27
  %42 = load i64, i64* %5, align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @clk_i2s_sclk, i32 0, i32 0), align 4
  %44 = sdiv i32 %43, 128
  %45 = sext i32 %44 to i64
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @EP93XX_I2SCLKDIV_LRDIV128, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.clk*, %struct.clk** %4, align 8
  %52 = getelementptr inbounds %struct.clk, %struct.clk* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ep93xx_syscon_swlocked_write(i32 %50, i32 %53)
  br label %58

55:                                               ; preds = %41
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %62

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %33
  br label %60

60:                                               ; preds = %59, %19
  %61 = load i64, i64* %5, align 8
  store i64 %61, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clk_i2s_lrclk, i32 0, i32 0), align 8
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %55
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @ep93xx_syscon_swlocked_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
