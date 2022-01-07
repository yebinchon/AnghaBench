; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_imx.c_imx_ahci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_imx.c_imx_ahci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i64, %struct.imx_ahci_priv* }
%struct.imx_ahci_priv = type { i32, i32, i32, i32, %struct.device*, %struct.device*, %struct.device*, %struct.device*, %struct.platform_device* }
%struct.of_device_id = type { i64 }
%struct.ahci_host_priv = type { i64, %struct.imx_ahci_priv* }

@imx_ahci_of_match = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"sata\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"can't get sata clock.\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"sata_ref\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"can't get sata_ref clock.\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"can't get ahb clock.\0A\00", align 1
@AHCI_IMX6Q = common dso_local global i64 0, align 8
@AHCI_IMX6QP = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"fsl,imx6q-iomuxc-gpr\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"failed to find fsl,imx6q-iomux-gpr regmap\0A\00", align 1
@gpr13_props = common dso_local global i32 0, align 4
@IMX6Q_GPR13_SATA_RX_LOS_LVL_SATA2M = common dso_local global i32 0, align 4
@IMX6Q_GPR13_SATA_RX_DPLL_MODE_2P_4F = common dso_local global i32 0, align 4
@IMX6Q_GPR13_SATA_SPD_MODE_3P0G = common dso_local global i32 0, align 4
@AHCI_IMX8QM = common dso_local global i64 0, align 8
@AHCI_IMX53 = common dso_local global i64 0, align 8
@CONFIG_HWMON = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"sata_ahci\00", align 1
@fsl_sata_ahci_groups = common dso_local global i32 0, align 4
@fsl_sata_ahci_of_thermal_ops = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"%s: sensor 'sata_ahci'\0A\00", align 1
@HOST_CAP = common dso_local global i64 0, align 8
@HOST_CAP_SSS = common dso_local global i32 0, align 4
@HOST_PORTS_IMPL = common dso_local global i64 0, align 8
@IMX_TIMER1MS = common dso_local global i64 0, align 8
@ahci_imx_port_info = common dso_local global i32 0, align 4
@ahci_platform_sht = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_ahci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_ahci_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.ahci_host_priv*, align 8
  %7 = alloca %struct.imx_ahci_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load i32, i32* @imx_ahci_of_match, align 4
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.of_device_id* @of_match_device(i32 %14, %struct.device* %15)
  store %struct.of_device_id* %16, %struct.of_device_id** %5, align 8
  %17 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %18 = icmp ne %struct.of_device_id* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %295

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.imx_ahci_priv* @devm_kzalloc(%struct.device* %23, i32 56, i32 %24)
  store %struct.imx_ahci_priv* %25, %struct.imx_ahci_priv** %7, align 8
  %26 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %7, align 8
  %27 = icmp ne %struct.imx_ahci_priv* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %295

