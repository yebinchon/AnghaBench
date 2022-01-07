; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm2xxx_3xxx.c_omap2_pwrdm_wait_transition.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm2xxx_3xxx.c_omap2_pwrdm_wait_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerdomain = type { i32, i32 }

@OMAP2_PM_PWSTST = common dso_local global i32 0, align 4
@OMAP_INTRANSITION_MASK = common dso_local global i32 0, align 4
@PWRDM_TRANSITION_BAILOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"powerdomain: %s: waited too long to complete transition\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"powerdomain: completed transition in %d loops\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap2_pwrdm_wait_transition(%struct.powerdomain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.powerdomain*, align 8
  %4 = alloca i64, align 8
  store %struct.powerdomain* %0, %struct.powerdomain** %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %21, %1
  %6 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %7 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @OMAP2_PM_PWSTST, align 4
  %10 = call i32 @omap2_prm_read_mod_reg(i32 %8, i32 %9)
  %11 = load i32, i32* @OMAP_INTRANSITION_MASK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %5
  %15 = load i64, i64* %4, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* @PWRDM_TRANSITION_BAILOUT, align 8
  %18 = icmp slt i64 %15, %17
  br label %19

19:                                               ; preds = %14, %5
  %20 = phi i1 [ false, %5 ], [ %18, %14 ]
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %22 = call i32 @udelay(i32 1)
  br label %5

23:                                               ; preds = %19
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @PWRDM_TRANSITION_BAILOUT, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %29 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EAGAIN, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %37

34:                                               ; preds = %23
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %34, %27
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @omap2_prm_read_mod_reg(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
