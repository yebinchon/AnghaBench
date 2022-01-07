; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm44xx.c_omap4_pwrdm_wait_transition.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm44xx.c_omap4_pwrdm_wait_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerdomain = type { i32, i32, i32 }

@OMAP4_PM_PWSTST = common dso_local global i32 0, align 4
@OMAP_INTRANSITION_MASK = common dso_local global i32 0, align 4
@PWRDM_TRANSITION_BAILOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"powerdomain: %s: waited too long to complete transition\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"powerdomain: completed transition in %d loops\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.powerdomain*)* @omap4_pwrdm_wait_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap4_pwrdm_wait_transition(%struct.powerdomain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.powerdomain*, align 8
  %4 = alloca i64, align 8
  store %struct.powerdomain* %0, %struct.powerdomain** %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %24, %1
  %6 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %7 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %10 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @OMAP4_PM_PWSTST, align 4
  %13 = call i32 @omap4_prminst_read_inst_reg(i32 %8, i32 %11, i32 %12)
  %14 = load i32, i32* @OMAP_INTRANSITION_MASK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %5
  %18 = load i64, i64* %4, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* @PWRDM_TRANSITION_BAILOUT, align 8
  %21 = icmp slt i64 %18, %20
  br label %22

22:                                               ; preds = %17, %5
  %23 = phi i1 [ false, %5 ], [ %21, %17 ]
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = call i32 @udelay(i32 1)
  br label %5

26:                                               ; preds = %22
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @PWRDM_TRANSITION_BAILOUT, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %32 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %40

37:                                               ; preds = %26
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %37, %30
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @omap4_prminst_read_inst_reg(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
