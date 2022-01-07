; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_powerdomains3xxx_data.c_ti81xx_pwrdm_wait_transition.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_powerdomains3xxx_data.c_ti81xx_pwrdm_wait_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerdomain = type { i64, i32 }

@TI814X_PRM_GFX_MOD = common dso_local global i64 0, align 8
@TI81XX_RM_RSTCTRL = common dso_local global i32 0, align 4
@TI81XX_PM_PWSTST = common dso_local global i32 0, align 4
@OMAP_INTRANSITION_MASK = common dso_local global i32 0, align 4
@PWRDM_TRANSITION_BAILOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"powerdomain: %s timeout waiting for transition\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"powerdomain: completed transition in %d loops\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.powerdomain*)* @ti81xx_pwrdm_wait_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti81xx_pwrdm_wait_transition(%struct.powerdomain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.powerdomain*, align 8
  %4 = alloca i64, align 8
  store %struct.powerdomain* %0, %struct.powerdomain** %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %31, %1
  %6 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %7 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %10 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TI814X_PRM_GFX_MOD, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = load i32, i32* @TI81XX_RM_RSTCTRL, align 4
  br label %18

16:                                               ; preds = %5
  %17 = load i32, i32* @TI81XX_PM_PWSTST, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  %20 = call i32 @omap2_prm_read_mod_reg(i64 %8, i32 %19)
  %21 = load i32, i32* @OMAP_INTRANSITION_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load i64, i64* %4, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* @PWRDM_TRANSITION_BAILOUT, align 8
  %28 = icmp slt i64 %25, %27
  br label %29

29:                                               ; preds = %24, %18
  %30 = phi i1 [ false, %18 ], [ %28, %24 ]
  br i1 %30, label %31, label %33

31:                                               ; preds = %29
  %32 = call i32 @udelay(i32 1)
  br label %5

33:                                               ; preds = %29
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @PWRDM_TRANSITION_BAILOUT, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %39 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EAGAIN, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %47

44:                                               ; preds = %33
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %37
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @omap2_prm_read_mod_reg(i64, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
