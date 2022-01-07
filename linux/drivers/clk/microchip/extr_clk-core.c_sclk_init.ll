; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/microchip/extr_clk-core.c_sclk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/microchip/extr_clk-core.c_sclk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.pic32_sys_clk = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@pic32_sclk_hw = common dso_local global %struct.clk_hw* null, align 8
@SLEW_DIV = common dso_local global i32 0, align 4
@SLEW_DIV_SHIFT = common dso_local global i32 0, align 4
@SLEW_DOWNEN = common dso_local global i32 0, align 4
@SLEW_UPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @sclk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sclk_init(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.pic32_sys_clk*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.pic32_sys_clk* @clkhw_to_sys_clk(%struct.clk_hw* %6)
  store %struct.pic32_sys_clk* %7, %struct.pic32_sys_clk** %3, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  store %struct.clk_hw* %8, %struct.clk_hw** @pic32_sclk_hw, align 8
  %9 = load %struct.pic32_sys_clk*, %struct.pic32_sys_clk** %3, align 8
  %10 = getelementptr inbounds %struct.pic32_sys_clk, %struct.pic32_sys_clk* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %53

13:                                               ; preds = %1
  %14 = load %struct.pic32_sys_clk*, %struct.pic32_sys_clk** %3, align 8
  %15 = getelementptr inbounds %struct.pic32_sys_clk, %struct.pic32_sys_clk* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.pic32_sys_clk*, %struct.pic32_sys_clk** %3, align 8
  %21 = getelementptr inbounds %struct.pic32_sys_clk, %struct.pic32_sys_clk* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @readl(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @SLEW_DIV, align 4
  %25 = load i32, i32* @SLEW_DIV_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load %struct.pic32_sys_clk*, %struct.pic32_sys_clk** %3, align 8
  %31 = getelementptr inbounds %struct.pic32_sys_clk, %struct.pic32_sys_clk* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SLEW_DIV_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @SLEW_DOWNEN, align 4
  %38 = load i32, i32* @SLEW_UPEN, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.pic32_sys_clk*, %struct.pic32_sys_clk** %3, align 8
  %44 = getelementptr inbounds %struct.pic32_sys_clk, %struct.pic32_sys_clk* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @writel(i32 %42, i32 %45)
  %47 = load %struct.pic32_sys_clk*, %struct.pic32_sys_clk** %3, align 8
  %48 = getelementptr inbounds %struct.pic32_sys_clk, %struct.pic32_sys_clk* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  br label %53

53:                                               ; preds = %13, %1
  ret void
}

declare dso_local %struct.pic32_sys_clk* @clkhw_to_sys_clk(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
