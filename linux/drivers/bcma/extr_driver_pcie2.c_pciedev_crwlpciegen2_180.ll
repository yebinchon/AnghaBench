; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_pcie2.c_pciedev_crwlpciegen2_180.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_pcie2.c_pciedev_crwlpciegen2_180.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_pcie2 = type { i32 }

@BCMA_CORE_PCIE2_CONFIGINDADDR = common dso_local global i32 0, align 4
@PCIE2_PMCR_REFUP = common dso_local global i32 0, align 4
@BCMA_CORE_PCIE2_CONFIGINDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcma_drv_pcie2*)* @pciedev_crwlpciegen2_180 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pciedev_crwlpciegen2_180(%struct.bcma_drv_pcie2* %0) #0 {
  %2 = alloca %struct.bcma_drv_pcie2*, align 8
  store %struct.bcma_drv_pcie2* %0, %struct.bcma_drv_pcie2** %2, align 8
  %3 = load %struct.bcma_drv_pcie2*, %struct.bcma_drv_pcie2** %2, align 8
  %4 = load i32, i32* @BCMA_CORE_PCIE2_CONFIGINDADDR, align 4
  %5 = load i32, i32* @PCIE2_PMCR_REFUP, align 4
  %6 = call i32 @pcie2_write32(%struct.bcma_drv_pcie2* %3, i32 %4, i32 %5)
  %7 = load %struct.bcma_drv_pcie2*, %struct.bcma_drv_pcie2** %2, align 8
  %8 = load i32, i32* @BCMA_CORE_PCIE2_CONFIGINDDATA, align 4
  %9 = call i32 @pcie2_set32(%struct.bcma_drv_pcie2* %7, i32 %8, i32 31)
  ret void
}

declare dso_local i32 @pcie2_write32(%struct.bcma_drv_pcie2*, i32, i32) #1

declare dso_local i32 @pcie2_set32(%struct.bcma_drv_pcie2*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
