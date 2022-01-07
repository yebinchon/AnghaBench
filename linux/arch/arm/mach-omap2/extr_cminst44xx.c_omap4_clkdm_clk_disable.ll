; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cminst44xx.c_omap4_clkdm_clk_disable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cminst44xx.c_omap4_clkdm_clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clockdomain = type { i32, i32, i32, i32 }

@CLKDM_MISSING_IDLE_REPORTING = common dso_local global i32 0, align 4
@CLKDM_CAN_FORCE_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clockdomain*)* @omap4_clkdm_clk_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap4_clkdm_clk_disable(%struct.clockdomain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clockdomain*, align 8
  %4 = alloca i32, align 4
  store %struct.clockdomain* %0, %struct.clockdomain** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %6 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

10:                                               ; preds = %1
  %11 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %12 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CLKDM_MISSING_IDLE_REPORTING, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %19 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CLKDM_CAN_FORCE_SLEEP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %26 = call i32 @omap4_clkdm_allow_idle(%struct.clockdomain* %25)
  store i32 0, i32* %2, align 4
  br label %51

27:                                               ; preds = %17, %10
  %28 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %29 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %32 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %35 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @omap4_cminst_is_clkdm_in_hwsup(i32 %30, i32 %33, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %27
  %41 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %42 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CLKDM_CAN_FORCE_SLEEP, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %49 = call i32 @omap4_clkdm_sleep(%struct.clockdomain* %48)
  br label %50

50:                                               ; preds = %47, %40, %27
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %24, %9
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @omap4_clkdm_allow_idle(%struct.clockdomain*) #1

declare dso_local i32 @omap4_cminst_is_clkdm_in_hwsup(i32, i32, i32) #1

declare dso_local i32 @omap4_clkdm_sleep(%struct.clockdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
