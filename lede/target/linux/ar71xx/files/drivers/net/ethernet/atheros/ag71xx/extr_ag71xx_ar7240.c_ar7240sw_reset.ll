; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240sw_reset.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240sw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar7240sw = type { %struct.mii_bus* }
%struct.mii_bus = type { i32 }

@AR7240_NUM_PORTS = common dso_local global i32 0, align 4
@AR7240_REG_MASK_CTRL = common dso_local global i32 0, align 4
@AR7240_MASK_CTRL_SOFT_RESET = common dso_local global i32 0, align 4
@AR7240_NUM_PHYS = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_ALL = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar7240sw*)* @ar7240sw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar7240sw_reset(%struct.ar7240sw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar7240sw*, align 8
  %4 = alloca %struct.mii_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ar7240sw* %0, %struct.ar7240sw** %3, align 8
  %7 = load %struct.ar7240sw*, %struct.ar7240sw** %3, align 8
  %8 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %7, i32 0, i32 0
  %9 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  store %struct.mii_bus* %9, %struct.mii_bus** %4, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %18, %1
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @AR7240_NUM_PORTS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load %struct.ar7240sw*, %struct.ar7240sw** %3, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @ar7240sw_disable_port(%struct.ar7240sw* %15, i32 %16)
  br label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %6, align 4
  br label %10

21:                                               ; preds = %10
  %22 = call i32 @usleep_range(i32 2000, i32 3000)
  %23 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %24 = load i32, i32* @AR7240_REG_MASK_CTRL, align 4
  %25 = load i32, i32* @AR7240_MASK_CTRL_SOFT_RESET, align 4
  %26 = call i32 @ar7240sw_reg_write(%struct.mii_bus* %23, i32 %24, i32 %25)
  %27 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %28 = load i32, i32* @AR7240_REG_MASK_CTRL, align 4
  %29 = load i32, i32* @AR7240_MASK_CTRL_SOFT_RESET, align 4
  %30 = call i32 @ar7240sw_reg_wait(%struct.mii_bus* %27, i32 %28, i32 %29, i32 0, i32 1000)
  store i32 %30, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %52, %21
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @AR7240_NUM_PHYS, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  %36 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @MII_ADVERTISE, align 4
  %39 = load i32, i32* @ADVERTISE_ALL, align 4
  %40 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @ar7240sw_phy_write(%struct.mii_bus* %36, i32 %37, i32 %38, i32 %43)
  %45 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @MII_BMCR, align 4
  %48 = load i32, i32* @BMCR_RESET, align 4
  %49 = load i32, i32* @BMCR_ANENABLE, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @ar7240sw_phy_write(%struct.mii_bus* %45, i32 %46, i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %35
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %31

55:                                               ; preds = %31
  %56 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %57 = call i32 @ar7240sw_phy_poll_reset(%struct.mii_bus* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %66

62:                                               ; preds = %55
  %63 = load %struct.ar7240sw*, %struct.ar7240sw** %3, align 8
  %64 = call i32 @ar7240sw_setup(%struct.ar7240sw* %63)
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %62, %60
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @ar7240sw_disable_port(%struct.ar7240sw*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ar7240sw_reg_write(%struct.mii_bus*, i32, i32) #1

declare dso_local i32 @ar7240sw_reg_wait(%struct.mii_bus*, i32, i32, i32, i32) #1

declare dso_local i32 @ar7240sw_phy_write(%struct.mii_bus*, i32, i32, i32) #1

declare dso_local i32 @ar7240sw_phy_poll_reset(%struct.mii_bus*) #1

declare dso_local i32 @ar7240sw_setup(%struct.ar7240sw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
