; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_set_port_igmp.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_set_port_igmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { i32 }

@AR8327_FRAME_ACK_CTRL_IGMP_MLD = common dso_local global i32 0, align 4
@AR8327_FRAME_ACK_CTRL_IGMP_JOIN = common dso_local global i32 0, align 4
@AR8327_FRAME_ACK_CTRL_IGMP_LEAVE = common dso_local global i32 0, align 4
@AR8327_REG_FWD_CTRL1 = common dso_local global i32 0, align 4
@AR8327_FWD_CTRL1_MC_FLOOD_S = common dso_local global i32 0, align 4
@AR8327_FWD_CTRL1_IGMP_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar8xxx_priv*, i32, i32)* @ar8327_set_port_igmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar8327_set_port_igmp(%struct.ar8xxx_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ar8xxx_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @AR8327_REG_FRAME_ACK_CTRL(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @AR8327_FRAME_ACK_CTRL_IGMP_MLD, align 4
  %12 = load i32, i32* @AR8327_FRAME_ACK_CTRL_IGMP_JOIN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @AR8327_FRAME_ACK_CTRL_IGMP_LEAVE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @AR8327_FRAME_ACK_CTRL_S(i32 %16)
  %18 = shl i32 %15, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %3
  %22 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %23 = load i32, i32* @AR8327_REG_FWD_CTRL1, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @BIT(i32 %24)
  %26 = load i32, i32* @AR8327_FWD_CTRL1_MC_FLOOD_S, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @BIT(i32 %28)
  %30 = load i32, i32* @AR8327_FWD_CTRL1_IGMP_S, align 4
  %31 = shl i32 %29, %30
  %32 = call i32 @ar8xxx_rmw(%struct.ar8xxx_priv* %22, i32 %23, i32 %27, i32 %31)
  %33 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @ar8xxx_reg_set(%struct.ar8xxx_priv* %33, i32 %34, i32 %35)
  br label %53

37:                                               ; preds = %3
  %38 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %39 = load i32, i32* @AR8327_REG_FWD_CTRL1, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @BIT(i32 %40)
  %42 = load i32, i32* @AR8327_FWD_CTRL1_IGMP_S, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @BIT(i32 %44)
  %46 = load i32, i32* @AR8327_FWD_CTRL1_MC_FLOOD_S, align 4
  %47 = shl i32 %45, %46
  %48 = call i32 @ar8xxx_rmw(%struct.ar8xxx_priv* %38, i32 %39, i32 %43, i32 %47)
  %49 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @ar8xxx_reg_clear(%struct.ar8xxx_priv* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %37, %21
  ret void
}

declare dso_local i32 @AR8327_REG_FRAME_ACK_CTRL(i32) #1

declare dso_local i32 @AR8327_FRAME_ACK_CTRL_S(i32) #1

declare dso_local i32 @ar8xxx_rmw(%struct.ar8xxx_priv*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ar8xxx_reg_set(%struct.ar8xxx_priv*, i32, i32) #1

declare dso_local i32 @ar8xxx_reg_clear(%struct.ar8xxx_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
