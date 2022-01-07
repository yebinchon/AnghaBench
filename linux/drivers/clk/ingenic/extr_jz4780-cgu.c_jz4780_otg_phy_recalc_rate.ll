; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_jz4780-cgu.c_jz4780_otg_phy_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_jz4780-cgu.c_jz4780_otg_phy_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.clk_hw = type { i32 }

@cgu = common dso_local global %struct.TYPE_2__* null, align 8
@CGU_REG_USBPCR1 = common dso_local global i64 0, align 8
@USBPCR1_REFCLKDIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @jz4780_otg_phy_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @jz4780_otg_phy_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cgu, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CGU_REG_USBPCR1, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @USBPCR1_REFCLKDIV_MASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %22 [
    i32 131, label %18
    i32 129, label %19
    i32 128, label %20
    i32 130, label %21
  ]

18:                                               ; preds = %2
  store i64 12000000, i64* %3, align 8
  br label %25

19:                                               ; preds = %2
  store i64 24000000, i64* %3, align 8
  br label %25

20:                                               ; preds = %2
  store i64 48000000, i64* %3, align 8
  br label %25

21:                                               ; preds = %2
  store i64 19200000, i64* %3, align 8
  br label %25

22:                                               ; preds = %2
  %23 = call i32 (...) @BUG()
  %24 = load i64, i64* %5, align 8
  store i64 %24, i64* %3, align 8
  br label %25

25:                                               ; preds = %22, %21, %20, %19, %18
  %26 = load i64, i64* %3, align 8
  ret i64 %26
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
