; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c_clkdm_sleep_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c_clkdm_sleep_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.clockdomain*)* }
%struct.clockdomain = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CLKDM_CAN_FORCE_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"clockdomain: %s does not support forcing sleep via software\0A\00", align 1
@arch_clkdm = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"clockdomain: forcing sleep on %s\0A\00", align 1
@_CLKDM_FLAG_HWSUP_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clkdm_sleep_nolock(%struct.clockdomain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clockdomain*, align 8
  %4 = alloca i32, align 4
  store %struct.clockdomain* %0, %struct.clockdomain** %3, align 8
  %5 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %6 = icmp ne %struct.clockdomain* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %59

10:                                               ; preds = %1
  %11 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %12 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CLKDM_CAN_FORCE_SLEEP, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %10
  %18 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %19 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %59

24:                                               ; preds = %10
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arch_clkdm, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arch_clkdm, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32 (%struct.clockdomain*)*, i32 (%struct.clockdomain*)** %29, align 8
  %31 = icmp ne i32 (%struct.clockdomain*)* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27, %24
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %59

35:                                               ; preds = %27
  %36 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %37 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @_CLKDM_FLAG_HWSUP_ENABLED, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %43 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arch_clkdm, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32 (%struct.clockdomain*)*, i32 (%struct.clockdomain*)** %47, align 8
  %49 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %50 = call i32 %48(%struct.clockdomain* %49)
  store i32 %50, i32* %4, align 4
  %51 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %52 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pwrdm_state_switch_nolock(i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %35, %32, %17, %7
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @pwrdm_state_switch_nolock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
