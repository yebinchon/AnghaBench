; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4a/extr_perf_event.c_sh4a_pmu_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4a/extr_perf_event.c_sh4a_pmu_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_perf_event = type { i32 }

@PPC_PMCAT = common dso_local global i32 0, align 4
@PMCAT_EMU_CLR_MASK = common dso_local global i32 0, align 4
@PMCAT_CLR1 = common dso_local global i32 0, align 4
@PMCAT_CLR0 = common dso_local global i32 0, align 4
@CCBR_CMDS = common dso_local global i32 0, align 4
@CCBR_PPCE = common dso_local global i32 0, align 4
@CCBR_DUC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hw_perf_event*, i32)* @sh4a_pmu_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh4a_pmu_enable(%struct.hw_perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.hw_perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hw_perf_event* %0, %struct.hw_perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @PPC_PMCAT, align 4
  %7 = call i32 @__raw_readl(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @PMCAT_EMU_CLR_MASK, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @PMCAT_CLR1, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @PMCAT_CLR0, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @PPC_PMCAT, align 4
  %24 = call i32 @__raw_writel(i32 %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @PPC_CCBR(i32 %25)
  %27 = call i32 @__raw_readl(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %29 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 6
  %32 = load i32, i32* @CCBR_CMDS, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @CCBR_PPCE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @PPC_CCBR(i32 %39)
  %41 = call i32 @__raw_writel(i32 %38, i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @PPC_CCBR(i32 %42)
  %44 = call i32 @__raw_readl(i32 %43)
  %45 = load i32, i32* @CCBR_DUC, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @PPC_CCBR(i32 %47)
  %49 = call i32 @__raw_writel(i32 %46, i32 %48)
  ret void
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @PPC_CCBR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
