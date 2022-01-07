; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-mvebu/extr_pm.c_mvebu_pm_powerdown.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-mvebu/extr_pm.c_mvebu_pm_powerdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sdram_ctrl = common dso_local global i64 0, align 8
@SDRAM_DLB_EVICTION_OFFS = common dso_local global i64 0, align 8
@SDRAM_DLB_EVICTION_THRESHOLD_MASK = common dso_local global i32 0, align 4
@SDRAM_CONFIG_OFFS = common dso_local global i64 0, align 8
@SDRAM_CONFIG_SR_MODE_BIT = common dso_local global i32 0, align 4
@SDRAM_OPERATION_OFFS = common dso_local global i64 0, align 8
@SDRAM_OPERATION_SELF_REFRESH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @mvebu_pm_powerdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_pm_powerdown(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = call i32 (...) @flush_cache_all()
  %6 = call i32 (...) @outer_flush_all()
  %7 = call i32 (...) @dsb()
  %8 = load i64, i64* @sdram_ctrl, align 8
  %9 = load i64, i64* @SDRAM_DLB_EVICTION_OFFS, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @SDRAM_DLB_EVICTION_THRESHOLD_MASK, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i64, i64* @sdram_ctrl, align 8
  %18 = load i64, i64* @SDRAM_DLB_EVICTION_OFFS, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 %16, i64 %19)
  %21 = call i32 @udelay(i32 7)
  %22 = load i64, i64* @sdram_ctrl, align 8
  %23 = load i64, i64* @SDRAM_CONFIG_OFFS, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @SDRAM_CONFIG_SR_MODE_BIT, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i64, i64* @sdram_ctrl, align 8
  %32 = load i64, i64* @SDRAM_CONFIG_OFFS, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %30, i64 %33)
  %35 = load i64, i64* @sdram_ctrl, align 8
  %36 = load i64, i64* @SDRAM_OPERATION_OFFS, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @readl(i64 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, -32
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* @SDRAM_OPERATION_SELF_REFRESH, align 4
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load i64, i64* @sdram_ctrl, align 8
  %45 = load i64, i64* @SDRAM_OPERATION_OFFS, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @mvebu_board_pm_enter(i64 %46, i32 %47)
  ret i32 0
}

declare dso_local i32 @flush_cache_all(...) #1

declare dso_local i32 @outer_flush_all(...) #1

declare dso_local i32 @dsb(...) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mvebu_board_pm_enter(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
