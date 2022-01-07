; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/83xx/extr_suspend.c_mpc83xx_change_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/83xx/extr_suspend.c_mpc83xx_change_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@pmc_regs = common dso_local global %struct.TYPE_2__* null, align 8
@is_pci_agent = common dso_local global i64 0, align 8
@PMCCR1_NEXT_STATE = common dso_local global i32 0, align 4
@PMCCR1_NEXT_STATE_SHIFT = common dso_local global i32 0, align 4
@pci_pm_state = common dso_local global i32 0, align 4
@PMCCR1_CURR_STATE = common dso_local global i32 0, align 4
@agent_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mpc83xx_change_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc83xx_change_state() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmc_regs, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = call i32 @in_be32(i32* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i64, i64* @is_pci_agent, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %0
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @PMCCR1_NEXT_STATE, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @PMCCR1_NEXT_STATE_SHIFT, align 4
  %14 = ashr i32 %12, %13
  store i32 %14, i32* @pci_pm_state, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @PMCCR1_CURR_STATE, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @pci_pm_state, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %9
  %22 = load i32, i32* @PMCCR1_CURR_STATE, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @pci_pm_state, align 4
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmc_regs, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @out_be32(i32* %30, i32 %31)
  %33 = call i32 @wake_up(i32* @agent_wq)
  store i32 1, i32* %1, align 4
  br label %36

34:                                               ; preds = %9
  br label %35

35:                                               ; preds = %34, %0
  store i32 0, i32* %1, align 4
  br label %36

36:                                               ; preds = %35, %21
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare dso_local i32 @in_be32(i32*) #1

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
