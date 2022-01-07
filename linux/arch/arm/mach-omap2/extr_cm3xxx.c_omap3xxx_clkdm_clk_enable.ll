; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cm3xxx.c_omap3xxx_clkdm_clk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cm3xxx.c_omap3xxx_clkdm_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clockdomain = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@CLKDM_MISSING_IDLE_REPORTING = common dso_local global i32 0, align 4
@CLKDM_CAN_FORCE_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clockdomain*)* @omap3xxx_clkdm_clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap3xxx_clkdm_clk_enable(%struct.clockdomain* %0) #0 {
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
  br label %75

10:                                               ; preds = %1
  %11 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %12 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @CLKDM_MISSING_IDLE_REPORTING, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %19 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CLKDM_CAN_FORCE_WAKEUP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %26 = call i32 @omap3xxx_clkdm_wakeup(%struct.clockdomain* %25)
  store i32 0, i32* %2, align 4
  br label %75

27:                                               ; preds = %17, %10
  %28 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %29 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %35 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @omap3xxx_cm_is_clkdm_in_hwsup(i32 %33, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %27
  %41 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %42 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %48 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @omap3xxx_cm_clkdm_disable_hwsup(i32 %46, i32 %49)
  %51 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %52 = call i32 @clkdm_add_autodeps(%struct.clockdomain* %51)
  %53 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %54 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %60 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @omap3xxx_cm_clkdm_enable_hwsup(i32 %58, i32 %61)
  br label %74

63:                                               ; preds = %27
  %64 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %65 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @CLKDM_CAN_FORCE_WAKEUP, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %72 = call i32 @omap3xxx_clkdm_wakeup(%struct.clockdomain* %71)
  br label %73

73:                                               ; preds = %70, %63
  br label %74

74:                                               ; preds = %73, %40
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %24, %9
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @omap3xxx_clkdm_wakeup(%struct.clockdomain*) #1

declare dso_local i32 @omap3xxx_cm_is_clkdm_in_hwsup(i32, i32) #1

declare dso_local i32 @omap3xxx_cm_clkdm_disable_hwsup(i32, i32) #1

declare dso_local i32 @clkdm_add_autodeps(%struct.clockdomain*) #1

declare dso_local i32 @omap3xxx_cm_clkdm_enable_hwsup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
