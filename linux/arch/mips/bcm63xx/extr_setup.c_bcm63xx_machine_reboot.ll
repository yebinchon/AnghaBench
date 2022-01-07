; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/bcm63xx/extr_setup.c_bcm63xx_machine_reboot.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/bcm63xx/extr_setup.c_bcm63xx_machine_reboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PERF_EXTIRQ_CFG_REG_3368 = common dso_local global i32 0, align 4
@PERF_EXTIRQ_CFG_REG_6328 = common dso_local global i32 0, align 4
@PERF_EXTIRQ_CFG_REG_6338 = common dso_local global i32 0, align 4
@PERF_EXTIRQ_CFG_REG_6345 = common dso_local global i32 0, align 4
@PERF_EXTIRQ_CFG_REG_6348 = common dso_local global i32 0, align 4
@PERF_EXTIRQ_CFG_REG_6358 = common dso_local global i32 0, align 4
@PERF_EXTIRQ_CFG_REG_6362 = common dso_local global i32 0, align 4
@EXTIRQ_CFG_MASK_ALL_6348 = common dso_local global i32 0, align 4
@EXTIRQ_CFG_CLEAR_ALL_6348 = common dso_local global i32 0, align 4
@EXTIRQ_CFG_MASK_ALL = common dso_local global i32 0, align 4
@EXTIRQ_CFG_CLEAR_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"triggering watchdog soft-reset...\0A\00", align 1
@WDT_SOFTRESET_REG = common dso_local global i32 0, align 4
@PERF_SYS_PLL_CTL_REG = common dso_local global i32 0, align 4
@SYS_PLL_SOFT_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcm63xx_machine_reboot() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x i32], align 4
  %3 = alloca i32, align 4
  %4 = bitcast [2 x i32]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false)
  %5 = call i32 (...) @bcm63xx_get_cpu_id()
  switch i32 %5, label %27 [
    i32 134, label %6
    i32 133, label %9
    i32 132, label %12
    i32 131, label %15
    i32 130, label %18
    i32 129, label %21
    i32 128, label %24
  ]

6:                                                ; preds = %0
  %7 = load i32, i32* @PERF_EXTIRQ_CFG_REG_3368, align 4
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  store i32 %7, i32* %8, align 4
  br label %27

9:                                                ; preds = %0
  %10 = load i32, i32* @PERF_EXTIRQ_CFG_REG_6328, align 4
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  store i32 %10, i32* %11, align 4
  br label %27

12:                                               ; preds = %0
  %13 = load i32, i32* @PERF_EXTIRQ_CFG_REG_6338, align 4
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  store i32 %13, i32* %14, align 4
  br label %27

15:                                               ; preds = %0
  %16 = load i32, i32* @PERF_EXTIRQ_CFG_REG_6345, align 4
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  store i32 %16, i32* %17, align 4
  br label %27

18:                                               ; preds = %0
  %19 = load i32, i32* @PERF_EXTIRQ_CFG_REG_6348, align 4
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  store i32 %19, i32* %20, align 4
  br label %27

21:                                               ; preds = %0
  %22 = load i32, i32* @PERF_EXTIRQ_CFG_REG_6358, align 4
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  store i32 %22, i32* %23, align 4
  br label %27

24:                                               ; preds = %0
  %25 = load i32, i32* @PERF_EXTIRQ_CFG_REG_6362, align 4
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %0, %24, %21, %18, %15, %12, %9, %6
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %69, %27
  %29 = load i32, i32* %3, align 4
  %30 = icmp ult i32 %29, 2
  br i1 %30, label %31, label %72

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  br label %72

38:                                               ; preds = %31
  %39 = load i32, i32* %3, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bcm_perf_readl(i32 %42)
  store i32 %43, i32* %1, align 4
  %44 = call i64 (...) @BCMCPU_IS_6348()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %38
  %47 = load i32, i32* @EXTIRQ_CFG_MASK_ALL_6348, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %1, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %1, align 4
  %51 = load i32, i32* @EXTIRQ_CFG_CLEAR_ALL_6348, align 4
  %52 = load i32, i32* %1, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %1, align 4
  br label %62

54:                                               ; preds = %38
  %55 = load i32, i32* @EXTIRQ_CFG_MASK_ALL, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %1, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %1, align 4
  %59 = load i32, i32* @EXTIRQ_CFG_CLEAR_ALL, align 4
  %60 = load i32, i32* %1, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %1, align 4
  br label %62

62:                                               ; preds = %54, %46
  %63 = load i32, i32* %1, align 4
  %64 = load i32, i32* %3, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @bcm_perf_writel(i32 %63, i32 %67)
  br label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %3, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %28

72:                                               ; preds = %37, %28
  %73 = call i64 (...) @BCMCPU_IS_6348()
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = call i32 (...) @bcm63xx_get_cpu_rev()
  %77 = icmp eq i32 %76, 161
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = call i32 (...) @bcm6348_a1_reboot()
  br label %80

80:                                               ; preds = %78, %75, %72
  %81 = call i32 @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %82 = call i64 (...) @BCMCPU_IS_6328()
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i32, i32* @WDT_SOFTRESET_REG, align 4
  %86 = call i32 @bcm_wdt_writel(i32 1, i32 %85)
  br label %96

87:                                               ; preds = %80
  %88 = load i32, i32* @PERF_SYS_PLL_CTL_REG, align 4
  %89 = call i32 @bcm_perf_readl(i32 %88)
  store i32 %89, i32* %1, align 4
  %90 = load i32, i32* @SYS_PLL_SOFT_RESET, align 4
  %91 = load i32, i32* %1, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %1, align 4
  %93 = load i32, i32* %1, align 4
  %94 = load i32, i32* @PERF_SYS_PLL_CTL_REG, align 4
  %95 = call i32 @bcm_perf_writel(i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %87, %84
  br label %97

97:                                               ; preds = %96, %97
  br label %97
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bcm63xx_get_cpu_id(...) #2

declare dso_local i32 @bcm_perf_readl(i32) #2

declare dso_local i64 @BCMCPU_IS_6348(...) #2

declare dso_local i32 @bcm_perf_writel(i32, i32) #2

declare dso_local i32 @bcm63xx_get_cpu_rev(...) #2

declare dso_local i32 @bcm6348_a1_reboot(...) #2

declare dso_local i32 @pr_info(i8*) #2

declare dso_local i64 @BCMCPU_IS_6328(...) #2

declare dso_local i32 @bcm_wdt_writel(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
