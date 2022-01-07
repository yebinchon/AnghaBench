; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_mtk.c_mtk_ahci_parse_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_mtk.c_mtk_ahci_parse_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_host_priv = type { i32, %struct.mtk_ahci_plat* }
%struct.mtk_ahci_plat = type { i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"mediatek,phy-mode\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"missing phy-mode phandle\0A\00", align 1
@SYS_CFG = common dso_local global i32 0, align 4
@SYS_CFG_SATA_MSK = common dso_local global i32 0, align 4
@SYS_CFG_SATA_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"ports-implemented\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahci_host_priv*, %struct.device*)* @mtk_ahci_parse_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_ahci_parse_property(%struct.ahci_host_priv* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahci_host_priv*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.mtk_ahci_plat*, align 8
  %7 = alloca %struct.device_node*, align 8
  store %struct.ahci_host_priv* %0, %struct.ahci_host_priv** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %8 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %4, align 8
  %9 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %8, i32 0, i32 1
  %10 = load %struct.mtk_ahci_plat*, %struct.mtk_ahci_plat** %9, align 8
  store %struct.mtk_ahci_plat* %10, %struct.mtk_ahci_plat** %6, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %7, align 8
  %14 = load %struct.device_node*, %struct.device_node** %7, align 8
  %15 = call i64 @of_find_property(%struct.device_node* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* null)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %2
  %18 = load %struct.device_node*, %struct.device_node** %7, align 8
  %19 = call i32 @syscon_regmap_lookup_by_phandle(%struct.device_node* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.mtk_ahci_plat*, %struct.mtk_ahci_plat** %6, align 8
  %21 = getelementptr inbounds %struct.mtk_ahci_plat, %struct.mtk_ahci_plat* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.mtk_ahci_plat*, %struct.mtk_ahci_plat** %6, align 8
  %23 = getelementptr inbounds %struct.mtk_ahci_plat, %struct.mtk_ahci_plat* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @IS_ERR(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %17
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.mtk_ahci_plat*, %struct.mtk_ahci_plat** %6, align 8
  %31 = getelementptr inbounds %struct.mtk_ahci_plat, %struct.mtk_ahci_plat* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @PTR_ERR(i32 %32)
  store i32 %33, i32* %3, align 4
  br label %47

34:                                               ; preds = %17
  %35 = load %struct.mtk_ahci_plat*, %struct.mtk_ahci_plat** %6, align 8
  %36 = getelementptr inbounds %struct.mtk_ahci_plat, %struct.mtk_ahci_plat* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SYS_CFG, align 4
  %39 = load i32, i32* @SYS_CFG_SATA_MSK, align 4
  %40 = load i32, i32* @SYS_CFG_SATA_EN, align 4
  %41 = call i32 @regmap_update_bits(i32 %37, i32 %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %34, %2
  %43 = load %struct.device_node*, %struct.device_node** %7, align 8
  %44 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %4, align 8
  %45 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %44, i32 0, i32 0
  %46 = call i32 @of_property_read_u32(%struct.device_node* %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %42, %27
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
