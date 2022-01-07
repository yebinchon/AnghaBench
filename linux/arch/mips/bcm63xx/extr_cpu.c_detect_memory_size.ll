; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/bcm63xx/extr_cpu.c_detect_memory_size.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/bcm63xx/extr_cpu.c_detect_memory_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DDR_CSEND_REG = common dso_local global i32 0, align 4
@SDRAM_MBASE_REG = common dso_local global i32 0, align 4
@SDRAM_CFG_REG = common dso_local global i32 0, align 4
@SDRAM_CFG_ROW_MASK = common dso_local global i32 0, align 4
@SDRAM_CFG_ROW_SHIFT = common dso_local global i32 0, align 4
@SDRAM_CFG_COL_MASK = common dso_local global i32 0, align 4
@SDRAM_CFG_COL_SHIFT = common dso_local global i32 0, align 4
@SDRAM_CFG_32B_MASK = common dso_local global i32 0, align 4
@SDRAM_CFG_BANK_MASK = common dso_local global i32 0, align 4
@MEMC_CFG_REG = common dso_local global i32 0, align 4
@MEMC_CFG_ROW_MASK = common dso_local global i32 0, align 4
@MEMC_CFG_ROW_SHIFT = common dso_local global i32 0, align 4
@MEMC_CFG_COL_MASK = common dso_local global i32 0, align 4
@MEMC_CFG_COL_SHIFT = common dso_local global i32 0, align 4
@MEMC_CFG_32B_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @detect_memory_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect_memory_size() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = call i64 (...) @BCMCPU_IS_6328()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = call i64 (...) @BCMCPU_IS_6362()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9, %0
  %13 = load i32, i32* @DDR_CSEND_REG, align 4
  %14 = call i32 @bcm_ddr_readl(i32 %13)
  %15 = shl i32 %14, 24
  store i32 %15, i32* %1, align 4
  br label %99

16:                                               ; preds = %9
  %17 = call i64 (...) @BCMCPU_IS_6345()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i32, i32* @SDRAM_MBASE_REG, align 4
  %21 = call i32 @bcm_sdram_readl(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = mul nsw i32 %22, 8
  %24 = mul nsw i32 %23, 1024
  %25 = mul nsw i32 %24, 1024
  store i32 %25, i32* %1, align 4
  br label %99

26:                                               ; preds = %16
  %27 = call i64 (...) @BCMCPU_IS_6338()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = call i64 (...) @BCMCPU_IS_6348()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %29, %26
  %33 = load i32, i32* @SDRAM_CFG_REG, align 4
  %34 = call i32 @bcm_sdram_readl(i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @SDRAM_CFG_ROW_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @SDRAM_CFG_ROW_SHIFT, align 4
  %39 = ashr i32 %37, %38
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @SDRAM_CFG_COL_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @SDRAM_CFG_COL_SHIFT, align 4
  %44 = ashr i32 %42, %43
  store i32 %44, i32* %2, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @SDRAM_CFG_32B_MASK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 1, i32 0
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @SDRAM_CFG_BANK_MASK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 2, i32 1
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %32, %29
  %58 = call i64 (...) @BCMCPU_IS_3368()
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = call i64 (...) @BCMCPU_IS_6358()
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = call i64 (...) @BCMCPU_IS_6368()
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %63, %60, %57
  %67 = load i32, i32* @MEMC_CFG_REG, align 4
  %68 = call i32 @bcm_memc_readl(i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @MEMC_CFG_ROW_MASK, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @MEMC_CFG_ROW_SHIFT, align 4
  %73 = ashr i32 %71, %72
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @MEMC_CFG_COL_MASK, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* @MEMC_CFG_COL_SHIFT, align 4
  %78 = ashr i32 %76, %77
  store i32 %78, i32* %2, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @MEMC_CFG_32B_MASK, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 0, i32 1
  store i32 %84, i32* %4, align 4
  store i32 2, i32* %5, align 4
  br label %85

85:                                               ; preds = %66, %63
  %86 = load i32, i32* %3, align 4
  %87 = add i32 %86, 11
  store i32 %87, i32* %3, align 4
  %88 = load i32, i32* %2, align 4
  %89 = add i32 %88, 8
  store i32 %89, i32* %2, align 4
  %90 = load i32, i32* %2, align 4
  %91 = load i32, i32* %3, align 4
  %92 = add i32 %90, %91
  %93 = load i32, i32* %4, align 4
  %94 = add i32 %93, 1
  %95 = add i32 %92, %94
  %96 = load i32, i32* %5, align 4
  %97 = add i32 %95, %96
  %98 = shl i32 1, %97
  store i32 %98, i32* %1, align 4
  br label %99

99:                                               ; preds = %85, %19, %12
  %100 = load i32, i32* %1, align 4
  ret i32 %100
}

declare dso_local i64 @BCMCPU_IS_6328(...) #1

declare dso_local i64 @BCMCPU_IS_6362(...) #1

declare dso_local i32 @bcm_ddr_readl(i32) #1

declare dso_local i64 @BCMCPU_IS_6345(...) #1

declare dso_local i32 @bcm_sdram_readl(i32) #1

declare dso_local i64 @BCMCPU_IS_6338(...) #1

declare dso_local i64 @BCMCPU_IS_6348(...) #1

declare dso_local i64 @BCMCPU_IS_3368(...) #1

declare dso_local i64 @BCMCPU_IS_6358(...) #1

declare dso_local i64 @BCMCPU_IS_6368(...) #1

declare dso_local i32 @bcm_memc_readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
