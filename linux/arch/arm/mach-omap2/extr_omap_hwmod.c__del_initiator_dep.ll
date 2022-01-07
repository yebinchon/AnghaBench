; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c__del_initiator_dep.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c__del_initiator_dep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hwmod = type { i32 }
%struct.clockdomain = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CLKDM_NO_AUTODEPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hwmod*, %struct.omap_hwmod*)* @_del_initiator_dep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_del_initiator_dep(%struct.omap_hwmod* %0, %struct.omap_hwmod* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_hwmod*, align 8
  %5 = alloca %struct.omap_hwmod*, align 8
  %6 = alloca %struct.clockdomain*, align 8
  %7 = alloca %struct.clockdomain*, align 8
  store %struct.omap_hwmod* %0, %struct.omap_hwmod** %4, align 8
  store %struct.omap_hwmod* %1, %struct.omap_hwmod** %5, align 8
  %8 = load %struct.omap_hwmod*, %struct.omap_hwmod** %4, align 8
  %9 = call %struct.clockdomain* @_get_clkdm(%struct.omap_hwmod* %8)
  store %struct.clockdomain* %9, %struct.clockdomain** %6, align 8
  %10 = load %struct.omap_hwmod*, %struct.omap_hwmod** %5, align 8
  %11 = call %struct.clockdomain* @_get_clkdm(%struct.omap_hwmod* %10)
  store %struct.clockdomain* %11, %struct.clockdomain** %7, align 8
  %12 = load %struct.clockdomain*, %struct.clockdomain** %6, align 8
  %13 = icmp ne %struct.clockdomain* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.clockdomain*, %struct.clockdomain** %7, align 8
  %16 = icmp ne %struct.clockdomain* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14, %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %35

20:                                               ; preds = %14
  %21 = load %struct.clockdomain*, %struct.clockdomain** %6, align 8
  %22 = icmp ne %struct.clockdomain* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load %struct.clockdomain*, %struct.clockdomain** %6, align 8
  %25 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CLKDM_NO_AUTODEPS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %35

31:                                               ; preds = %23, %20
  %32 = load %struct.clockdomain*, %struct.clockdomain** %6, align 8
  %33 = load %struct.clockdomain*, %struct.clockdomain** %7, align 8
  %34 = call i32 @clkdm_del_sleepdep(%struct.clockdomain* %32, %struct.clockdomain* %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %30, %17
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.clockdomain* @_get_clkdm(%struct.omap_hwmod*) #1

declare dso_local i32 @clkdm_del_sleepdep(%struct.clockdomain*, %struct.clockdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
