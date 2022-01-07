; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/bcm63xx/extr_cpu.c_detect_cpu_clock.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/bcm63xx/extr_cpu.c_detect_cpu_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MISC_STRAPBUS_6328_REG = common dso_local global i32 0, align 4
@STRAPBUS_6328_FCVO_MASK = common dso_local global i32 0, align 4
@STRAPBUS_6328_FCVO_SHIFT = common dso_local global i32 0, align 4
@PERF_MIPSPLLCTL_REG = common dso_local global i32 0, align 4
@MIPSPLLCTL_N1_MASK = common dso_local global i32 0, align 4
@MIPSPLLCTL_N1_SHIFT = common dso_local global i32 0, align 4
@MIPSPLLCTL_N2_MASK = common dso_local global i32 0, align 4
@MIPSPLLCTL_N2_SHIFT = common dso_local global i32 0, align 4
@MIPSPLLCTL_M1CPU_MASK = common dso_local global i32 0, align 4
@MIPSPLLCTL_M1CPU_SHIFT = common dso_local global i32 0, align 4
@DDR_DMIPSPLLCFG_REG = common dso_local global i32 0, align 4
@DMIPSPLLCFG_N1_MASK = common dso_local global i32 0, align 4
@DMIPSPLLCFG_N1_SHIFT = common dso_local global i32 0, align 4
@DMIPSPLLCFG_N2_MASK = common dso_local global i32 0, align 4
@DMIPSPLLCFG_N2_SHIFT = common dso_local global i32 0, align 4
@DMIPSPLLCFG_M1_MASK = common dso_local global i32 0, align 4
@DMIPSPLLCFG_M1_SHIFT = common dso_local global i32 0, align 4
@MISC_STRAPBUS_6362_REG = common dso_local global i32 0, align 4
@STRAPBUS_6362_FCVO_MASK = common dso_local global i32 0, align 4
@STRAPBUS_6362_FCVO_SHIFT = common dso_local global i32 0, align 4
@DDR_DMIPSPLLCFG_6368_REG = common dso_local global i32 0, align 4
@DMIPSPLLCFG_6368_P1_MASK = common dso_local global i32 0, align 4
@DMIPSPLLCFG_6368_P1_SHIFT = common dso_local global i32 0, align 4
@DMIPSPLLCFG_6368_P2_MASK = common dso_local global i32 0, align 4
@DMIPSPLLCFG_6368_P2_SHIFT = common dso_local global i32 0, align 4
@DMIPSPLLCFG_6368_NDIV_MASK = common dso_local global i32 0, align 4
@DMIPSPLLCFG_6368_NDIV_SHIFT = common dso_local global i32 0, align 4
@DDR_DMIPSPLLDIV_6368_REG = common dso_local global i32 0, align 4
@DMIPSPLLDIV_6368_MDIV_MASK = common dso_local global i32 0, align 4
@DMIPSPLLDIV_6368_MDIV_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to detect clock for CPU with id=%04X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @detect_cpu_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect_cpu_clock() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = call i32 (...) @bcm63xx_get_cpu_id()
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  switch i32 %21, label %143 [
    i32 135, label %22
    i32 134, label %23
    i32 133, label %38
    i32 132, label %39
    i32 131, label %40
    i32 130, label %70
    i32 129, label %94
    i32 128, label %110
  ]

22:                                               ; preds = %0
  store i32 300000000, i32* %1, align 4
  br label %146

