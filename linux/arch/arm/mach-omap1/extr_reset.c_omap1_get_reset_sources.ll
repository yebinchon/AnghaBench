; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_reset.c_omap1_get_reset_sources.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_reset.c_omap1_get_reset_sources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARM_SYSST = common dso_local global i32 0, align 4
@ARM_SYSST_POR_SHIFT = common dso_local global i32 0, align 4
@OMAP_GLOBAL_COLD_RST_SRC_ID_SHIFT = common dso_local global i32 0, align 4
@ARM_SYSST_EXT_RST_SHIFT = common dso_local global i32 0, align 4
@OMAP_EXTWARM_RST_SRC_ID_SHIFT = common dso_local global i32 0, align 4
@ARM_SYSST_ARM_WDRST_SHIFT = common dso_local global i32 0, align 4
@OMAP_MPU_WD_RST_SRC_ID_SHIFT = common dso_local global i32 0, align 4
@ARM_SYSST_GLOB_SWRST_SHIFT = common dso_local global i32 0, align 4
@OMAP_GLOBAL_WARM_RST_SRC_ID_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap1_get_reset_sources() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = load i32, i32* @ARM_SYSST, align 4
  %4 = call i32 @OMAP1_IO_ADDRESS(i32 %3)
  %5 = call i32 @__raw_readw(i32 %4)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @ARM_SYSST_POR_SHIFT, align 4
  %8 = shl i32 1, %7
  %9 = and i32 %6, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %0
  %12 = load i32, i32* @OMAP_GLOBAL_COLD_RST_SRC_ID_SHIFT, align 4
  %13 = shl i32 1, %12
  %14 = load i32, i32* %1, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %1, align 4
  br label %16

16:                                               ; preds = %11, %0
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @ARM_SYSST_EXT_RST_SHIFT, align 4
  %19 = shl i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load i32, i32* @OMAP_EXTWARM_RST_SRC_ID_SHIFT, align 4
  %24 = shl i32 1, %23
  %25 = load i32, i32* %1, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %1, align 4
  br label %27

27:                                               ; preds = %22, %16
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @ARM_SYSST_ARM_WDRST_SHIFT, align 4
  %30 = shl i32 1, %29
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i32, i32* @OMAP_MPU_WD_RST_SRC_ID_SHIFT, align 4
  %35 = shl i32 1, %34
  %36 = load i32, i32* %1, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %1, align 4
  br label %38

38:                                               ; preds = %33, %27
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @ARM_SYSST_GLOB_SWRST_SHIFT, align 4
  %41 = shl i32 1, %40
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load i32, i32* @OMAP_GLOBAL_WARM_RST_SRC_ID_SHIFT, align 4
  %46 = shl i32 1, %45
  %47 = load i32, i32* %1, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %1, align 4
  br label %49

49:                                               ; preds = %44, %38
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

declare dso_local i32 @__raw_readw(i32) #1

declare dso_local i32 @OMAP1_IO_ADDRESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
