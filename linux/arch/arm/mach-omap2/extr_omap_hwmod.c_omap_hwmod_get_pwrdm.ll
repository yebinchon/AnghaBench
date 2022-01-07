; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c_omap_hwmod_get_pwrdm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c_omap_hwmod_get_pwrdm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerdomain = type { i32 }
%struct.omap_hwmod = type { %struct.clk*, %struct.TYPE_6__* }
%struct.clk = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.powerdomain* }
%struct.omap_hwmod_ocp_if = type { %struct.clk* }
%struct.clockdomain = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.powerdomain* }
%struct.clk_hw_omap = type { %struct.clockdomain* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.powerdomain* @omap_hwmod_get_pwrdm(%struct.omap_hwmod* %0) #0 {
  %2 = alloca %struct.powerdomain*, align 8
  %3 = alloca %struct.omap_hwmod*, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.omap_hwmod_ocp_if*, align 8
  %6 = alloca %struct.clockdomain*, align 8
  %7 = alloca %struct.clk_hw_omap*, align 8
  store %struct.omap_hwmod* %0, %struct.omap_hwmod** %3, align 8
  %8 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %9 = icmp ne %struct.omap_hwmod* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.powerdomain* null, %struct.powerdomain** %2, align 8
  br label %57

11:                                               ; preds = %1
  %12 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %13 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %18 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.powerdomain*, %struct.powerdomain** %21, align 8
  store %struct.powerdomain* %22, %struct.powerdomain** %2, align 8
  br label %57

23:                                               ; preds = %11
  %24 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %25 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %24, i32 0, i32 0
  %26 = load %struct.clk*, %struct.clk** %25, align 8
  %27 = icmp ne %struct.clk* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %30 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %29, i32 0, i32 0
  %31 = load %struct.clk*, %struct.clk** %30, align 8
  store %struct.clk* %31, %struct.clk** %4, align 8
  br label %42

32:                                               ; preds = %23
  %33 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %34 = call %struct.omap_hwmod_ocp_if* @_find_mpu_rt_port(%struct.omap_hwmod* %33)
  store %struct.omap_hwmod_ocp_if* %34, %struct.omap_hwmod_ocp_if** %5, align 8
  %35 = load %struct.omap_hwmod_ocp_if*, %struct.omap_hwmod_ocp_if** %5, align 8
  %36 = icmp ne %struct.omap_hwmod_ocp_if* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store %struct.powerdomain* null, %struct.powerdomain** %2, align 8
  br label %57

38:                                               ; preds = %32
  %39 = load %struct.omap_hwmod_ocp_if*, %struct.omap_hwmod_ocp_if** %5, align 8
  %40 = getelementptr inbounds %struct.omap_hwmod_ocp_if, %struct.omap_hwmod_ocp_if* %39, i32 0, i32 0
  %41 = load %struct.clk*, %struct.clk** %40, align 8
  store %struct.clk* %41, %struct.clk** %4, align 8
  br label %42

42:                                               ; preds = %38, %28
  %43 = load %struct.clk*, %struct.clk** %4, align 8
  %44 = call i32 @__clk_get_hw(%struct.clk* %43)
  %45 = call %struct.clk_hw_omap* @to_clk_hw_omap(i32 %44)
  store %struct.clk_hw_omap* %45, %struct.clk_hw_omap** %7, align 8
  %46 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %7, align 8
  %47 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %46, i32 0, i32 0
  %48 = load %struct.clockdomain*, %struct.clockdomain** %47, align 8
  store %struct.clockdomain* %48, %struct.clockdomain** %6, align 8
  %49 = load %struct.clockdomain*, %struct.clockdomain** %6, align 8
  %50 = icmp ne %struct.clockdomain* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %42
  store %struct.powerdomain* null, %struct.powerdomain** %2, align 8
  br label %57

52:                                               ; preds = %42
  %53 = load %struct.clockdomain*, %struct.clockdomain** %6, align 8
  %54 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.powerdomain*, %struct.powerdomain** %55, align 8
  store %struct.powerdomain* %56, %struct.powerdomain** %2, align 8
  br label %57

57:                                               ; preds = %52, %51, %37, %16, %10
  %58 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  ret %struct.powerdomain* %58
}

declare dso_local %struct.omap_hwmod_ocp_if* @_find_mpu_rt_port(%struct.omap_hwmod*) #1

declare dso_local %struct.clk_hw_omap* @to_clk_hw_omap(i32) #1

declare dso_local i32 @__clk_get_hw(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
