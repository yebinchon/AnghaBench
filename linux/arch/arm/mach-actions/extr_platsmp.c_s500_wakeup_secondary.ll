; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-actions/extr_platsmp.c_s500_wakeup_secondary.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-actions/extr_platsmp.c_s500_wakeup_secondary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@sps_base_addr = common dso_local global i32 0, align 4
@OWL_SPS_PG_CTL_PWR_CPU2 = common dso_local global i32 0, align 4
@OWL_SPS_PG_CTL_ACK_CPU2 = common dso_local global i32 0, align 4
@OWL_SPS_PG_CTL_PWR_CPU3 = common dso_local global i32 0, align 4
@OWL_SPS_PG_CTL_ACK_CPU3 = common dso_local global i32 0, align 4
@secondary_startup = common dso_local global i32 0, align 4
@timer_base_addr = common dso_local global i64 0, align 8
@OWL_CPU1_ADDR = common dso_local global i64 0, align 8
@OWL_CPUx_FLAG_BOOT = common dso_local global i32 0, align 4
@OWL_CPU1_FLAG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @s500_wakeup_secondary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s500_wakeup_secondary(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ugt i32 %5, 3
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %57

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  switch i32 %11, label %32 [
    i32 2, label %12
    i32 3, label %22
  ]

12:                                               ; preds = %10
  %13 = load i32, i32* @sps_base_addr, align 4
  %14 = load i32, i32* @OWL_SPS_PG_CTL_PWR_CPU2, align 4
  %15 = load i32, i32* @OWL_SPS_PG_CTL_ACK_CPU2, align 4
  %16 = call i32 @owl_sps_set_pg(i32 %13, i32 %14, i32 %15, i32 1)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %57

21:                                               ; preds = %12
  br label %32

22:                                               ; preds = %10
  %23 = load i32, i32* @sps_base_addr, align 4
  %24 = load i32, i32* @OWL_SPS_PG_CTL_PWR_CPU3, align 4
  %25 = load i32, i32* @OWL_SPS_PG_CTL_ACK_CPU3, align 4
  %26 = call i32 @owl_sps_set_pg(i32 %23, i32 %24, i32 %25, i32 1)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %57

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %10, %31, %21
  %33 = call i32 @udelay(i32 200)
  %34 = load i32, i32* @secondary_startup, align 4
  %35 = call i32 @__pa_symbol(i32 %34)
  %36 = load i64, i64* @timer_base_addr, align 8
  %37 = load i64, i64* @OWL_CPU1_ADDR, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i32, i32* %3, align 4
  %40 = sub i32 %39, 1
  %41 = mul i32 %40, 4
  %42 = zext i32 %41 to i64
  %43 = add nsw i64 %38, %42
  %44 = call i32 @writel(i32 %35, i64 %43)
  %45 = load i32, i32* @OWL_CPUx_FLAG_BOOT, align 4
  %46 = load i64, i64* @timer_base_addr, align 8
  %47 = load i64, i64* @OWL_CPU1_FLAG, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i32, i32* %3, align 4
  %50 = sub i32 %49, 1
  %51 = mul i32 %50, 4
  %52 = zext i32 %51 to i64
  %53 = add nsw i64 %48, %52
  %54 = call i32 @writel(i32 %45, i64 %53)
  %55 = call i32 (...) @dsb_sev()
  %56 = call i32 (...) @mb()
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %32, %29, %19, %7
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @owl_sps_set_pg(i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @__pa_symbol(i32) #1

declare dso_local i32 @dsb_sev(...) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
