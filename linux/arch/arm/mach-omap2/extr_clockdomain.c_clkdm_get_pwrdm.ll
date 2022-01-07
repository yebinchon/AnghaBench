; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c_clkdm_get_pwrdm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c_clkdm_get_pwrdm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerdomain = type { i32 }
%struct.clockdomain = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.powerdomain* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.powerdomain* @clkdm_get_pwrdm(%struct.clockdomain* %0) #0 {
  %2 = alloca %struct.powerdomain*, align 8
  %3 = alloca %struct.clockdomain*, align 8
  store %struct.clockdomain* %0, %struct.clockdomain** %3, align 8
  %4 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %5 = icmp ne %struct.clockdomain* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store %struct.powerdomain* null, %struct.powerdomain** %2, align 8
  br label %12

7:                                                ; preds = %1
  %8 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %9 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.powerdomain*, %struct.powerdomain** %10, align 8
  store %struct.powerdomain* %11, %struct.powerdomain** %2, align 8
  br label %12

12:                                               ; preds = %7, %6
  %13 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  ret %struct.powerdomain* %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
