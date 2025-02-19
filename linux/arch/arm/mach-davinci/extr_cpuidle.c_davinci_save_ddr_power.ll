; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-davinci/extr_cpuidle.c_davinci_save_ddr_power.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-davinci/extr_cpuidle.c_davinci_save_ddr_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ddr2_reg_base = common dso_local global i64 0, align 8
@DDR2_SDRCR_OFFSET = common dso_local global i64 0, align 8
@DDR2_SRPD_BIT = common dso_local global i32 0, align 4
@DDR2_LPMODEN_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @davinci_save_ddr_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @davinci_save_ddr_power(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @ddr2_reg_base, align 8
  %7 = load i64, i64* @DDR2_SDRCR_OFFSET, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @__raw_readl(i64 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* @DDR2_SRPD_BIT, align 4
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  br label %24

19:                                               ; preds = %12
  %20 = load i32, i32* @DDR2_SRPD_BIT, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %19, %15
  %25 = load i32, i32* @DDR2_LPMODEN_BIT, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %35

28:                                               ; preds = %2
  %29 = load i32, i32* @DDR2_SRPD_BIT, align 4
  %30 = load i32, i32* @DDR2_LPMODEN_BIT, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %28, %24
  %36 = load i32, i32* %5, align 4
  %37 = load i64, i64* @ddr2_reg_base, align 8
  %38 = load i64, i64* @DDR2_SDRCR_OFFSET, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @__raw_writel(i32 %36, i64 %39)
  ret void
}

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
