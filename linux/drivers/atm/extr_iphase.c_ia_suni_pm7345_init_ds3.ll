; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_iphase.c_ia_suni_pm7345_init_ds3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_iphase.c_ia_suni_pm7345_init_ds3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ia_reg = type { i32, i32 }
%struct.iadev_priv = type { i32 }

@ia_suni_pm7345_init_ds3.suni_ds3_init = internal constant [6 x %struct.ia_reg] [%struct.ia_reg { i32 131, i32 23 }, %struct.ia_reg { i32 132, i32 1 }, %struct.ia_reg { i32 130, i32 1 }, %struct.ia_reg { i32 133, i32 0 }, %struct.ia_reg { i32 129, i32 0 }, %struct.ia_reg { i32 128, i32 0 }], align 16
@SUNI_DS3_FRM_STAT = common dso_local global i32 0, align 4
@SUNI_DS3_LOSV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iadev_priv*)* @ia_suni_pm7345_init_ds3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ia_suni_pm7345_init_ds3(%struct.iadev_priv* %0) #0 {
  %2 = alloca %struct.iadev_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.iadev_priv* %0, %struct.iadev_priv** %2, align 8
  %4 = load %struct.iadev_priv*, %struct.iadev_priv** %2, align 8
  %5 = load i32, i32* @SUNI_DS3_FRM_STAT, align 4
  %6 = call i32 @ia_phy_read32(%struct.iadev_priv* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @SUNI_DS3_LOSV, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 0, i32 1
  %13 = load %struct.iadev_priv*, %struct.iadev_priv** %2, align 8
  %14 = getelementptr inbounds %struct.iadev_priv, %struct.iadev_priv* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.iadev_priv*, %struct.iadev_priv** %2, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.ia_reg* getelementptr inbounds ([6 x %struct.ia_reg], [6 x %struct.ia_reg]* @ia_suni_pm7345_init_ds3.suni_ds3_init, i64 0, i64 0))
  %17 = call i32 @ia_phy_write(%struct.iadev_priv* %15, %struct.ia_reg* getelementptr inbounds ([6 x %struct.ia_reg], [6 x %struct.ia_reg]* @ia_suni_pm7345_init_ds3.suni_ds3_init, i64 0, i64 0), i32 %16)
  ret void
}

declare dso_local i32 @ia_phy_read32(%struct.iadev_priv*, i32) #1

declare dso_local i32 @ia_phy_write(%struct.iadev_priv*, %struct.ia_reg*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ia_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
