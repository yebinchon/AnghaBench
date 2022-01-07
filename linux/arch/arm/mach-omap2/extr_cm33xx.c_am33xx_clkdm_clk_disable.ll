; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cm33xx.c_am33xx_clkdm_clk_disable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cm33xx.c_am33xx_clkdm_clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clockdomain = type { i32, i32, i32 }

@CLKDM_CAN_FORCE_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clockdomain*)* @am33xx_clkdm_clk_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am33xx_clkdm_clk_disable(%struct.clockdomain* %0) #0 {
  %2 = alloca %struct.clockdomain*, align 8
  %3 = alloca i32, align 4
  store %struct.clockdomain* %0, %struct.clockdomain** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %5 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %8 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @am33xx_cm_is_clkdm_in_hwsup(i32 %6, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %1
  %14 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %15 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CLKDM_CAN_FORCE_SLEEP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %22 = call i32 @am33xx_clkdm_sleep(%struct.clockdomain* %21)
  br label %23

23:                                               ; preds = %20, %13, %1
  ret i32 0
}

declare dso_local i32 @am33xx_cm_is_clkdm_in_hwsup(i32, i32) #1

declare dso_local i32 @am33xx_clkdm_sleep(%struct.clockdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
