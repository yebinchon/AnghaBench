; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c_clkdm_allow_idle_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c_clkdm_allow_idle_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.clockdomain*)* }
%struct.clockdomain = type { i32, %struct.TYPE_3__, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@CLKDM_CAN_FORCE_SLEEP = common dso_local global i32 0, align 4
@CLKDM_CAN_ENABLE_AUTO = common dso_local global i32 0, align 4
@CLKDM_MISSING_IDLE_REPORTING = common dso_local global i32 0, align 4
@arch_clkdm = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [57 x i8] c"clockdomain: enabling automatic idle transitions for %s\0A\00", align 1
@_CLKDM_FLAG_HWSUP_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clkdm_allow_idle_nolock(%struct.clockdomain* %0) #0 {
  %2 = alloca %struct.clockdomain*, align 8
  store %struct.clockdomain* %0, %struct.clockdomain** %2, align 8
  %3 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %4 = icmp ne %struct.clockdomain* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %86

6:                                                ; preds = %1
  %7 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %8 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %6
  %16 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %17 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  br label %20

20:                                               ; preds = %15, %6
  %21 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %22 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %86

26:                                               ; preds = %20
  %27 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %28 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %33 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CLKDM_CAN_FORCE_SLEEP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %40 = call i32 @clkdm_sleep_nolock(%struct.clockdomain* %39)
  br label %41

41:                                               ; preds = %38, %31, %26
  %42 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %43 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @CLKDM_CAN_ENABLE_AUTO, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  br label %86

49:                                               ; preds = %41
  %50 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %51 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @CLKDM_MISSING_IDLE_REPORTING, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %86

57:                                               ; preds = %49
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arch_clkdm, align 8
  %59 = icmp ne %struct.TYPE_4__* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arch_clkdm, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32 (%struct.clockdomain*)*, i32 (%struct.clockdomain*)** %62, align 8
  %64 = icmp ne i32 (%struct.clockdomain*)* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %60, %57
  br label %86

66:                                               ; preds = %60
  %67 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %68 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @pr_debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @_CLKDM_FLAG_HWSUP_ENABLED, align 4
  %72 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %73 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arch_clkdm, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32 (%struct.clockdomain*)*, i32 (%struct.clockdomain*)** %77, align 8
  %79 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %80 = call i32 %78(%struct.clockdomain* %79)
  %81 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %82 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @pwrdm_state_switch_nolock(i32 %84)
  br label %86

86:                                               ; preds = %66, %65, %56, %48, %25, %5
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @clkdm_sleep_nolock(%struct.clockdomain*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @pwrdm_state_switch_nolock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
