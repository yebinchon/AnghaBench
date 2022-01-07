; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c_clkdm_deny_idle_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c_clkdm_deny_idle_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.clockdomain*)* }
%struct.clockdomain = type { i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@CLKDM_CAN_FORCE_WAKEUP = common dso_local global i32 0, align 4
@CLKDM_CAN_DISABLE_AUTO = common dso_local global i32 0, align 4
@CLKDM_MISSING_IDLE_REPORTING = common dso_local global i32 0, align 4
@arch_clkdm = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [58 x i8] c"clockdomain: disabling automatic idle transitions for %s\0A\00", align 1
@_CLKDM_FLAG_HWSUP_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clkdm_deny_idle_nolock(%struct.clockdomain* %0) #0 {
  %2 = alloca %struct.clockdomain*, align 8
  store %struct.clockdomain* %0, %struct.clockdomain** %2, align 8
  %3 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %4 = icmp ne %struct.clockdomain* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %69

6:                                                ; preds = %1
  %7 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %8 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  br label %69

13:                                               ; preds = %6
  %14 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %15 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CLKDM_CAN_FORCE_WAKEUP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %22 = call i32 @clkdm_wakeup_nolock(%struct.clockdomain* %21)
  br label %23

23:                                               ; preds = %20, %13
  %24 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %25 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CLKDM_CAN_DISABLE_AUTO, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %69

31:                                               ; preds = %23
  %32 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %33 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CLKDM_MISSING_IDLE_REPORTING, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %69

39:                                               ; preds = %31
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arch_clkdm, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arch_clkdm, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32 (%struct.clockdomain*)*, i32 (%struct.clockdomain*)** %44, align 8
  %46 = icmp ne i32 (%struct.clockdomain*)* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %42, %39
  br label %69

48:                                               ; preds = %42
  %49 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %50 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @pr_debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @_CLKDM_FLAG_HWSUP_ENABLED, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %56 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arch_clkdm, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32 (%struct.clockdomain*)*, i32 (%struct.clockdomain*)** %60, align 8
  %62 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %63 = call i32 %61(%struct.clockdomain* %62)
  %64 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %65 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @pwrdm_state_switch_nolock(i32 %67)
  br label %69

69:                                               ; preds = %48, %47, %38, %30, %12, %5
  ret void
}

declare dso_local i32 @clkdm_wakeup_nolock(%struct.clockdomain*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @pwrdm_state_switch_nolock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