23:                                               ; preds = %0
  %24 = load i32, i32* @MISC_STRAPBUS_6328_REG, align 4
  %25 = call i32 @bcm_misc_readl(i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @STRAPBUS_6328_FCVO_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @STRAPBUS_6328_FCVO_SHIFT, align 4
  %30 = lshr i32 %28, %29
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  switch i32 %31, label %37 [
    i32 18, label %32
    i32 20, label %32
    i32 25, label %32
    i32 28, label %33
    i32 19, label %34
    i32 21, label %34
    i32 26, label %35
    i32 22, label %36
  ]

32:                                               ; preds = %23, %23, %23
  store i32 160000000, i32* %1, align 4
  br label %146

33:                                               ; preds = %23
  store i32 192000000, i32* %1, align 4
  br label %146

34:                                               ; preds = %23, %23
  store i32 200000000, i32* %1, align 4
  br label %146

35:                                               ; preds = %23
  store i32 384000000, i32* %1, align 4
  br label %146

36:                                               ; preds = %23
  store i32 400000000, i32* %1, align 4
  br label %146

37:                                               ; preds = %23
  store i32 320000000, i32* %1, align 4
  br label %146

38:                                               ; preds = %0
  store i32 240000000, i32* %1, align 4
  br label %146

39:                                               ; preds = %0
  store i32 140000000, i32* %1, align 4
  br label %146

40:                                               ; preds = %0
  %41 = load i32, i32* @PERF_MIPSPLLCTL_REG, align 4
  %42 = call i32 @bcm_perf_readl(i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @MIPSPLLCTL_N1_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @MIPSPLLCTL_N1_SHIFT, align 4
  %47 = lshr i32 %45, %46
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @MIPSPLLCTL_N2_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @MIPSPLLCTL_N2_SHIFT, align 4
  %52 = lshr i32 %50, %51
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @MIPSPLLCTL_M1CPU_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @MIPSPLLCTL_M1CPU_SHIFT, align 4
  %57 = lshr i32 %55, %56
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = add i32 %60, 2
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %6, align 4
  %65 = mul i32 16000000, %64
  %66 = load i32, i32* %7, align 4
  %67 = mul i32 %65, %66
  %68 = load i32, i32* %8, align 4
  %69 = udiv i32 %67, %68
  store i32 %69, i32* %1, align 4
  br label %146

70:                                               ; preds = %0
  %71 = load i32, i32* @DDR_DMIPSPLLCFG_REG, align 4
  %72 = call i32 @bcm_ddr_readl(i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @DMIPSPLLCFG_N1_MASK, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* @DMIPSPLLCFG_N1_SHIFT, align 4
  %77 = lshr i32 %75, %76
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @DMIPSPLLCFG_N2_MASK, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* @DMIPSPLLCFG_N2_SHIFT, align 4
  %82 = lshr i32 %80, %81
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @DMIPSPLLCFG_M1_MASK, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* @DMIPSPLLCFG_M1_SHIFT, align 4
  %87 = lshr i32 %85, %86
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %10, align 4
  %89 = mul i32 16000000, %88
  %90 = load i32, i32* %11, align 4
  %91 = mul i32 %89, %90
  %92 = load i32, i32* %12, align 4
  %93 = udiv i32 %91, %92
  store i32 %93, i32* %1, align 4
  br label %146

94:                                               ; preds = %0
  %95 = load i32, i32* @MISC_STRAPBUS_6362_REG, align 4
  %96 = call i32 @bcm_misc_readl(i32 %95)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* @STRAPBUS_6362_FCVO_MASK, align 4
  %99 = and i32 %97, %98
  %100 = load i32, i32* @STRAPBUS_6362_FCVO_SHIFT, align 4
  %101 = lshr i32 %99, %100
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  switch i32 %102, label %109 [
    i32 3, label %103
    i32 11, label %103
    i32 19, label %103
    i32 27, label %103
    i32 4, label %104
    i32 12, label %104
    i32 20, label %104
    i32 28, label %104
    i32 5, label %105
    i32 14, label %105
    i32 22, label %105
    i32 30, label %105
    i32 31, label %105
    i32 6, label %106
    i32 7, label %107
    i32 23, label %107
    i32 21, label %108
    i32 29, label %108
  ]

103:                                              ; preds = %94, %94, %94, %94
  store i32 240000000, i32* %1, align 4
  br label %146

104:                                              ; preds = %94, %94, %94, %94
  store i32 160000000, i32* %1, align 4
  br label %146

105:                                              ; preds = %94, %94, %94, %94, %94
  store i32 400000000, i32* %1, align 4
  br label %146

106:                                              ; preds = %94
  store i32 440000000, i32* %1, align 4
  br label %146

107:                                              ; preds = %94, %94
  store i32 384000000, i32* %1, align 4
  br label %146

108:                                              ; preds = %94, %94
  store i32 200000000, i32* %1, align 4
  br label %146

109:                                              ; preds = %94
  store i32 320000000, i32* %1, align 4
  br label %146

110:                                              ; preds = %0
  %111 = load i32, i32* @DDR_DMIPSPLLCFG_6368_REG, align 4
  %112 = call i32 @bcm_ddr_readl(i32 %111)
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* @DMIPSPLLCFG_6368_P1_MASK, align 4
  %115 = and i32 %113, %114
  %116 = load i32, i32* @DMIPSPLLCFG_6368_P1_SHIFT, align 4
  %117 = lshr i32 %115, %116
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* @DMIPSPLLCFG_6368_P2_MASK, align 4
  %120 = and i32 %118, %119
  %121 = load i32, i32* @DMIPSPLLCFG_6368_P2_SHIFT, align 4
  %122 = lshr i32 %120, %121
  store i32 %122, i32* %17, align 4
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* @DMIPSPLLCFG_6368_NDIV_MASK, align 4
  %125 = and i32 %123, %124
  %126 = load i32, i32* @DMIPSPLLCFG_6368_NDIV_SHIFT, align 4
  %127 = lshr i32 %125, %126
  store i32 %127, i32* %18, align 4
  %128 = load i32, i32* @DDR_DMIPSPLLDIV_6368_REG, align 4
  %129 = call i32 @bcm_ddr_readl(i32 %128)
  store i32 %129, i32* %15, align 4
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* @DMIPSPLLDIV_6368_MDIV_MASK, align 4
  %132 = and i32 %130, %131
  %133 = load i32, i32* @DMIPSPLLDIV_6368_MDIV_SHIFT, align 4
  %134 = lshr i32 %132, %133
  store i32 %134, i32* %19, align 4
  %135 = load i32, i32* %16, align 4
  %136 = udiv i32 64000000, %135
  %137 = load i32, i32* %17, align 4
  %138 = mul i32 %136, %137
  %139 = load i32, i32* %18, align 4
  %140 = mul i32 %138, %139
  %141 = load i32, i32* %19, align 4
  %142 = udiv i32 %140, %141
  store i32 %142, i32* %1, align 4
  br label %146

143:                                              ; preds = %0
  %144 = load i32, i32* %2, align 4
  %145 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %144)
  br label %146

146:                                              ; preds = %22, %32, %33, %34, %35, %36, %37, %38, %39, %40, %70, %103, %104, %105, %106, %107, %108, %109, %110, %143
  %147 = load i32, i32* %1, align 4
  ret i32 %147
}

declare dso_local i32 @bcm63xx_get_cpu_id(...) #1

declare dso_local i32 @bcm_misc_readl(i32) #1

declare dso_local i32 @bcm_perf_readl(i32) #1

declare dso_local i32 @bcm_ddr_readl(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
