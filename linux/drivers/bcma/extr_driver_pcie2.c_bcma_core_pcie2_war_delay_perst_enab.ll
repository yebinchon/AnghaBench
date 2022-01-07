; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_pcie2.c_bcma_core_pcie2_war_delay_perst_enab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_pcie2.c_bcma_core_pcie2_war_delay_perst_enab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_pcie2 = type { i32 }

@BCMA_CORE_PCIE2_CLK_CONTROL = common dso_local global i32 0, align 4
@PCIE2_CLKC_DLYPERST = common dso_local global i32 0, align 4
@PCIE2_CLKC_DISSPROMLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_drv_pcie2*, i32)* @bcma_core_pcie2_war_delay_perst_enab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_core_pcie2_war_delay_perst_enab(%struct.bcma_drv_pcie2* %0, i32 %1) #0 {
  %3 = alloca %struct.bcma_drv_pcie2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bcma_drv_pcie2* %0, %struct.bcma_drv_pcie2** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bcma_drv_pcie2*, %struct.bcma_drv_pcie2** %3, align 8
  %7 = load i32, i32* @BCMA_CORE_PCIE2_CLK_CONTROL, align 4
  %8 = call i32 @pcie2_read32(%struct.bcma_drv_pcie2* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @PCIE2_CLKC_DLYPERST, align 4
  %10 = load i32, i32* %5, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @PCIE2_CLKC_DISSPROMLD, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load i32, i32* @PCIE2_CLKC_DLYPERST, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @PCIE2_CLKC_DISSPROMLD, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %18, %2
  %27 = load %struct.bcma_drv_pcie2*, %struct.bcma_drv_pcie2** %3, align 8
  %28 = load i32, i32* @BCMA_CORE_PCIE2_CLK_CONTROL, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @pcie2_write32(%struct.bcma_drv_pcie2* %27, i32 %28, i32 %29)
  %31 = load %struct.bcma_drv_pcie2*, %struct.bcma_drv_pcie2** %3, align 8
  %32 = load i32, i32* @BCMA_CORE_PCIE2_CLK_CONTROL, align 4
  %33 = call i32 @pcie2_read32(%struct.bcma_drv_pcie2* %31, i32 %32)
  ret i32 %33
}

declare dso_local i32 @pcie2_read32(%struct.bcma_drv_pcie2*, i32) #1

declare dso_local i32 @pcie2_write32(%struct.bcma_drv_pcie2*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
