; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cm3xxx.c_omap3xxx_clkdm_deny_idle.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cm3xxx.c_omap3xxx_clkdm_deny_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clockdomain = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clockdomain*)* @omap3xxx_clkdm_deny_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap3xxx_clkdm_deny_idle(%struct.clockdomain* %0) #0 {
  %2 = alloca %struct.clockdomain*, align 8
  store %struct.clockdomain* %0, %struct.clockdomain** %2, align 8
  %3 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %4 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %10 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @omap3xxx_cm_clkdm_disable_hwsup(i32 %8, i32 %11)
  %13 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %14 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %19 = call i32 @clkdm_del_autodeps(%struct.clockdomain* %18)
  br label %20

20:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @omap3xxx_cm_clkdm_disable_hwsup(i32, i32) #1

declare dso_local i32 @clkdm_del_autodeps(%struct.clockdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
