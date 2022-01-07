; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_init_globals.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_init_globals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { %struct.ar8327_data* }
%struct.ar8327_data = type { i32* }

@AR8327_FWD_CTRL0_CPU_PORT_EN = common dso_local global i32 0, align 4
@AR8327_FWD_CTRL0_MIRROR_PORT = common dso_local global i32 0, align 4
@AR8327_REG_FWD_CTRL0 = common dso_local global i32 0, align 4
@AR8327_PORTS_ALL = common dso_local global i32 0, align 4
@AR8327_FWD_CTRL1_UC_FLOOD_S = common dso_local global i32 0, align 4
@AR8327_FWD_CTRL1_MC_FLOOD_S = common dso_local global i32 0, align 4
@AR8327_FWD_CTRL1_BC_FLOOD_S = common dso_local global i32 0, align 4
@AR8327_REG_FWD_CTRL1 = common dso_local global i32 0, align 4
@AR8327_REG_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@AR8327_MAX_FRAME_SIZE_MTU = common dso_local global i32 0, align 4
@AR8327_REG_MODULE_EN = common dso_local global i32 0, align 4
@AR8327_MODULE_EN_MIB = common dso_local global i32 0, align 4
@AR8XXX_NUM_PHYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar8xxx_priv*)* @ar8327_init_globals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar8327_init_globals(%struct.ar8xxx_priv* %0) #0 {
  %2 = alloca %struct.ar8xxx_priv*, align 8
  %3 = alloca %struct.ar8327_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %2, align 8
  %6 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %7 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %6, i32 0, i32 0
  %8 = load %struct.ar8327_data*, %struct.ar8327_data** %7, align 8
  store %struct.ar8327_data* %8, %struct.ar8327_data** %3, align 8
  %9 = load i32, i32* @AR8327_FWD_CTRL0_CPU_PORT_EN, align 4
  %10 = load i32, i32* @AR8327_FWD_CTRL0_MIRROR_PORT, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %13 = load i32, i32* @AR8327_REG_FWD_CTRL0, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %12, i32 %13, i32 %14)
  %16 = load i32, i32* @AR8327_PORTS_ALL, align 4
  %17 = load i32, i32* @AR8327_FWD_CTRL1_UC_FLOOD_S, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* @AR8327_PORTS_ALL, align 4
  %20 = load i32, i32* @AR8327_FWD_CTRL1_MC_FLOOD_S, align 4
  %21 = shl i32 %19, %20
  %22 = or i32 %18, %21
  %23 = load i32, i32* @AR8327_PORTS_ALL, align 4
  %24 = load i32, i32* @AR8327_FWD_CTRL1_BC_FLOOD_S, align 4
  %25 = shl i32 %23, %24
  %26 = or i32 %22, %25
  store i32 %26, i32* %4, align 4
  %27 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %28 = load i32, i32* @AR8327_REG_FWD_CTRL1, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %27, i32 %28, i32 %29)
  %31 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %32 = load i32, i32* @AR8327_REG_MAX_FRAME_SIZE, align 4
  %33 = load i32, i32* @AR8327_MAX_FRAME_SIZE_MTU, align 4
  %34 = call i32 @ar8xxx_rmw(%struct.ar8xxx_priv* %31, i32 %32, i32 %33, i32 9028)
  %35 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %36 = load i32, i32* @AR8327_REG_MODULE_EN, align 4
  %37 = load i32, i32* @AR8327_MODULE_EN_MIB, align 4
  %38 = call i32 @ar8xxx_reg_set(%struct.ar8xxx_priv* %35, i32 %36, i32 %37)
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %50, %1
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @AR8XXX_NUM_PHYS, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load %struct.ar8327_data*, %struct.ar8327_data** %3, align 8
  %45 = getelementptr inbounds %struct.ar8327_data, %struct.ar8327_data* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 0, i32* %49, align 4
  br label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %39

53:                                               ; preds = %39
  ret void
}

declare dso_local i32 @ar8xxx_write(%struct.ar8xxx_priv*, i32, i32) #1

declare dso_local i32 @ar8xxx_rmw(%struct.ar8xxx_priv*, i32, i32, i32) #1

declare dso_local i32 @ar8xxx_reg_set(%struct.ar8xxx_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
