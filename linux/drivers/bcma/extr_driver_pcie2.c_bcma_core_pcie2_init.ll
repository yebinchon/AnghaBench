; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_pcie2.c_bcma_core_pcie2_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_pcie2.c_bcma_core_pcie2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_pcie2 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bcma_bus* }
%struct.bcma_bus = type { %struct.bcma_chipinfo }
%struct.bcma_chipinfo = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcma_core_pcie2_init(%struct.bcma_drv_pcie2* %0) #0 {
  %2 = alloca %struct.bcma_drv_pcie2*, align 8
  %3 = alloca %struct.bcma_bus*, align 8
  %4 = alloca %struct.bcma_chipinfo*, align 8
  %5 = alloca i32, align 4
  store %struct.bcma_drv_pcie2* %0, %struct.bcma_drv_pcie2** %2, align 8
  %6 = load %struct.bcma_drv_pcie2*, %struct.bcma_drv_pcie2** %2, align 8
  %7 = getelementptr inbounds %struct.bcma_drv_pcie2, %struct.bcma_drv_pcie2* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.bcma_bus*, %struct.bcma_bus** %9, align 8
  store %struct.bcma_bus* %10, %struct.bcma_bus** %3, align 8
  %11 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %12 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %11, i32 0, i32 0
  store %struct.bcma_chipinfo* %12, %struct.bcma_chipinfo** %4, align 8
  %13 = load %struct.bcma_drv_pcie2*, %struct.bcma_drv_pcie2** %2, align 8
  %14 = call i32 @BCMA_CORE_PCIE2_SPROM(i32 54)
  %15 = call i32 @pcie2_read32(%struct.bcma_drv_pcie2* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 14
  %18 = ashr i32 %17, 1
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.bcma_drv_pcie2*, %struct.bcma_drv_pcie2** %2, align 8
  %22 = call i32 @bcma_core_pcie2_cfg_write(%struct.bcma_drv_pcie2* %21, i32 1248, i32 23)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %25 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.bcma_chipinfo, %struct.bcma_chipinfo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %31 [
    i32 128, label %28
    i32 129, label %28
  ]

28:                                               ; preds = %23, %23
  %29 = load %struct.bcma_drv_pcie2*, %struct.bcma_drv_pcie2** %2, align 8
  %30 = getelementptr inbounds %struct.bcma_drv_pcie2, %struct.bcma_drv_pcie2* %29, i32 0, i32 0
  store i32 1024, i32* %30, align 8
  br label %34

31:                                               ; preds = %23
  %32 = load %struct.bcma_drv_pcie2*, %struct.bcma_drv_pcie2** %2, align 8
  %33 = getelementptr inbounds %struct.bcma_drv_pcie2, %struct.bcma_drv_pcie2* %32, i32 0, i32 0
  store i32 128, i32* %33, align 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.bcma_chipinfo*, %struct.bcma_chipinfo** %4, align 8
  %36 = getelementptr inbounds %struct.bcma_chipinfo, %struct.bcma_chipinfo* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 128
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.bcma_chipinfo*, %struct.bcma_chipinfo** %4, align 8
  %41 = getelementptr inbounds %struct.bcma_chipinfo, %struct.bcma_chipinfo* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 3
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.bcma_drv_pcie2*, %struct.bcma_drv_pcie2** %2, align 8
  %46 = call i32 @bcma_core_pcie2_war_delay_perst_enab(%struct.bcma_drv_pcie2* %45, i32 1)
  br label %47

47:                                               ; preds = %44, %39, %34
  %48 = load %struct.bcma_drv_pcie2*, %struct.bcma_drv_pcie2** %2, align 8
  %49 = call i32 @bcma_core_pcie2_hw_ltr_war(%struct.bcma_drv_pcie2* %48)
  %50 = load %struct.bcma_drv_pcie2*, %struct.bcma_drv_pcie2** %2, align 8
  %51 = call i32 @pciedev_crwlpciegen2(%struct.bcma_drv_pcie2* %50)
  %52 = load %struct.bcma_drv_pcie2*, %struct.bcma_drv_pcie2** %2, align 8
  %53 = call i32 @pciedev_reg_pm_clk_period(%struct.bcma_drv_pcie2* %52)
  %54 = load %struct.bcma_drv_pcie2*, %struct.bcma_drv_pcie2** %2, align 8
  %55 = call i32 @pciedev_crwlpciegen2_180(%struct.bcma_drv_pcie2* %54)
  %56 = load %struct.bcma_drv_pcie2*, %struct.bcma_drv_pcie2** %2, align 8
  %57 = call i32 @pciedev_crwlpciegen2_182(%struct.bcma_drv_pcie2* %56)
  ret void
}

declare dso_local i32 @pcie2_read32(%struct.bcma_drv_pcie2*, i32) #1

declare dso_local i32 @BCMA_CORE_PCIE2_SPROM(i32) #1

declare dso_local i32 @bcma_core_pcie2_cfg_write(%struct.bcma_drv_pcie2*, i32, i32) #1

declare dso_local i32 @bcma_core_pcie2_war_delay_perst_enab(%struct.bcma_drv_pcie2*, i32) #1

declare dso_local i32 @bcma_core_pcie2_hw_ltr_war(%struct.bcma_drv_pcie2*) #1

declare dso_local i32 @pciedev_crwlpciegen2(%struct.bcma_drv_pcie2*) #1

declare dso_local i32 @pciedev_reg_pm_clk_period(%struct.bcma_drv_pcie2*) #1

declare dso_local i32 @pciedev_crwlpciegen2_180(%struct.bcma_drv_pcie2*) #1

declare dso_local i32 @pciedev_crwlpciegen2_182(%struct.bcma_drv_pcie2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
