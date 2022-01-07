; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_pm.c_omap1_pm_idle.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_pm.c_omap1_pm_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arm_idlect1_mask = external dso_local global i32, align 4
@enable_dyn_sleep = common dso_local global i32 0, align 4
@ARM_IDLECT1 = common dso_local global i32 0, align 4
@OMAP1510_BIG_SLEEP_REQUEST = common dso_local global i32 0, align 4
@OMAP1610_IDLECT1_SLEEP_VAL = common dso_local global i32 0, align 4
@ARM_IDLECT2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap1_pm_idle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @arm_idlect1_mask, align 4
  store i32 %3, i32* %1, align 4
  %4 = call i32 (...) @local_fiq_disable()
  %5 = call i64 (...) @omap_dma_running()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* %1, align 4
  %9 = and i32 %8, -65
  store i32 %9, i32* %1, align 4
  br label %10

10:                                               ; preds = %7, %0
  %11 = load i32, i32* %1, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* @enable_dyn_sleep, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %37, label %16

16:                                               ; preds = %13, %10
  %17 = load i32, i32* @ARM_IDLECT1, align 4
  %18 = call i32 @omap_readl(i32 %17)
  store i32 %18, i32* %2, align 4
  %19 = call i64 (...) @cpu_is_omap15xx()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @OMAP1510_BIG_SLEEP_REQUEST, align 4
  %23 = load i32, i32* %1, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %1, align 4
  br label %29

25:                                               ; preds = %16
  %26 = load i32, i32* @OMAP1610_IDLECT1_SLEEP_VAL, align 4
  %27 = load i32, i32* %1, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %1, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* @ARM_IDLECT1, align 4
  %32 = call i32 @omap_writel(i32 %30, i32 %31)
  call void asm sideeffect "mcr\09p15, 0, r0, c7, c0, 4", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @ARM_IDLECT1, align 4
  %35 = call i32 @omap_writel(i32 %33, i32 %34)
  %36 = call i32 (...) @local_fiq_enable()
  br label %44

37:                                               ; preds = %13
  %38 = load i32, i32* @ARM_IDLECT1, align 4
  %39 = call i32 @omap_readl(i32 %38)
  %40 = load i32, i32* @ARM_IDLECT2, align 4
  %41 = call i32 @omap_readl(i32 %40)
  %42 = call i32 @omap_sram_suspend(i32 %39, i32 %41)
  %43 = call i32 (...) @local_fiq_enable()
  br label %44

44:                                               ; preds = %37, %29
  ret void
}

declare dso_local i32 @local_fiq_disable(...) #1

declare dso_local i64 @omap_dma_running(...) #1

declare dso_local i32 @omap_readl(i32) #1

declare dso_local i64 @cpu_is_omap15xx(...) #1

declare dso_local i32 @omap_writel(i32, i32) #1

declare dso_local i32 @local_fiq_enable(...) #1

declare dso_local i32 @omap_sram_suspend(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1014}
