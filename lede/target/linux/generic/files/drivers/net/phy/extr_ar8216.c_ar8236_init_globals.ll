; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8236_init_globals.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8236_init_globals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { i32 }

@AR8216_REG_GLOBAL_CTRL = common dso_local global i32 0, align 4
@AR8316_GCTRL_MTU = common dso_local global i32 0, align 4
@AR8216_REG_ATU_CTRL = common dso_local global i32 0, align 4
@AR8236_ATU_CTRL_RES = common dso_local global i32 0, align 4
@AR8216_REG_FLOOD_MASK = common dso_local global i32 0, align 4
@AR8236_FM_CPU_BROADCAST_EN = common dso_local global i32 0, align 4
@AR8236_FM_CPU_BCAST_FWD_EN = common dso_local global i32 0, align 4
@AR8216_REG_MIB_FUNC = common dso_local global i32 0, align 4
@AR8216_MIB_FUNC = common dso_local global i32 0, align 4
@AR8236_MIB_EN = common dso_local global i32 0, align 4
@AR8216_MIB_FUNC_NO_OP = common dso_local global i32 0, align 4
@AR8216_MIB_FUNC_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar8xxx_priv*)* @ar8236_init_globals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar8236_init_globals(%struct.ar8xxx_priv* %0) #0 {
  %2 = alloca %struct.ar8xxx_priv*, align 8
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %2, align 8
  %3 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %4 = load i32, i32* @AR8216_REG_GLOBAL_CTRL, align 4
  %5 = load i32, i32* @AR8316_GCTRL_MTU, align 4
  %6 = call i32 @ar8xxx_rmw(%struct.ar8xxx_priv* %3, i32 %4, i32 %5, i32 9028)
  %7 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %8 = load i32, i32* @AR8216_REG_ATU_CTRL, align 4
  %9 = load i32, i32* @AR8236_ATU_CTRL_RES, align 4
  %10 = call i32 @ar8xxx_reg_set(%struct.ar8xxx_priv* %7, i32 %8, i32 %9)
  %11 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %12 = load i32, i32* @AR8216_REG_FLOOD_MASK, align 4
  %13 = load i32, i32* @AR8236_FM_CPU_BROADCAST_EN, align 4
  %14 = load i32, i32* @AR8236_FM_CPU_BCAST_FWD_EN, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @ar8xxx_reg_set(%struct.ar8xxx_priv* %11, i32 %12, i32 %15)
  %17 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %18 = load i32, i32* @AR8216_REG_MIB_FUNC, align 4
  %19 = load i32, i32* @AR8216_MIB_FUNC, align 4
  %20 = load i32, i32* @AR8236_MIB_EN, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @AR8216_MIB_FUNC_NO_OP, align 4
  %23 = load i32, i32* @AR8216_MIB_FUNC_S, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* @AR8236_MIB_EN, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @ar8xxx_rmw(%struct.ar8xxx_priv* %17, i32 %18, i32 %21, i32 %26)
  ret void
}

declare dso_local i32 @ar8xxx_rmw(%struct.ar8xxx_priv*, i32, i32, i32) #1

declare dso_local i32 @ar8xxx_reg_set(%struct.ar8xxx_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
