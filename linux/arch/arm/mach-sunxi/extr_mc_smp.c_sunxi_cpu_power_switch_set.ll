; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-sunxi/extr_mc_smp.c_sunxi_cpu_power_switch_set.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-sunxi/extr_mc_smp.c_sunxi_cpu_power_switch_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prcm_base = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"power clamp for cluster %u cpu %u already open\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @sunxi_cpu_power_switch_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_cpu_power_switch_set(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* @prcm_base, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @PRCM_PWR_SWITCH_REG(i32 %10, i32 %11)
  %13 = add nsw i64 %9, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %60

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  store i32 0, i32* %4, align 4
  br label %69

24:                                               ; preds = %17
  %25 = load i64, i64* @prcm_base, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @PRCM_PWR_SWITCH_REG(i32 %26, i32 %27)
  %29 = add nsw i64 %25, %28
  %30 = call i32 @writel(i32 255, i64 %29)
  %31 = call i32 @udelay(i32 10)
  %32 = load i64, i64* @prcm_base, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @PRCM_PWR_SWITCH_REG(i32 %33, i32 %34)
  %36 = add nsw i64 %32, %35
  %37 = call i32 @writel(i32 254, i64 %36)
  %38 = call i32 @udelay(i32 10)
  %39 = load i64, i64* @prcm_base, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @PRCM_PWR_SWITCH_REG(i32 %40, i32 %41)
  %43 = add nsw i64 %39, %42
  %44 = call i32 @writel(i32 248, i64 %43)
  %45 = call i32 @udelay(i32 10)
  %46 = load i64, i64* @prcm_base, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i64 @PRCM_PWR_SWITCH_REG(i32 %47, i32 %48)
  %50 = add nsw i64 %46, %49
  %51 = call i32 @writel(i32 240, i64 %50)
  %52 = call i32 @udelay(i32 10)
  %53 = load i64, i64* @prcm_base, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @PRCM_PWR_SWITCH_REG(i32 %54, i32 %55)
  %57 = add nsw i64 %53, %56
  %58 = call i32 @writel(i32 0, i64 %57)
  %59 = call i32 @udelay(i32 10)
  br label %68

60:                                               ; preds = %3
  %61 = load i64, i64* @prcm_base, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i64 @PRCM_PWR_SWITCH_REG(i32 %62, i32 %63)
  %65 = add nsw i64 %61, %64
  %66 = call i32 @writel(i32 255, i64 %65)
  %67 = call i32 @udelay(i32 10)
  br label %68

68:                                               ; preds = %60, %24
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %20
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @PRCM_PWR_SWITCH_REG(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
