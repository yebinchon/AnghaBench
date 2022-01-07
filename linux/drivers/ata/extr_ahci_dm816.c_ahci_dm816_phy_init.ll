; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_dm816.c_ahci_dm816_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_dm816.c_ahci_dm816_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_host_priv = type { i64, i32* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"reference clock not supplied\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"reference clock rate must be divisible by 100\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"can't calculate the MPY bits value\0A\00", align 1
@AHCI_DM816_P0PHYCR_REG = common dso_local global i64 0, align 8
@AHCI_DM816_P1PHYCR_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahci_host_priv*, %struct.device*)* @ahci_dm816_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_dm816_phy_init(%struct.ahci_host_priv* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahci_host_priv*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ahci_host_priv* %0, %struct.ahci_host_priv** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %9 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %4, align 8
  %10 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call i32 @dev_err(%struct.device* %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %79

20:                                               ; preds = %2
  %21 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %4, align 8
  %22 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @clk_get_rate(i32 %25)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = urem i64 %27, 100
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %79

35:                                               ; preds = %20
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @ahci_dm816_get_mpy_bits(i64 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %79

45:                                               ; preds = %35
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @AHCI_DM816_PHY_MPY(i32 %46)
  %48 = call i32 @AHCI_DM816_PHY_LOS(i32 1)
  %49 = or i32 %47, %48
  %50 = call i32 @AHCI_DM816_PHY_RXCDR(i32 4)
  %51 = or i32 %49, %50
  %52 = call i32 @AHCI_DM816_PHY_RXEQ(i32 1)
  %53 = or i32 %51, %52
  %54 = call i32 @AHCI_DM816_PHY_TXSWING(i32 3)
  %55 = or i32 %53, %54
  %56 = call i32 @AHCI_DM816_PHY_ENPLL(i32 1)
  %57 = or i32 %55, %56
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %4, align 8
  %60 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @AHCI_DM816_P0PHYCR_REG, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 %58, i64 %63)
  %65 = call i32 @AHCI_DM816_PHY_LOS(i32 1)
  %66 = call i32 @AHCI_DM816_PHY_RXCDR(i32 4)
  %67 = or i32 %65, %66
  %68 = call i32 @AHCI_DM816_PHY_RXEQ(i32 1)
  %69 = or i32 %67, %68
  %70 = call i32 @AHCI_DM816_PHY_TXSWING(i32 3)
  %71 = or i32 %69, %70
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %4, align 8
  %74 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @AHCI_DM816_P1PHYCR_REG, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writel(i32 %72, i64 %77)
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %45, %40, %30, %15
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @ahci_dm816_get_mpy_bits(i64) #1

declare dso_local i32 @AHCI_DM816_PHY_MPY(i32) #1

declare dso_local i32 @AHCI_DM816_PHY_LOS(i32) #1

declare dso_local i32 @AHCI_DM816_PHY_RXCDR(i32) #1

declare dso_local i32 @AHCI_DM816_PHY_RXEQ(i32) #1

declare dso_local i32 @AHCI_DM816_PHY_TXSWING(i32) #1

declare dso_local i32 @AHCI_DM816_PHY_ENPLL(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
