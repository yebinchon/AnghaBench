; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-mvebu/extr_pmsu.c_mvebu_v7_pmsu_idle_exit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-mvebu/extr_pmsu.c_mvebu_v7_pmsu_idle_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pmsu_mp_base = common dso_local global i32* null, align 8
@PMSU_CONTROL_AND_CONFIG_L2_PWDDN = common dso_local global i32 0, align 4
@PMSU_STATUS_AND_MASK_IRQ_WAKEUP = common dso_local global i32 0, align 4
@PMSU_STATUS_AND_MASK_FIQ_WAKEUP = common dso_local global i32 0, align 4
@PMSU_STATUS_AND_MASK_CPU_IDLE_WAIT = common dso_local global i32 0, align 4
@PMSU_STATUS_AND_MASK_SNP_Q_EMPTY_WAIT = common dso_local global i32 0, align 4
@PMSU_STATUS_AND_MASK_IRQ_MASK = common dso_local global i32 0, align 4
@PMSU_STATUS_AND_MASK_FIQ_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mvebu_v7_pmsu_idle_exit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @smp_processor_id()
  %4 = call i32 @cpu_logical_map(i32 %3)
  store i32 %4, i32* %1, align 4
  %5 = load i32*, i32** @pmsu_mp_base, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %59

8:                                                ; preds = %0
  %9 = load i32*, i32** @pmsu_mp_base, align 8
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @PMSU_CONTROL_AND_CONFIG(i32 %10)
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %9, i64 %12
  %14 = call i32 @readl(i32* %13)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* @PMSU_CONTROL_AND_CONFIG_L2_PWDDN, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %2, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i32*, i32** @pmsu_mp_base, align 8
  %21 = load i32, i32* %1, align 4
  %22 = call i32 @PMSU_CONTROL_AND_CONFIG(i32 %21)
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = call i32 @writel(i32 %19, i32* %24)
  %26 = load i32*, i32** @pmsu_mp_base, align 8
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @PMSU_STATUS_AND_MASK(i32 %27)
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = call i32 @readl(i32* %30)
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* @PMSU_STATUS_AND_MASK_IRQ_WAKEUP, align 4
  %33 = load i32, i32* @PMSU_STATUS_AND_MASK_FIQ_WAKEUP, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %2, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* @PMSU_STATUS_AND_MASK_CPU_IDLE_WAIT, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %2, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %2, align 4
  %42 = load i32, i32* @PMSU_STATUS_AND_MASK_SNP_Q_EMPTY_WAIT, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %2, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %2, align 4
  %46 = load i32, i32* @PMSU_STATUS_AND_MASK_IRQ_MASK, align 4
  %47 = load i32, i32* @PMSU_STATUS_AND_MASK_FIQ_MASK, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %2, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %2, align 4
  %52 = load i32, i32* %2, align 4
  %53 = load i32*, i32** @pmsu_mp_base, align 8
  %54 = load i32, i32* %1, align 4
  %55 = call i32 @PMSU_STATUS_AND_MASK(i32 %54)
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = call i32 @writel(i32 %52, i32* %57)
  br label %59

59:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @cpu_logical_map(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @PMSU_CONTROL_AND_CONFIG(i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @PMSU_STATUS_AND_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
