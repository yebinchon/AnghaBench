; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_brcm.c_brcm_ahci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_brcm.c_brcm_ahci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.of_device_id = type { i64 }
%struct.brcm_ahci_priv = type { i32, i32, i32, i32, %struct.ahci_host_priv*, %struct.device* }
%struct.ahci_host_priv = type { i32, %struct.brcm_ahci_priv* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ahci_of_match = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"top-ctrl\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ahci\00", align 1
@BRCM_SATA_BCM7425 = common dso_local global i64 0, align 8
@BRCM_SATA_NSP = common dso_local global i64 0, align 8
@BRCM_AHCI_QUIRK_NO_NCQ = common dso_local global i32 0, align 4
@BRCM_AHCI_QUIRK_SKIP_PHY_ENABLE = common dso_local global i32 0, align 4
@AHCI_HFLAG_WAKE_BEFORE_STOP = common dso_local global i32 0, align 4
@AHCI_HFLAG_NO_NCQ = common dso_local global i32 0, align 4
@AHCI_HFLAG_NO_WRITE_TO_RO = common dso_local global i32 0, align 4
@ahci_brcm_port_info = common dso_local global i32 0, align 4
@ahci_platform_sht = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Broadcom AHCI SATA3 registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @brcm_ahci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcm_ahci_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.brcm_ahci_priv*, align 8
  %7 = alloca %struct.ahci_host_priv*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.brcm_ahci_priv* @devm_kzalloc(%struct.device* %12, i32 32, i32 %13)
  store %struct.brcm_ahci_priv* %14, %struct.brcm_ahci_priv** %6, align 8
  %15 = load %struct.brcm_ahci_priv*, %struct.brcm_ahci_priv** %6, align 8
  %16 = icmp ne %struct.brcm_ahci_priv* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %171

20:                                               ; preds = %1
  %21 = load i32, i32* @ahci_of_match, align 4
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.of_device_id* @of_match_node(i32 %21, i32 %25)
  store %struct.of_device_id* %26, %struct.of_device_id** %4, align 8
  %27 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %28 = icmp ne %struct.of_device_id* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %171

32:                                               ; preds = %20
  %33 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %34 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load %struct.brcm_ahci_priv*, %struct.brcm_ahci_priv** %6, align 8
  %38 = getelementptr inbounds %struct.brcm_ahci_priv, %struct.brcm_ahci_priv* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = load %struct.brcm_ahci_priv*, %struct.brcm_ahci_priv** %6, align 8
  %41 = getelementptr inbounds %struct.brcm_ahci_priv, %struct.brcm_ahci_priv* %40, i32 0, i32 5
  store %struct.device* %39, %struct.device** %41, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = load i32, i32* @IORESOURCE_MEM, align 4
  %44 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %42, i32 %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %44, %struct.resource** %8, align 8
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = load %struct.resource*, %struct.resource** %8, align 8
  %47 = call %struct.ahci_host_priv* @devm_ioremap_resource(%struct.device* %45, %struct.resource* %46)
  %48 = load %struct.brcm_ahci_priv*, %struct.brcm_ahci_priv** %6, align 8
  %49 = getelementptr inbounds %struct.brcm_ahci_priv, %struct.brcm_ahci_priv* %48, i32 0, i32 4
  store %struct.ahci_host_priv* %47, %struct.ahci_host_priv** %49, align 8
  %50 = load %struct.brcm_ahci_priv*, %struct.brcm_ahci_priv** %6, align 8
  %51 = getelementptr inbounds %struct.brcm_ahci_priv, %struct.brcm_ahci_priv* %50, i32 0, i32 4
  %52 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %51, align 8
  %53 = call i64 @IS_ERR(%struct.ahci_host_priv* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %32
  %56 = load %struct.brcm_ahci_priv*, %struct.brcm_ahci_priv** %6, align 8
  %57 = getelementptr inbounds %struct.brcm_ahci_priv, %struct.brcm_ahci_priv* %56, i32 0, i32 4
  %58 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %57, align 8
  %59 = call i32 @PTR_ERR(%struct.ahci_host_priv* %58)
  store i32 %59, i32* %2, align 4
  br label %171

60:                                               ; preds = %32
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i32 @devm_reset_control_get(%struct.device* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.brcm_ahci_priv*, %struct.brcm_ahci_priv** %6, align 8
  %65 = getelementptr inbounds %struct.brcm_ahci_priv, %struct.brcm_ahci_priv* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.brcm_ahci_priv*, %struct.brcm_ahci_priv** %6, align 8
  %67 = getelementptr inbounds %struct.brcm_ahci_priv, %struct.brcm_ahci_priv* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @IS_ERR_OR_NULL(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %60
  %72 = load %struct.brcm_ahci_priv*, %struct.brcm_ahci_priv** %6, align 8
  %73 = getelementptr inbounds %struct.brcm_ahci_priv, %struct.brcm_ahci_priv* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @reset_control_deassert(i32 %74)
  br label %76

76:                                               ; preds = %71, %60
  %77 = load %struct.brcm_ahci_priv*, %struct.brcm_ahci_priv** %6, align 8
  %78 = getelementptr inbounds %struct.brcm_ahci_priv, %struct.brcm_ahci_priv* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* @BRCM_SATA_BCM7425, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %90, label %83

83:                                               ; preds = %76
  %84 = load %struct.brcm_ahci_priv*, %struct.brcm_ahci_priv** %6, align 8
  %85 = getelementptr inbounds %struct.brcm_ahci_priv, %struct.brcm_ahci_priv* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* @BRCM_SATA_NSP, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %83, %76
  %91 = load i32, i32* @BRCM_AHCI_QUIRK_NO_NCQ, align 4
  %92 = load %struct.brcm_ahci_priv*, %struct.brcm_ahci_priv** %6, align 8
  %93 = getelementptr inbounds %struct.brcm_ahci_priv, %struct.brcm_ahci_priv* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* @BRCM_AHCI_QUIRK_SKIP_PHY_ENABLE, align 4
  %97 = load %struct.brcm_ahci_priv*, %struct.brcm_ahci_priv** %6, align 8
  %98 = getelementptr inbounds %struct.brcm_ahci_priv, %struct.brcm_ahci_priv* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %90, %83
  %102 = load %struct.brcm_ahci_priv*, %struct.brcm_ahci_priv** %6, align 8
  %103 = call i32 @brcm_sata_init(%struct.brcm_ahci_priv* %102)
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = load %struct.brcm_ahci_priv*, %struct.brcm_ahci_priv** %6, align 8
  %106 = call i32 @brcm_ahci_get_portmask(%struct.platform_device* %104, %struct.brcm_ahci_priv* %105)
  %107 = load %struct.brcm_ahci_priv*, %struct.brcm_ahci_priv** %6, align 8
  %108 = getelementptr inbounds %struct.brcm_ahci_priv, %struct.brcm_ahci_priv* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load %struct.brcm_ahci_priv*, %struct.brcm_ahci_priv** %6, align 8
  %110 = getelementptr inbounds %struct.brcm_ahci_priv, %struct.brcm_ahci_priv* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %101
  %114 = load i32, i32* @ENODEV, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %2, align 4
  br label %171

116:                                              ; preds = %101
  %117 = load %struct.brcm_ahci_priv*, %struct.brcm_ahci_priv** %6, align 8
  %118 = call i32 @brcm_sata_phys_enable(%struct.brcm_ahci_priv* %117)
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = call %struct.ahci_host_priv* @ahci_platform_get_resources(%struct.platform_device* %119, i32 0)
  store %struct.ahci_host_priv* %120, %struct.ahci_host_priv** %7, align 8
  %121 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %7, align 8
  %122 = call i64 @IS_ERR(%struct.ahci_host_priv* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %116
  %125 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %7, align 8
  %126 = call i32 @PTR_ERR(%struct.ahci_host_priv* %125)
  store i32 %126, i32* %2, align 4
  br label %171

127:                                              ; preds = %116
  %128 = load %struct.brcm_ahci_priv*, %struct.brcm_ahci_priv** %6, align 8
  %129 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %7, align 8
  %130 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %129, i32 0, i32 1
  store %struct.brcm_ahci_priv* %128, %struct.brcm_ahci_priv** %130, align 8
  %131 = load i32, i32* @AHCI_HFLAG_WAKE_BEFORE_STOP, align 4
  %132 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %7, align 8
  %133 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %7, align 8
  %135 = call i32 @brcm_sata_alpm_init(%struct.ahci_host_priv* %134)
  %136 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %7, align 8
  %137 = call i32 @ahci_platform_enable_resources(%struct.ahci_host_priv* %136)
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %127
  %141 = load i32, i32* %9, align 4
  store i32 %141, i32* %2, align 4
  br label %171

142:                                              ; preds = %127
  %143 = load %struct.brcm_ahci_priv*, %struct.brcm_ahci_priv** %6, align 8
  %144 = getelementptr inbounds %struct.brcm_ahci_priv, %struct.brcm_ahci_priv* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @BRCM_AHCI_QUIRK_NO_NCQ, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %142
  %150 = load i32, i32* @AHCI_HFLAG_NO_NCQ, align 4
  %151 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %7, align 8
  %152 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  br label %155

155:                                              ; preds = %149, %142
  %156 = load i32, i32* @AHCI_HFLAG_NO_WRITE_TO_RO, align 4
  %157 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %7, align 8
  %158 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %7, align 8
  %163 = call i32 @ahci_platform_init_host(%struct.platform_device* %161, %struct.ahci_host_priv* %162, i32* @ahci_brcm_port_info, i32* @ahci_platform_sht)
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %155
  %167 = load i32, i32* %9, align 4
  store i32 %167, i32* %2, align 4
  br label %171

168:                                              ; preds = %155
  %169 = load %struct.device*, %struct.device** %5, align 8
  %170 = call i32 @dev_info(%struct.device* %169, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %171

171:                                              ; preds = %168, %166, %140, %124, %113, %55, %29, %17
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local %struct.brcm_ahci_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local %struct.ahci_host_priv* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.ahci_host_priv*) #1

declare dso_local i32 @PTR_ERR(%struct.ahci_host_priv*) #1

declare dso_local i32 @devm_reset_control_get(%struct.device*, i8*) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @brcm_sata_init(%struct.brcm_ahci_priv*) #1

declare dso_local i32 @brcm_ahci_get_portmask(%struct.platform_device*, %struct.brcm_ahci_priv*) #1

declare dso_local i32 @brcm_sata_phys_enable(%struct.brcm_ahci_priv*) #1

declare dso_local %struct.ahci_host_priv* @ahci_platform_get_resources(%struct.platform_device*, i32) #1

declare dso_local i32 @brcm_sata_alpm_init(%struct.ahci_host_priv*) #1

declare dso_local i32 @ahci_platform_enable_resources(%struct.ahci_host_priv*) #1

declare dso_local i32 @ahci_platform_init_host(%struct.platform_device*, %struct.ahci_host_priv*, i32*, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
