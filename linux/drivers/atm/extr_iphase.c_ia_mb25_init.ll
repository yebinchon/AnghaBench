; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_iphase.c_ia_mb25_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_iphase.c_ia_mb25_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.iadev_priv = type { i32 }

@MB25_MASTER_CTRL = common dso_local global i32 0, align 4
@MB25_MC_DRIC = common dso_local global i32 0, align 4
@MB25_MC_DREC = common dso_local global i32 0, align 4
@MB25_DIAG_CONTROL = common dso_local global i32 0, align 4
@MB25_INTR_STATUS = common dso_local global i32 0, align 4
@MB25_IS_GSB = common dso_local global i32 0, align 4
@MB25_MC_ENABLED = common dso_local global i32 0, align 4
@mb25 = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iadev_priv*)* @ia_mb25_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ia_mb25_init(%struct.iadev_priv* %0) #0 {
  %2 = alloca %struct.iadev_priv*, align 8
  store %struct.iadev_priv* %0, %struct.iadev_priv** %2, align 8
  %3 = load %struct.iadev_priv*, %struct.iadev_priv** %2, align 8
  %4 = load i32, i32* @MB25_MASTER_CTRL, align 4
  %5 = load i32, i32* @MB25_MC_DRIC, align 4
  %6 = load i32, i32* @MB25_MC_DREC, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @ia_phy_write32(%struct.iadev_priv* %3, i32 %4, i32 %7)
  %9 = load %struct.iadev_priv*, %struct.iadev_priv** %2, align 8
  %10 = load i32, i32* @MB25_DIAG_CONTROL, align 4
  %11 = call i32 @ia_phy_write32(%struct.iadev_priv* %9, i32 %10, i32 0)
  %12 = load %struct.iadev_priv*, %struct.iadev_priv** %2, align 8
  %13 = load i32, i32* @MB25_INTR_STATUS, align 4
  %14 = call i32 @ia_phy_read32(%struct.iadev_priv* %12, i32 %13)
  %15 = load i32, i32* @MB25_IS_GSB, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  %20 = load %struct.iadev_priv*, %struct.iadev_priv** %2, align 8
  %21 = getelementptr inbounds %struct.iadev_priv, %struct.iadev_priv* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  ret void
}

declare dso_local i32 @ia_phy_write32(%struct.iadev_priv*, i32, i32) #1

declare dso_local i32 @ia_phy_read32(%struct.iadev_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
