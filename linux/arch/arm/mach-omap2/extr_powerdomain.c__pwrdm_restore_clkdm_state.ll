; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_powerdomain.c__pwrdm_restore_clkdm_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_powerdomain.c__pwrdm_restore_clkdm_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.powerdomain*)* }
%struct.powerdomain = type { i32, i32* }

@PWRDM_HAS_LOWPOWERSTATECHANGE = common dso_local global i32 0, align 4
@arch_pwrdm = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.powerdomain*, i32)* @_pwrdm_restore_clkdm_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_pwrdm_restore_clkdm_state(%struct.powerdomain* %0, i32 %1) #0 {
  %3 = alloca %struct.powerdomain*, align 8
  %4 = alloca i32, align 4
  store %struct.powerdomain* %0, %struct.powerdomain** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %34 [
    i32 129, label %6
    i32 128, label %13
  ]

6:                                                ; preds = %2
  %7 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %8 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @clkdm_allow_idle_nolock(i32 %11)
  br label %34

13:                                               ; preds = %2
  %14 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %15 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PWRDM_HAS_LOWPOWERSTATECHANGE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %13
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arch_pwrdm, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.powerdomain*)*, i32 (%struct.powerdomain*)** %22, align 8
  %24 = icmp ne i32 (%struct.powerdomain*)* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arch_pwrdm, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.powerdomain*)*, i32 (%struct.powerdomain*)** %27, align 8
  %29 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %30 = call i32 %28(%struct.powerdomain* %29)
  br label %31

31:                                               ; preds = %25, %20, %13
  %32 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %33 = call i32 @pwrdm_state_switch_nolock(%struct.powerdomain* %32)
  br label %34

34:                                               ; preds = %2, %31, %6
  ret void
}

declare dso_local i32 @clkdm_allow_idle_nolock(i32) #1

declare dso_local i32 @pwrdm_state_switch_nolock(%struct.powerdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