31:                                               ; preds = %22
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %7, align 8
  %34 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %33, i32 0, i32 8
  store %struct.platform_device* %32, %struct.platform_device** %34, align 8
  %35 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %7, align 8
  %36 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %7, align 8
  %38 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %40 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %7, align 8
  %44 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = call i8* @devm_clk_get(%struct.device* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %47 = bitcast i8* %46 to %struct.device*
  %48 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %7, align 8
  %49 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %48, i32 0, i32 4
  store %struct.device* %47, %struct.device** %49, align 8
  %50 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %7, align 8
  %51 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %50, i32 0, i32 4
  %52 = load %struct.device*, %struct.device** %51, align 8
  %53 = call i64 @IS_ERR(%struct.device* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %31
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %7, align 8
  %59 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %58, i32 0, i32 4
  %60 = load %struct.device*, %struct.device** %59, align 8
  %61 = call i32 @PTR_ERR(%struct.device* %60)
  store i32 %61, i32* %2, align 4
  br label %295

62:                                               ; preds = %31
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = call i8* @devm_clk_get(%struct.device* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %65 = bitcast i8* %64 to %struct.device*
  %66 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %7, align 8
  %67 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %66, i32 0, i32 7
  store %struct.device* %65, %struct.device** %67, align 8
  %68 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %7, align 8
  %69 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %68, i32 0, i32 7
  %70 = load %struct.device*, %struct.device** %69, align 8
  %71 = call i64 @IS_ERR(%struct.device* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %62
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %76 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %7, align 8
  %77 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %76, i32 0, i32 7
  %78 = load %struct.device*, %struct.device** %77, align 8
  %79 = call i32 @PTR_ERR(%struct.device* %78)
  store i32 %79, i32* %2, align 4
  br label %295

80:                                               ; preds = %62
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = call i8* @devm_clk_get(%struct.device* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %83 = bitcast i8* %82 to %struct.device*
  %84 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %7, align 8
  %85 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %84, i32 0, i32 5
  store %struct.device* %83, %struct.device** %85, align 8
  %86 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %7, align 8
  %87 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %86, i32 0, i32 5
  %88 = load %struct.device*, %struct.device** %87, align 8
  %89 = call i64 @IS_ERR(%struct.device* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %80
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = call i32 @dev_err(%struct.device* %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %94 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %7, align 8
  %95 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %94, i32 0, i32 5
  %96 = load %struct.device*, %struct.device** %95, align 8
  %97 = call i32 @PTR_ERR(%struct.device* %96)
  store i32 %97, i32* %2, align 4
  br label %295

98:                                               ; preds = %80
  %99 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %7, align 8
  %100 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* @AHCI_IMX6Q, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %112, label %105

105:                                              ; preds = %98
  %106 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %7, align 8
  %107 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* @AHCI_IMX6QP, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %143

112:                                              ; preds = %105, %98
  %113 = call %struct.device* @syscon_regmap_lookup_by_compatible(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %114 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %7, align 8
  %115 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %114, i32 0, i32 6
  store %struct.device* %113, %struct.device** %115, align 8
  %116 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %7, align 8
  %117 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %116, i32 0, i32 6
  %118 = load %struct.device*, %struct.device** %117, align 8
  %119 = call i64 @IS_ERR(%struct.device* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %112
  %122 = load %struct.device*, %struct.device** %4, align 8
  %123 = call i32 @dev_err(%struct.device* %122, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  %124 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %7, align 8
  %125 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %124, i32 0, i32 6
  %126 = load %struct.device*, %struct.device** %125, align 8
  %127 = call i32 @PTR_ERR(%struct.device* %126)
  store i32 %127, i32* %2, align 4
  br label %295

128:                                              ; preds = %112
  %129 = load %struct.device*, %struct.device** %4, align 8
  %130 = load i32, i32* @gpr13_props, align 4
  %131 = load i32, i32* @gpr13_props, align 4
  %132 = call i32 @ARRAY_SIZE(i32 %131)
  %133 = call i32 @imx_ahci_parse_props(%struct.device* %129, i32 %130, i32 %132)
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* @IMX6Q_GPR13_SATA_RX_LOS_LVL_SATA2M, align 4
  %135 = load i32, i32* @IMX6Q_GPR13_SATA_RX_DPLL_MODE_2P_4F, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @IMX6Q_GPR13_SATA_SPD_MODE_3P0G, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* %10, align 4
  %140 = or i32 %138, %139
  %141 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %7, align 8
  %142 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 4
  br label %160

143:                                              ; preds = %105
  %144 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %7, align 8
  %145 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = load i64, i64* @AHCI_IMX8QM, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %159

150:                                              ; preds = %143
  %151 = load %struct.device*, %struct.device** %4, align 8
  %152 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %7, align 8
  %153 = call i32 @imx8_sata_probe(%struct.device* %151, %struct.imx_ahci_priv* %152)
  store i32 %153, i32* %9, align 4
  %154 = load i32, i32* %9, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %150
  %157 = load i32, i32* %9, align 4
  store i32 %157, i32* %2, align 4
  br label %295

158:                                              ; preds = %150
  br label %159

159:                                              ; preds = %158, %143
  br label %160

160:                                              ; preds = %159, %128
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = call %struct.device* @ahci_platform_get_resources(%struct.platform_device* %161, i32 0)
  %163 = bitcast %struct.device* %162 to %struct.ahci_host_priv*
  store %struct.ahci_host_priv* %163, %struct.ahci_host_priv** %6, align 8
  %164 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %165 = bitcast %struct.ahci_host_priv* %164 to %struct.device*
  %166 = call i64 @IS_ERR(%struct.device* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %160
  %169 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %170 = bitcast %struct.ahci_host_priv* %169 to %struct.device*
  %171 = call i32 @PTR_ERR(%struct.device* %170)
  store i32 %171, i32* %2, align 4
  br label %295

172:                                              ; preds = %160
  %173 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %7, align 8
  %174 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %175 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %174, i32 0, i32 1
  store %struct.imx_ahci_priv* %173, %struct.imx_ahci_priv** %175, align 8
  %176 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %7, align 8
  %177 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %176, i32 0, i32 4
  %178 = load %struct.device*, %struct.device** %177, align 8
  %179 = call i32 @clk_prepare_enable(%struct.device* %178)
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %172
  %183 = load i32, i32* %9, align 4
  store i32 %183, i32* %2, align 4
  br label %295

184:                                              ; preds = %172
  %185 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %7, align 8
  %186 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = sext i32 %187 to i64
  %189 = load i64, i64* @AHCI_IMX53, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %215

191:                                              ; preds = %184
  %192 = load i32, i32* @CONFIG_HWMON, align 4
  %193 = call i64 @IS_ENABLED(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %215

195:                                              ; preds = %191
  %196 = load %struct.device*, %struct.device** %4, align 8
  %197 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %198 = bitcast %struct.ahci_host_priv* %197 to %struct.device*
  %199 = load i32, i32* @fsl_sata_ahci_groups, align 4
  %200 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %196, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), %struct.device* %198, i32 %199)
  store %struct.device* %200, %struct.device** %11, align 8
  %201 = load %struct.device*, %struct.device** %11, align 8
  %202 = call i64 @IS_ERR(%struct.device* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %195
  %205 = load %struct.device*, %struct.device** %11, align 8
  %206 = call i32 @PTR_ERR(%struct.device* %205)
  store i32 %206, i32* %9, align 4
  br label %289

207:                                              ; preds = %195
  %208 = load %struct.device*, %struct.device** %11, align 8
  %209 = load %struct.device*, %struct.device** %11, align 8
  %210 = call i32 @devm_thermal_zone_of_sensor_register(%struct.device* %208, i32 0, %struct.device* %209, i32* @fsl_sata_ahci_of_thermal_ops)
  %211 = load %struct.device*, %struct.device** %4, align 8
  %212 = load %struct.device*, %struct.device** %11, align 8
  %213 = call i32 @dev_name(%struct.device* %212)
  %214 = call i32 @dev_info(%struct.device* %211, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %213)
  br label %215

215:                                              ; preds = %207, %191, %184
  %216 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %217 = bitcast %struct.ahci_host_priv* %216 to %struct.device*
  %218 = call i32 @imx_sata_enable(%struct.device* %217)
  store i32 %218, i32* %9, align 4
  %219 = load i32, i32* %9, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %215
  br label %289

222:                                              ; preds = %215
  %223 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %224 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @HOST_CAP, align 8
  %227 = add nsw i64 %225, %226
  %228 = call i32 @readl(i64 %227)
  store i32 %228, i32* %8, align 4
  %229 = load i32, i32* %8, align 4
  %230 = load i32, i32* @HOST_CAP_SSS, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %244, label %233

233:                                              ; preds = %222
  %234 = load i32, i32* @HOST_CAP_SSS, align 4
  %235 = load i32, i32* %8, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %8, align 4
  %237 = load i32, i32* %8, align 4
  %238 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %239 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @HOST_CAP, align 8
  %242 = add nsw i64 %240, %241
  %243 = call i32 @writel(i32 %237, i64 %242)
  br label %244

244:                                              ; preds = %233, %222
  %245 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %246 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @HOST_PORTS_IMPL, align 8
  %249 = add nsw i64 %247, %248
  %250 = call i32 @readl(i64 %249)
  store i32 %250, i32* %8, align 4
  %251 = load i32, i32* %8, align 4
  %252 = and i32 %251, 1
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %264, label %254

254:                                              ; preds = %244
  %255 = load i32, i32* %8, align 4
  %256 = or i32 %255, 1
  store i32 %256, i32* %8, align 4
  %257 = load i32, i32* %8, align 4
  %258 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %259 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @HOST_PORTS_IMPL, align 8
  %262 = add nsw i64 %260, %261
  %263 = call i32 @writel(i32 %257, i64 %262)
  br label %264

264:                                              ; preds = %254, %244
  %265 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %7, align 8
  %266 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %265, i32 0, i32 5
  %267 = load %struct.device*, %struct.device** %266, align 8
  %268 = call i32 @clk_get_rate(%struct.device* %267)
  %269 = sdiv i32 %268, 1000
  store i32 %269, i32* %8, align 4
  %270 = load i32, i32* %8, align 4
  %271 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %272 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @IMX_TIMER1MS, align 8
  %275 = add nsw i64 %273, %274
  %276 = call i32 @writel(i32 %270, i64 %275)
  %277 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %278 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %279 = bitcast %struct.ahci_host_priv* %278 to %struct.device*
  %280 = call i32 @ahci_platform_init_host(%struct.platform_device* %277, %struct.device* %279, i32* @ahci_imx_port_info, i32* @ahci_platform_sht)
  store i32 %280, i32* %9, align 4
  %281 = load i32, i32* %9, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %264
  br label %285

284:                                              ; preds = %264
  store i32 0, i32* %2, align 4
  br label %295

285:                                              ; preds = %283
  %286 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %287 = bitcast %struct.ahci_host_priv* %286 to %struct.device*
  %288 = call i32 @imx_sata_disable(%struct.device* %287)
  br label %289

289:                                              ; preds = %285, %221, %204
  %290 = load %struct.imx_ahci_priv*, %struct.imx_ahci_priv** %7, align 8
  %291 = getelementptr inbounds %struct.imx_ahci_priv, %struct.imx_ahci_priv* %290, i32 0, i32 4
  %292 = load %struct.device*, %struct.device** %291, align 8
  %293 = call i32 @clk_disable_unprepare(%struct.device* %292)
  %294 = load i32, i32* %9, align 4
  store i32 %294, i32* %2, align 4
  br label %295

295:                                              ; preds = %289, %284, %182, %168, %156, %121, %91, %73, %55, %28, %19
  %296 = load i32, i32* %2, align 4
  ret i32 %296
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local %struct.imx_ahci_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local %struct.device* @syscon_regmap_lookup_by_compatible(i8*) #1

declare dso_local i32 @imx_ahci_parse_props(%struct.device*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @imx8_sata_probe(%struct.device*, %struct.imx_ahci_priv*) #1

declare dso_local %struct.device* @ahci_platform_get_resources(%struct.platform_device*, i32) #1

declare dso_local i32 @clk_prepare_enable(%struct.device*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i8*, %struct.device*, i32) #1

declare dso_local i32 @devm_thermal_zone_of_sensor_register(%struct.device*, i32, %struct.device*, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @imx_sata_enable(%struct.device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clk_get_rate(%struct.device*) #1

declare dso_local i32 @ahci_platform_init_host(%struct.platform_device*, %struct.device*, i32*, i32*) #1

declare dso_local i32 @imx_sata_disable(%struct.device*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
