; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cm3xxx.c_omap3xxx_clkdm_clk_disable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cm3xxx.c_omap3xxx_clkdm_clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clockdomain = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@CLKDM_MISSING_IDLE_REPORTING = common dso_local global i32 0, align 4
@CLKDM_CAN_FORCE_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clockdomain*)* @omap3xxx_clkdm_clk_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap3xxx_clkdm_clk_disable(%struct.clockdomain* %0) #0 {
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
  br label %83

10:                                               ; preds = %1
  %11 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %12 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @CLKDM_MISSING_IDLE_REPORTING, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %10
  %18 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %19 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CLKDM_CAN_FORCE_SLEEP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %17
  %25 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %26 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %32 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @omap3xxx_cm_clkdm_enable_hwsup(i32 %30, i32 %33)
  store i32 0, i32* %2, align 4
  br label %83

35:                                               ; preds = %17, %10
  %36 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %37 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %43 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @omap3xxx_cm_is_clkdm_in_hwsup(i32 %41, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %35
  %49 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %50 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %56 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @omap3xxx_cm_clkdm_disable_hwsup(i32 %54, i32 %57)
  %59 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %60 = call i32 @clkdm_del_autodeps(%struct.clockdomain* %59)
  %61 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %62 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %68 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @omap3xxx_cm_clkdm_enable_hwsup(i32 %66, i32 %69)
  br label %82

71:                                               ; preds = %35
  %72 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %73 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @CLKDM_CAN_FORCE_SLEEP, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %80 = call i32 @omap3xxx_clkdm_sleep(%struct.clockdomain* %79)
  br label %81

81:                                               ; preds = %78, %71
  br label %82

82:                                               ; preds = %81, %48
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %24, %9
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @omap3xxx_cm_clkdm_enable_hwsup(i32, i32) #1

declare dso_local i32 @omap3xxx_cm_is_clkdm_in_hwsup(i32, i32) #1

declare dso_local i32 @omap3xxx_cm_clkdm_disable_hwsup(i32, i32) #1

declare dso_local i32 @clkdm_del_autodeps(%struct.clockdomain*) #1

declare dso_local i32 @omap3xxx_clkdm_sleep(%struct.clockdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
