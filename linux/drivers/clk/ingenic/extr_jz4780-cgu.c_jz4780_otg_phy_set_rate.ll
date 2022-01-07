; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_jz4780-cgu.c_jz4780_otg_phy_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_jz4780-cgu.c_jz4780_otg_phy_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.clk_hw = type { i32 }

@USBPCR1_REFCLKDIV_12 = common dso_local global i32 0, align 4
@USBPCR1_REFCLKDIV_19_2 = common dso_local global i32 0, align 4
@USBPCR1_REFCLKDIV_24 = common dso_local global i32 0, align 4
@USBPCR1_REFCLKDIV_48 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@cgu = common dso_local global %struct.TYPE_2__* null, align 8
@CGU_REG_USBPCR1 = common dso_local global i64 0, align 8
@USBPCR1_REFCLKDIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @jz4780_otg_phy_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_otg_phy_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %6, align 8
  switch i64 %11, label %20 [
    i64 12000000, label %12
    i64 19200000, label %14
    i64 24000000, label %16
    i64 48000000, label %18
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @USBPCR1_REFCLKDIV_12, align 4
  store i32 %13, i32* %10, align 4
  br label %23

14:                                               ; preds = %3
  %15 = load i32, i32* @USBPCR1_REFCLKDIV_19_2, align 4
  store i32 %15, i32* %10, align 4
  br label %23

16:                                               ; preds = %3
  %17 = load i32, i32* @USBPCR1_REFCLKDIV_24, align 4
  store i32 %17, i32* %10, align 4
  br label %23

18:                                               ; preds = %3
  %19 = load i32, i32* @USBPCR1_REFCLKDIV_48, align 4
  store i32 %19, i32* %10, align 4
  br label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %52

23:                                               ; preds = %18, %16, %14, %12
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cgu, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cgu, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CGU_REG_USBPCR1, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @readl(i64 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @USBPCR1_REFCLKDIV_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cgu, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CGU_REG_USBPCR1, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 %41, i64 %46)
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cgu, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %23, %20
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
