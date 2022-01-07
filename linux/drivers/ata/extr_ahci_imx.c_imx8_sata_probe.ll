; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_imx.c_imx8_sata_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_imx.c_imx8_sata_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.imx_ahci_priv = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, %struct.platform_device* }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"fsl,phy-imp\00", align 1
@IMX8QM_SATA_PHY_IMPED_RATIO_85OHM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"error with ioremap\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"missing *phy* reg region.\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"hsio\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"unable to find gpr registers\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"epcs_tx\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"can't get epcs_tx_clk clock.\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"epcs_rx\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"can't get epcs_rx_clk clock.\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"phy_pclk0\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"can't get phy_pclk0 clock.\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"phy_pclk1\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"can't get phy_pclk1 clock.\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"phy_apbclk\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"can't get phy_apbclk clock.\0A\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"clkreq-gpio\00", align 1
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [12 x i8] c"SATA CLKREQ\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [30 x i8] c"clkreq had been initialized.\0A\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"%d unable to get clkreq.\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.imx_ahci_priv*)* @imx8_sata_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx8_sata_probe(%struct.device* %0, %struct.imx_ahci_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.imx_ahci_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.device_node*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.imx_ahci_priv* %1, %struct.imx_ahci_priv** %5, align 8
  %10 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %5, align 8
  %11 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %10, i32 0, i32 9
  %12 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  store %struct.platform_device* %12, %struct.platform_device** %8, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %9, align 8
  %16 = load %struct.device_node*, %struct.device_node** %9, align 8
  %17 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %5, align 8
  %18 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %17, i32 0, i32 8
  %19 = call i64 @of_property_read_u32(%struct.device_node* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @IMX8QM_SATA_PHY_IMPED_RATIO_85OHM, align 4
  %23 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %5, align 8
  %24 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %23, i32 0, i32 8
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %21, %2
  %26 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %27 = load i32, i32* @IORESOURCE_MEM, align 4
  %28 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %26, i32 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %28, %struct.resource** %7, align 8
  %29 = load %struct.resource*, %struct.resource** %7, align 8
  %30 = icmp ne %struct.resource* %29, null
  br i1 %30, label %31, label %51

31:                                               ; preds = %25
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load %struct.resource*, %struct.resource** %7, align 8
  %34 = getelementptr inbounds %struct.resource, %struct.resource* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.resource*, %struct.resource** %7, align 8
  %37 = call i32 @resource_size(%struct.resource* %36)
  %38 = call i32 @devm_ioremap(%struct.device* %32, i32 %35, i32 %37)
  %39 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %5, align 8
  %40 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 8
  %41 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %5, align 8
  %42 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %31
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %205

50:                                               ; preds = %31
  br label %56

51:                                               ; preds = %25
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %205

56:                                               ; preds = %50
  %57 = load %struct.device_node*, %struct.device_node** %9, align 8
  %58 = call i8* @syscon_regmap_lookup_by_phandle(%struct.device_node* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %59 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %5, align 8
  %60 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %59, i32 0, i32 6
  store i8* %58, i8** %60, align 8
  %61 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %5, align 8
  %62 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %61, i32 0, i32 6
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @IS_ERR(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %56
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %67, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %69 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %5, align 8
  %70 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %69, i32 0, i32 6
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @PTR_ERR(i8* %71)
  store i32 %72, i32* %3, align 4
  br label %205

73:                                               ; preds = %56
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = call i8* @devm_clk_get(%struct.device* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %76 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %5, align 8
  %77 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %76, i32 0, i32 5
  store i8* %75, i8** %77, align 8
  %78 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %5, align 8
  %79 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %78, i32 0, i32 5
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @IS_ERR(i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %73
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %84, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %86 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %5, align 8
  %87 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %86, i32 0, i32 5
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @PTR_ERR(i8* %88)
  store i32 %89, i32* %3, align 4
  br label %205

90:                                               ; preds = %73
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = call i8* @devm_clk_get(%struct.device* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %93 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %5, align 8
  %94 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %93, i32 0, i32 4
  store i8* %92, i8** %94, align 8
  %95 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %5, align 8
  %96 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %95, i32 0, i32 4
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @IS_ERR(i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %90
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %101, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  %103 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %5, align 8
  %104 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %103, i32 0, i32 4
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @PTR_ERR(i8* %105)
  store i32 %106, i32* %3, align 4
  br label %205

107:                                              ; preds = %90
  %108 = load %struct.device*, %struct.device** %4, align 8
  %109 = call i8* @devm_clk_get(%struct.device* %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %110 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %5, align 8
  %111 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %110, i32 0, i32 3
  store i8* %109, i8** %111, align 8
  %112 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %5, align 8
  %113 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %112, i32 0, i32 3
  %114 = load i8*, i8** %113, align 8
  %115 = call i64 @IS_ERR(i8* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %107
  %118 = load %struct.device*, %struct.device** %4, align 8
  %119 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %118, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %120 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %5, align 8
  %121 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %120, i32 0, i32 3
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @PTR_ERR(i8* %122)
  store i32 %123, i32* %3, align 4
  br label %205

124:                                              ; preds = %107
  %125 = load %struct.device*, %struct.device** %4, align 8
  %126 = call i8* @devm_clk_get(%struct.device* %125, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %127 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %5, align 8
  %128 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %127, i32 0, i32 2
  store i8* %126, i8** %128, align 8
  %129 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %5, align 8
  %130 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %129, i32 0, i32 2
  %131 = load i8*, i8** %130, align 8
  %132 = call i64 @IS_ERR(i8* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %124
  %135 = load %struct.device*, %struct.device** %4, align 8
  %136 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %135, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  %137 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %5, align 8
  %138 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %137, i32 0, i32 2
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @PTR_ERR(i8* %139)
  store i32 %140, i32* %3, align 4
  br label %205

141:                                              ; preds = %124
  %142 = load %struct.device*, %struct.device** %4, align 8
  %143 = call i8* @devm_clk_get(%struct.device* %142, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  %144 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %5, align 8
  %145 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %144, i32 0, i32 1
  store i8* %143, i8** %145, align 8
  %146 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %5, align 8
  %147 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = call i64 @IS_ERR(i8* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %141
  %152 = load %struct.device*, %struct.device** %4, align 8
  %153 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %152, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0))
  %154 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %5, align 8
  %155 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @PTR_ERR(i8* %156)
  store i32 %157, i32* %3, align 4
  br label %205

158:                                              ; preds = %141
  %159 = load %struct.device_node*, %struct.device_node** %9, align 8
  %160 = call i32 @of_get_named_gpio(%struct.device_node* %159, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 0)
  %161 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %5, align 8
  %162 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %5, align 8
  %164 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i64 @gpio_is_valid(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %192

168:                                              ; preds = %158
  %169 = load %struct.device*, %struct.device** %4, align 8
  %170 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %5, align 8
  %171 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %174 = call i32 @devm_gpio_request_one(%struct.device* %169, i32 %172, i32 %173, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  store i32 %174, i32* %6, align 4
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* @EBUSY, align 4
  %177 = sub nsw i32 0, %176
  %178 = icmp eq i32 %175, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %168
  %180 = load %struct.device*, %struct.device** %4, align 8
  %181 = call i32 @dev_info(%struct.device* %180, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0))
  br label %191

182:                                              ; preds = %168
  %183 = load i32, i32* %6, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %182
  %186 = load %struct.device*, %struct.device** %4, align 8
  %187 = load i32, i32* %6, align 4
  %188 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %186, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0), i32 %187)
  %189 = load i32, i32* %6, align 4
  store i32 %189, i32* %3, align 4
  br label %205

190:                                              ; preds = %182
  br label %191

191:                                              ; preds = %190, %179
  br label %204

192:                                              ; preds = %158
  %193 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %5, align 8
  %194 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @EPROBE_DEFER, align 4
  %197 = sub nsw i32 0, %196
  %198 = icmp eq i32 %195, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %192
  %200 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %5, align 8
  %201 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  store i32 %202, i32* %3, align 4
  br label %205

203:                                              ; preds = %192
  br label %204

204:                                              ; preds = %203, %191
  store i32 0, i32* %3, align 4
  br label %205

205:                                              ; preds = %204, %199, %185, %151, %134, %117, %100, %83, %66, %51, %45
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @devm_ioremap(%struct.device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i8* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request_one(%struct.device*, i32, i32, i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
