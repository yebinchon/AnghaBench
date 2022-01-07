; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_pm33xx-core.c_amx3_common_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_pm33xx-core.c_amx3_common_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"gfx_pwrdm\00", align 1
@gfx_pwrdm = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"per_pwrdm\00", align 1
@per_pwrdm = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"mpu_pwrdm\00", align 1
@mpu_pwrdm = common dso_local global i8* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@omap_pm_clkdms_setup = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"cefuse_pwrdm\00", align 1
@cefuse_pwrdm = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"PM: Failed to get cefuse_pwrdm\0A\00", align 1
@OMAP2_DEVICE_TYPE_GP = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"PM: Leaving EFUSE power domain active\0A\00", align 1
@PWRDM_POWER_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @amx3_common_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amx3_common_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i8* @pwrdm_lookup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %2, i8** @gfx_pwrdm, align 8
  %3 = call i8* @pwrdm_lookup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %3, i8** @per_pwrdm, align 8
  %4 = call i8* @pwrdm_lookup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i8* %4, i8** @mpu_pwrdm, align 8
  %5 = load i8*, i8** @gfx_pwrdm, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = load i8*, i8** @per_pwrdm, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i8*, i8** @mpu_pwrdm, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %7, %0
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %1, align 4
  br label %36

16:                                               ; preds = %10
  %17 = load i32, i32* @omap_pm_clkdms_setup, align 4
  %18 = call i32 @clkdm_for_each(i32 %17, i32* null)
  %19 = call i8* @pwrdm_lookup(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i8* %19, i8** @cefuse_pwrdm, align 8
  %20 = load i8*, i8** @cefuse_pwrdm, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %35

24:                                               ; preds = %16
  %25 = call i64 (...) @omap_type()
  %26 = load i64, i64* @OMAP2_DEVICE_TYPE_GP, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %34

30:                                               ; preds = %24
  %31 = load i8*, i8** @cefuse_pwrdm, align 8
  %32 = load i32, i32* @PWRDM_POWER_OFF, align 4
  %33 = call i32 @omap_set_pwrdm_state(i8* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %28
  br label %35

35:                                               ; preds = %34, %22
  store i32 0, i32* %1, align 4
  br label %36

36:                                               ; preds = %35, %13
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare dso_local i8* @pwrdm_lookup(i8*) #1

declare dso_local i32 @clkdm_for_each(i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @omap_type(...) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @omap_set_pwrdm_state(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
