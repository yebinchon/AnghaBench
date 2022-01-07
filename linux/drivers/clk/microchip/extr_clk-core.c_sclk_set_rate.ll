; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/microchip/extr_clk-core.c_sclk_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/microchip/extr_clk-core.c_sclk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.pic32_sys_clk = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@SLEW_SYSDIV = common dso_local global i32 0, align 4
@SLEW_SYSDIV_SHIFT = common dso_local global i32 0, align 4
@SLEW_BUSY = common dso_local global i32 0, align 4
@LOCK_TIMEOUT_US = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @sclk_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sclk_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pic32_sys_clk*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %13 = call %struct.pic32_sys_clk* @clkhw_to_sys_clk(%struct.clk_hw* %12)
  store %struct.pic32_sys_clk* %13, %struct.pic32_sys_clk** %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = udiv i64 %14, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %10, align 4
  %18 = load %struct.pic32_sys_clk*, %struct.pic32_sys_clk** %7, align 8
  %19 = getelementptr inbounds %struct.pic32_sys_clk, %struct.pic32_sys_clk* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.pic32_sys_clk*, %struct.pic32_sys_clk** %7, align 8
  %25 = getelementptr inbounds %struct.pic32_sys_clk, %struct.pic32_sys_clk* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @readl(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* @SLEW_SYSDIV, align 4
  %29 = load i32, i32* @SLEW_SYSDIV_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = sub nsw i32 %34, 1
  %36 = load i32, i32* @SLEW_SYSDIV_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = call i32 (...) @pic32_syskey_unlock()
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.pic32_sys_clk*, %struct.pic32_sys_clk** %7, align 8
  %43 = getelementptr inbounds %struct.pic32_sys_clk, %struct.pic32_sys_clk* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @writel(i32 %41, i32 %44)
  %46 = load %struct.pic32_sys_clk*, %struct.pic32_sys_clk** %7, align 8
  %47 = getelementptr inbounds %struct.pic32_sys_clk, %struct.pic32_sys_clk* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @SLEW_BUSY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* @LOCK_TIMEOUT_US, align 4
  %57 = call i32 @readl_poll_timeout_atomic(i32 %48, i32 %49, i32 %55, i32 1, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load %struct.pic32_sys_clk*, %struct.pic32_sys_clk** %7, align 8
  %59 = getelementptr inbounds %struct.pic32_sys_clk, %struct.pic32_sys_clk* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load i32, i32* %11, align 4
  ret i32 %64
}

declare dso_local %struct.pic32_sys_clk* @clkhw_to_sys_clk(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @pic32_syskey_unlock(...) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl_poll_timeout_atomic(i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
