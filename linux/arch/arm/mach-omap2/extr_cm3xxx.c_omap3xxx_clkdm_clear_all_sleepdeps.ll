; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cm3xxx.c_omap3xxx_clkdm_clear_all_sleepdeps.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_cm3xxx.c_omap3xxx_clkdm_clear_all_sleepdeps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clockdomain = type { %struct.TYPE_5__, %struct.clkdm_dep* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.clkdm_dep = type { i64, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32 }

@OMAP3430_CM_SLEEPDEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clockdomain*)* @omap3xxx_clkdm_clear_all_sleepdeps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap3xxx_clkdm_clear_all_sleepdeps(%struct.clockdomain* %0) #0 {
  %2 = alloca %struct.clockdomain*, align 8
  %3 = alloca %struct.clkdm_dep*, align 8
  %4 = alloca i32, align 4
  store %struct.clockdomain* %0, %struct.clockdomain** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %6 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %5, i32 0, i32 1
  %7 = load %struct.clkdm_dep*, %struct.clkdm_dep** %6, align 8
  store %struct.clkdm_dep* %7, %struct.clkdm_dep** %3, align 8
  br label %8

8:                                                ; preds = %35, %1
  %9 = load %struct.clkdm_dep*, %struct.clkdm_dep** %3, align 8
  %10 = icmp ne %struct.clkdm_dep* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load %struct.clkdm_dep*, %struct.clkdm_dep** %3, align 8
  %13 = getelementptr inbounds %struct.clkdm_dep, %struct.clkdm_dep* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %11, %8
  %17 = phi i1 [ false, %8 ], [ %15, %11 ]
  br i1 %17, label %18, label %38

18:                                               ; preds = %16
  %19 = load %struct.clkdm_dep*, %struct.clkdm_dep** %3, align 8
  %20 = getelementptr inbounds %struct.clkdm_dep, %struct.clkdm_dep* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = icmp ne %struct.TYPE_6__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %35

24:                                               ; preds = %18
  %25 = load %struct.clkdm_dep*, %struct.clkdm_dep** %3, align 8
  %26 = getelementptr inbounds %struct.clkdm_dep, %struct.clkdm_dep* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 1, %29
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load %struct.clkdm_dep*, %struct.clkdm_dep** %3, align 8
  %34 = getelementptr inbounds %struct.clkdm_dep, %struct.clkdm_dep* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %24, %23
  %36 = load %struct.clkdm_dep*, %struct.clkdm_dep** %3, align 8
  %37 = getelementptr inbounds %struct.clkdm_dep, %struct.clkdm_dep* %36, i32 1
  store %struct.clkdm_dep* %37, %struct.clkdm_dep** %3, align 8
  br label %8

38:                                               ; preds = %16
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %41 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @OMAP3430_CM_SLEEPDEP, align 4
  %47 = call i32 @omap2_cm_clear_mod_reg_bits(i32 %39, i32 %45, i32 %46)
  ret i32 0
}

declare dso_local i32 @omap2_cm_clear_mod_reg_bits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
