; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-mvebu/extr_pmsu.c_mvebu_v7_pmsu_idle_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-mvebu/extr_pmsu.c_mvebu_v7_pmsu_idle_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pmsu_mp_base = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@PMSU_STATUS_AND_MASK_CPU_IDLE_WAIT = common dso_local global i32 0, align 4
@PMSU_STATUS_AND_MASK_IRQ_WAKEUP = common dso_local global i32 0, align 4
@PMSU_STATUS_AND_MASK_FIQ_WAKEUP = common dso_local global i32 0, align 4
@PMSU_STATUS_AND_MASK_SNP_Q_EMPTY_WAIT = common dso_local global i32 0, align 4
@PMSU_STATUS_AND_MASK_IRQ_MASK = common dso_local global i32 0, align 4
@PMSU_STATUS_AND_MASK_FIQ_MASK = common dso_local global i32 0, align 4
@PMSU_PREPARE_DEEP_IDLE = common dso_local global i64 0, align 8
@PMSU_CONTROL_AND_CONFIG_L2_PWDDN = common dso_local global i32 0, align 4
@PMSU_CONTROL_AND_CONFIG_PWDDN_REQ = common dso_local global i32 0, align 4
@PMSU_PREPARE_SNOOP_DISABLE = common dso_local global i64 0, align 8
@PMSU_CPU_POWER_DOWN_DIS_SNP_Q_SKIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @mvebu_v7_pmsu_idle_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_v7_pmsu_idle_prepare(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %6 = call i32 (...) @smp_processor_id()
  %7 = call i32 @cpu_logical_map(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32*, i32** @pmsu_mp_base, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %87

13:                                               ; preds = %1
  %14 = load i32*, i32** @pmsu_mp_base, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @PMSU_STATUS_AND_MASK(i32 %15)
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = call i32 @readl(i32* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @PMSU_STATUS_AND_MASK_CPU_IDLE_WAIT, align 4
  %21 = load i32, i32* @PMSU_STATUS_AND_MASK_IRQ_WAKEUP, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @PMSU_STATUS_AND_MASK_FIQ_WAKEUP, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @PMSU_STATUS_AND_MASK_SNP_Q_EMPTY_WAIT, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @PMSU_STATUS_AND_MASK_IRQ_MASK, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @PMSU_STATUS_AND_MASK_FIQ_MASK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32*, i32** @pmsu_mp_base, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @PMSU_STATUS_AND_MASK(i32 %35)
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = call i32 @writel(i32 %33, i32* %38)
  %40 = load i32*, i32** @pmsu_mp_base, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @PMSU_CONTROL_AND_CONFIG(i32 %41)
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = call i32 @readl(i32* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i64, i64* %3, align 8
  %47 = load i64, i64* @PMSU_PREPARE_DEEP_IDLE, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %13
  %51 = load i32, i32* @PMSU_CONTROL_AND_CONFIG_L2_PWDDN, align 4
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %50, %13
  %55 = load i32, i32* @PMSU_CONTROL_AND_CONFIG_PWDDN_REQ, align 4
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32*, i32** @pmsu_mp_base, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @PMSU_CONTROL_AND_CONFIG(i32 %60)
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = call i32 @writel(i32 %58, i32* %63)
  %65 = load i64, i64* %3, align 8
  %66 = load i64, i64* @PMSU_PREPARE_SNOOP_DISABLE, align 8
  %67 = and i64 %65, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %54
  %70 = load i32*, i32** @pmsu_mp_base, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @PMSU_CPU_POWER_DOWN_CONTROL(i32 %71)
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = call i32 @readl(i32* %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* @PMSU_CPU_POWER_DOWN_DIS_SNP_Q_SKIP, align 4
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32*, i32** @pmsu_mp_base, align 8
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @PMSU_CPU_POWER_DOWN_CONTROL(i32 %81)
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = call i32 @writel(i32 %79, i32* %84)
  br label %86

86:                                               ; preds = %69, %54
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %86, %10
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @cpu_logical_map(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @PMSU_STATUS_AND_MASK(i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @PMSU_CONTROL_AND_CONFIG(i32) #1

declare dso_local i32 @PMSU_CPU_POWER_DOWN_CONTROL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
