; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240sw_setup.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240sw_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar7240sw = type { %struct.mii_bus* }
%struct.mii_bus = type { i32 }

@AR7240_REG_CPU_PORT = common dso_local global i32 0, align 4
@AR7240_CPU_PORT_EN = common dso_local global i32 0, align 4
@AR7240_MIRROR_PORT_S = common dso_local global i32 0, align 4
@AR7240_REG_TAG_PRIORITY = common dso_local global i32 0, align 4
@AR934X_REG_AT_CTRL = common dso_local global i32 0, align 4
@AR934X_AT_CTRL_AGE_EN = common dso_local global i32 0, align 4
@AR934X_AT_CTRL_LEARN_CHANGE = common dso_local global i32 0, align 4
@AR934X_REG_QM_CTRL = common dso_local global i32 0, align 4
@AR934X_QM_CTRL_ARP_EN = common dso_local global i32 0, align 4
@AR934X_REG_FLOOD_MASK = common dso_local global i32 0, align 4
@AR7240_REG_GLOBAL_CTRL = common dso_local global i32 0, align 4
@AR9340_GLOBAL_CTRL_MTU_M = common dso_local global i32 0, align 4
@AR7240_REG_MIB_FUNCTION0 = common dso_local global i32 0, align 4
@AR934X_MIB_ENABLE = common dso_local global i32 0, align 4
@AR7240_REG_AT_CTRL = common dso_local global i32 0, align 4
@AR7240_AT_CTRL_RESERVED = common dso_local global i32 0, align 4
@AR7240_AT_CTRL_AGE_EN = common dso_local global i32 0, align 4
@AR7240_AT_CTRL_ARP_EN = common dso_local global i32 0, align 4
@AR7240_AT_CTRL_LEARN_CHANGE = common dso_local global i32 0, align 4
@AR7240_REG_FLOOD_MASK = common dso_local global i32 0, align 4
@AR7240_FLOOD_MASK_BROAD_TO_CPU = common dso_local global i32 0, align 4
@AR7240_GLOBAL_CTRL_MTU_M = common dso_local global i32 0, align 4
@AR7240_REG_SERVICE_TAG = common dso_local global i32 0, align 4
@AR7240_SERVICE_TAG_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar7240sw*)* @ar7240sw_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar7240sw_setup(%struct.ar7240sw* %0) #0 {
  %2 = alloca %struct.ar7240sw*, align 8
  %3 = alloca %struct.mii_bus*, align 8
  store %struct.ar7240sw* %0, %struct.ar7240sw** %2, align 8
  %4 = load %struct.ar7240sw*, %struct.ar7240sw** %2, align 8
  %5 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %4, i32 0, i32 0
  %6 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  store %struct.mii_bus* %6, %struct.mii_bus** %3, align 8
  %7 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %8 = load i32, i32* @AR7240_REG_CPU_PORT, align 4
  %9 = load i32, i32* @AR7240_CPU_PORT_EN, align 4
  %10 = load i32, i32* @AR7240_MIRROR_PORT_S, align 4
  %11 = shl i32 15, %10
  %12 = or i32 %9, %11
  %13 = call i32 @ar7240sw_reg_write(%struct.mii_bus* %7, i32 %8, i32 %12)
  %14 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %15 = load i32, i32* @AR7240_REG_TAG_PRIORITY, align 4
  %16 = call i32 @ar7240sw_reg_write(%struct.mii_bus* %14, i32 %15, i32 64080)
  %17 = load %struct.ar7240sw*, %struct.ar7240sw** %2, align 8
  %18 = call i64 @sw_is_ar934x(%struct.ar7240sw* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %1
  %21 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %22 = load i32, i32* @AR934X_REG_AT_CTRL, align 4
  %23 = load i32, i32* @AR934X_AT_CTRL_AGE_EN, align 4
  %24 = or i32 43, %23
  %25 = load i32, i32* @AR934X_AT_CTRL_LEARN_CHANGE, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @ar7240sw_reg_write(%struct.mii_bus* %21, i32 %22, i32 %26)
  %28 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %29 = load i32, i32* @AR934X_REG_QM_CTRL, align 4
  %30 = load i32, i32* @AR934X_QM_CTRL_ARP_EN, align 4
  %31 = call i32 @ar7240sw_reg_set(%struct.mii_bus* %28, i32 %29, i32 %30)
  %32 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %33 = load i32, i32* @AR934X_REG_FLOOD_MASK, align 4
  %34 = call i32 @AR934X_FLOOD_MASK_BC_DP(i32 0)
  %35 = call i32 @AR934X_FLOOD_MASK_MC_DP(i32 0)
  %36 = or i32 %34, %35
  %37 = call i32 @ar7240sw_reg_set(%struct.mii_bus* %32, i32 %33, i32 %36)
  %38 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %39 = load i32, i32* @AR7240_REG_GLOBAL_CTRL, align 4
  %40 = load i32, i32* @AR9340_GLOBAL_CTRL_MTU_M, align 4
  %41 = load i32, i32* @AR9340_GLOBAL_CTRL_MTU_M, align 4
  %42 = call i32 @ar7240sw_reg_rmw(%struct.mii_bus* %38, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %44 = load i32, i32* @AR7240_REG_MIB_FUNCTION0, align 4
  %45 = load i32, i32* @AR934X_MIB_ENABLE, align 4
  %46 = call i32 @ar7240sw_reg_set(%struct.mii_bus* %43, i32 %44, i32 %45)
  br label %68

47:                                               ; preds = %1
  %48 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %49 = load i32, i32* @AR7240_REG_AT_CTRL, align 4
  %50 = load i32, i32* @AR7240_AT_CTRL_RESERVED, align 4
  %51 = or i32 %50, 43
  %52 = load i32, i32* @AR7240_AT_CTRL_AGE_EN, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @AR7240_AT_CTRL_ARP_EN, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @AR7240_AT_CTRL_LEARN_CHANGE, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @ar7240sw_reg_write(%struct.mii_bus* %48, i32 %49, i32 %57)
  %59 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %60 = load i32, i32* @AR7240_REG_FLOOD_MASK, align 4
  %61 = load i32, i32* @AR7240_FLOOD_MASK_BROAD_TO_CPU, align 4
  %62 = call i32 @ar7240sw_reg_set(%struct.mii_bus* %59, i32 %60, i32 %61)
  %63 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %64 = load i32, i32* @AR7240_REG_GLOBAL_CTRL, align 4
  %65 = load i32, i32* @AR7240_GLOBAL_CTRL_MTU_M, align 4
  %66 = load i32, i32* @AR7240_GLOBAL_CTRL_MTU_M, align 4
  %67 = call i32 @ar7240sw_reg_rmw(%struct.mii_bus* %63, i32 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %47, %20
  %69 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %70 = load i32, i32* @AR7240_REG_SERVICE_TAG, align 4
  %71 = load i32, i32* @AR7240_SERVICE_TAG_M, align 4
  %72 = call i32 @ar7240sw_reg_rmw(%struct.mii_bus* %69, i32 %70, i32 %71, i32 0)
  ret void
}

declare dso_local i32 @ar7240sw_reg_write(%struct.mii_bus*, i32, i32) #1

declare dso_local i64 @sw_is_ar934x(%struct.ar7240sw*) #1

declare dso_local i32 @ar7240sw_reg_set(%struct.mii_bus*, i32, i32) #1

declare dso_local i32 @AR934X_FLOOD_MASK_BC_DP(i32) #1

declare dso_local i32 @AR934X_FLOOD_MASK_MC_DP(i32) #1

declare dso_local i32 @ar7240sw_reg_rmw(%struct.mii_bus*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
