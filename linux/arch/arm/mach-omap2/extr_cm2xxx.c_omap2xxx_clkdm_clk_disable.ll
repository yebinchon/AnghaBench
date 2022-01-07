; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cm2xxx.c_omap2xxx_clkdm_clk_disable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cm2xxx.c_omap2xxx_clkdm_clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clockdomain = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@CLKDM_CAN_FORCE_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clockdomain*)* @omap2xxx_clkdm_clk_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap2xxx_clkdm_clk_disable(%struct.clockdomain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clockdomain*, align 8
  %4 = alloca i32, align 4
  store %struct.clockdomain* %0, %struct.clockdomain** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %6 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

10:                                               ; preds = %1
  %11 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %12 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %18 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @omap2xxx_cm_is_clkdm_in_hwsup(i32 %16, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %10
  %24 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %25 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CLKDM_CAN_FORCE_SLEEP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %32 = call i32 @omap2xxx_clkdm_sleep(%struct.clockdomain* %31)
  br label %33

33:                                               ; preds = %30, %23, %10
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %9
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @omap2xxx_cm_is_clkdm_in_hwsup(i32, i32) #1

declare dso_local i32 @omap2xxx_clkdm_sleep(%struct.clockdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
