; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_iphase.c_ia_suni_pm7345_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_iphase.c_ia_suni_pm7345_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ia_reg = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.iadev_priv = type { i32 }

@ia_suni_pm7345_init.suni_init = internal constant [24 x %struct.ia_reg] [%struct.ia_reg { i32 150, i32 40 }, %struct.ia_reg { i32 151, i32 0 }, %struct.ia_reg { i32 149, i32 0 }, %struct.ia_reg { i32 140, i32 44 }, %struct.ia_reg { i32 139, i32 129 }, %struct.ia_reg { i32 134, i32 0 }, %struct.ia_reg { i32 133, i32 0 }, %struct.ia_reg { i32 132, i32 0 }, %struct.ia_reg { i32 131, i32 1 }, %struct.ia_reg { i32 138, i32 255 }, %struct.ia_reg { i32 137, i32 255 }, %struct.ia_reg { i32 136, i32 255 }, %struct.ia_reg { i32 135, i32 254 }, %struct.ia_reg { i32 144, i32 0 }, %struct.ia_reg { i32 143, i32 0 }, %struct.ia_reg { i32 142, i32 0 }, %struct.ia_reg { i32 141, i32 1 }, %struct.ia_reg { i32 148, i32 255 }, %struct.ia_reg { i32 147, i32 255 }, %struct.ia_reg { i32 146, i32 255 }, %struct.ia_reg { i32 145, i32 255 }, %struct.ia_reg { i32 130, i32 164 }, %struct.ia_reg { i32 128, i32 16 }, %struct.ia_reg { i32 129, i32 85 }], align 16
@FE_DS3_PHY = common dso_local global i32 0, align 4
@SUNI_CONFIG = common dso_local global i32 0, align 4
@SUNI_PM7345_LLB = common dso_local global i32 0, align 4
@SUNI_PM7345_CLB = common dso_local global i32 0, align 4
@SUNI_PM7345_DLB = common dso_local global i32 0, align 4
@SUNI_PM7345_PLB = common dso_local global i32 0, align 4
@SUNI_OOCDE = common dso_local global i32 0, align 4
@suni_pm7345 = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iadev_priv*)* @ia_suni_pm7345_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ia_suni_pm7345_init(%struct.iadev_priv* %0) #0 {
  %2 = alloca %struct.iadev_priv*, align 8
  store %struct.iadev_priv* %0, %struct.iadev_priv** %2, align 8
  %3 = load %struct.iadev_priv*, %struct.iadev_priv** %2, align 8
  %4 = getelementptr inbounds %struct.iadev_priv, %struct.iadev_priv* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @FE_DS3_PHY, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.iadev_priv*, %struct.iadev_priv** %2, align 8
  %11 = call i32 @ia_suni_pm7345_init_ds3(%struct.iadev_priv* %10)
  br label %15

12:                                               ; preds = %1
  %13 = load %struct.iadev_priv*, %struct.iadev_priv** %2, align 8
  %14 = call i32 @ia_suni_pm7345_init_e3(%struct.iadev_priv* %13)
  br label %15

15:                                               ; preds = %12, %9
  %16 = load %struct.iadev_priv*, %struct.iadev_priv** %2, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.ia_reg* getelementptr inbounds ([24 x %struct.ia_reg], [24 x %struct.ia_reg]* @ia_suni_pm7345_init.suni_init, i64 0, i64 0))
  %18 = call i32 @ia_phy_write(%struct.iadev_priv* %16, %struct.ia_reg* getelementptr inbounds ([24 x %struct.ia_reg], [24 x %struct.ia_reg]* @ia_suni_pm7345_init.suni_init, i64 0, i64 0), i32 %17)
  %19 = load %struct.iadev_priv*, %struct.iadev_priv** %2, align 8
  %20 = load i32, i32* @SUNI_CONFIG, align 4
  %21 = load %struct.iadev_priv*, %struct.iadev_priv** %2, align 8
  %22 = load i32, i32* @SUNI_CONFIG, align 4
  %23 = call i32 @ia_phy_read32(%struct.iadev_priv* %21, i32 %22)
  %24 = load i32, i32* @SUNI_PM7345_LLB, align 4
  %25 = load i32, i32* @SUNI_PM7345_CLB, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SUNI_PM7345_DLB, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @SUNI_PM7345_PLB, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = and i32 %23, %31
  %33 = call i32 @ia_phy_write32(%struct.iadev_priv* %19, i32 %20, i32 %32)
  ret void
}

declare dso_local i32 @ia_suni_pm7345_init_ds3(%struct.iadev_priv*) #1

declare dso_local i32 @ia_suni_pm7345_init_e3(%struct.iadev_priv*) #1

declare dso_local i32 @ia_phy_write(%struct.iadev_priv*, %struct.ia_reg*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ia_reg*) #1

declare dso_local i32 @ia_phy_write32(%struct.iadev_priv*, i32, i32) #1

declare dso_local i32 @ia_phy_read32(%struct.iadev_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
