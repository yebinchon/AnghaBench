; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_tegra.c_tegra_ahci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_tegra.c_tegra_ahci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ahci_host_priv = type { %struct.tegra_ahci_priv* }
%struct.tegra_ahci_priv = type { %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.ahci_host_priv*, %struct.ahci_host_priv*, %struct.ahci_host_priv*, %struct.ahci_host_priv*, %struct.ahci_host_priv*, %struct.ahci_host_priv*, %struct.platform_device* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"sata\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to get sata reset\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"sata-oob\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to get sata-oob reset\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"sata-cold\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to get sata-cold reset\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Failed to get sata clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Failed to get regulators\0A\00", align 1
@ahci_tegra_port_info = common dso_local global i32 0, align 4
@ahci_platform_sht = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_ahci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_ahci_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ahci_host_priv*, align 8
  %5 = alloca %struct.tegra_ahci_priv*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = call %struct.ahci_host_priv* @ahci_platform_get_resources(%struct.platform_device* %9, i32 0)
  store %struct.ahci_host_priv* %10, %struct.ahci_host_priv** %4, align 8
  %11 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %4, align 8
  %12 = call i64 @IS_ERR(%struct.ahci_host_priv* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %4, align 8
  %16 = call i32 @PTR_ERR(%struct.ahci_host_priv* %15)
  store i32 %16, i32* %2, align 4
  br label %249

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.tegra_ahci_priv* @devm_kzalloc(i32* %19, i32 72, i32 %20)
  store %struct.tegra_ahci_priv* %21, %struct.tegra_ahci_priv** %5, align 8
  %22 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %5, align 8
  %23 = icmp ne %struct.tegra_ahci_priv* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %249

27:                                               ; preds = %17
  %28 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %5, align 8
  %29 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %4, align 8
  %30 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %29, i32 0, i32 0
  store %struct.tegra_ahci_priv* %28, %struct.tegra_ahci_priv** %30, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %5, align 8
  %33 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %32, i32 0, i32 8
  store %struct.platform_device* %31, %struct.platform_device** %33, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call %struct.TYPE_4__* @of_device_get_match_data(i32* %35)
  %37 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %5, align 8
  %38 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %37, i32 0, i32 1
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %38, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load i32, i32* @IORESOURCE_MEM, align 4
  %41 = call %struct.resource* @platform_get_resource(%struct.platform_device* %39, i32 %40, i32 1)
  store %struct.resource* %41, %struct.resource** %6, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.resource*, %struct.resource** %6, align 8
  %45 = call i8* @devm_ioremap_resource(i32* %43, %struct.resource* %44)
  %46 = bitcast i8* %45 to %struct.ahci_host_priv*
  %47 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %5, align 8
  %48 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %47, i32 0, i32 7
  store %struct.ahci_host_priv* %46, %struct.ahci_host_priv** %48, align 8
  %49 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %5, align 8
  %50 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %49, i32 0, i32 7
  %51 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %50, align 8
  %52 = call i64 @IS_ERR(%struct.ahci_host_priv* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %27
  %55 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %5, align 8
  %56 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %55, i32 0, i32 7
  %57 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %56, align 8
  %58 = call i32 @PTR_ERR(%struct.ahci_host_priv* %57)
  store i32 %58, i32* %2, align 4
  br label %249

59:                                               ; preds = %27
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = load i32, i32* @IORESOURCE_MEM, align 4
  %62 = call %struct.resource* @platform_get_resource(%struct.platform_device* %60, i32 %61, i32 2)
  store %struct.resource* %62, %struct.resource** %6, align 8
  %63 = load %struct.resource*, %struct.resource** %6, align 8
  %64 = icmp ne %struct.resource* %63, null
  br i1 %64, label %65, label %84

65:                                               ; preds = %59
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load %struct.resource*, %struct.resource** %6, align 8
  %69 = call i8* @devm_ioremap_resource(i32* %67, %struct.resource* %68)
  %70 = bitcast i8* %69 to %struct.ahci_host_priv*
  %71 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %5, align 8
  %72 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %71, i32 0, i32 6
  store %struct.ahci_host_priv* %70, %struct.ahci_host_priv** %72, align 8
  %73 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %5, align 8
  %74 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %73, i32 0, i32 6
  %75 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %74, align 8
  %76 = call i64 @IS_ERR(%struct.ahci_host_priv* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %65
  %79 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %5, align 8
  %80 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %79, i32 0, i32 6
  %81 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %80, align 8
  %82 = call i32 @PTR_ERR(%struct.ahci_host_priv* %81)
  store i32 %82, i32* %2, align 4
  br label %249

83:                                               ; preds = %65
  br label %84

84:                                               ; preds = %83, %59
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = call i8* @devm_reset_control_get(i32* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %88 = bitcast i8* %87 to %struct.ahci_host_priv*
  %89 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %5, align 8
  %90 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %89, i32 0, i32 5
  store %struct.ahci_host_priv* %88, %struct.ahci_host_priv** %90, align 8
  %91 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %5, align 8
  %92 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %91, i32 0, i32 5
  %93 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %92, align 8
  %94 = call i64 @IS_ERR(%struct.ahci_host_priv* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %84
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = call i32 @dev_err(i32* %98, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %100 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %5, align 8
  %101 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %100, i32 0, i32 5
  %102 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %101, align 8
  %103 = call i32 @PTR_ERR(%struct.ahci_host_priv* %102)
  store i32 %103, i32* %2, align 4
  br label %249

104:                                              ; preds = %84
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = call i8* @devm_reset_control_get(i32* %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %108 = bitcast i8* %107 to %struct.ahci_host_priv*
  %109 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %5, align 8
  %110 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %109, i32 0, i32 4
  store %struct.ahci_host_priv* %108, %struct.ahci_host_priv** %110, align 8
  %111 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %5, align 8
  %112 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %111, i32 0, i32 4
  %113 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %112, align 8
  %114 = call i64 @IS_ERR(%struct.ahci_host_priv* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %104
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = call i32 @dev_err(i32* %118, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %120 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %5, align 8
  %121 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %120, i32 0, i32 4
  %122 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %121, align 8
  %123 = call i32 @PTR_ERR(%struct.ahci_host_priv* %122)
  store i32 %123, i32* %2, align 4
  br label %249

124:                                              ; preds = %104
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = call i8* @devm_reset_control_get(i32* %126, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %128 = bitcast i8* %127 to %struct.ahci_host_priv*
  %129 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %5, align 8
  %130 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %129, i32 0, i32 3
  store %struct.ahci_host_priv* %128, %struct.ahci_host_priv** %130, align 8
  %131 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %5, align 8
  %132 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %131, i32 0, i32 3
  %133 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %132, align 8
  %134 = call i64 @IS_ERR(%struct.ahci_host_priv* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %124
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 0
  %139 = call i32 @dev_err(i32* %138, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %140 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %5, align 8
  %141 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %140, i32 0, i32 3
  %142 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %141, align 8
  %143 = call i32 @PTR_ERR(%struct.ahci_host_priv* %142)
  store i32 %143, i32* %2, align 4
  br label %249

144:                                              ; preds = %124
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = call %struct.ahci_host_priv* @devm_clk_get(i32* %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %148 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %5, align 8
  %149 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %148, i32 0, i32 2
  store %struct.ahci_host_priv* %147, %struct.ahci_host_priv** %149, align 8
  %150 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %5, align 8
  %151 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %150, i32 0, i32 2
  %152 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %151, align 8
  %153 = call i64 @IS_ERR(%struct.ahci_host_priv* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %144
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 0
  %158 = call i32 @dev_err(i32* %157, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %159 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %5, align 8
  %160 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %159, i32 0, i32 2
  %161 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %160, align 8
  %162 = call i32 @PTR_ERR(%struct.ahci_host_priv* %161)
  store i32 %162, i32* %2, align 4
  br label %249

163:                                              ; preds = %144
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 0
  %166 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %5, align 8
  %167 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %166, i32 0, i32 1
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @GFP_KERNEL, align 4
  %172 = call %struct.TYPE_5__* @devm_kcalloc(i32* %165, i32 %170, i32 4, i32 %171)
  %173 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %5, align 8
  %174 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %173, i32 0, i32 0
  store %struct.TYPE_5__* %172, %struct.TYPE_5__** %174, align 8
  %175 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %5, align 8
  %176 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %175, i32 0, i32 0
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %176, align 8
  %178 = icmp ne %struct.TYPE_5__* %177, null
  br i1 %178, label %182, label %179

179:                                              ; preds = %163
  %180 = load i32, i32* @ENOMEM, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %2, align 4
  br label %249

182:                                              ; preds = %163
  store i32 0, i32* %8, align 4
  br label %183

183:                                              ; preds = %208, %182
  %184 = load i32, i32* %8, align 4
  %185 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %5, align 8
  %186 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %185, i32 0, i32 1
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp ult i32 %184, %189
  br i1 %190, label %191, label %211

191:                                              ; preds = %183
  %192 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %5, align 8
  %193 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %192, i32 0, i32 1
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %8, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %5, align 8
  %202 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %201, i32 0, i32 0
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %202, align 8
  %204 = load i32, i32* %8, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 0
  store i32 %200, i32* %207, align 4
  br label %208

208:                                              ; preds = %191
  %209 = load i32, i32* %8, align 4
  %210 = add i32 %209, 1
  store i32 %210, i32* %8, align 4
  br label %183

211:                                              ; preds = %183
  %212 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %213 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %212, i32 0, i32 0
  %214 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %5, align 8
  %215 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %214, i32 0, i32 1
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.tegra_ahci_priv*, %struct.tegra_ahci_priv** %5, align 8
  %220 = getelementptr inbounds %struct.tegra_ahci_priv, %struct.tegra_ahci_priv* %219, i32 0, i32 0
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %220, align 8
  %222 = call i32 @devm_regulator_bulk_get(i32* %213, i32 %218, %struct.TYPE_5__* %221)
  store i32 %222, i32* %7, align 4
  %223 = load i32, i32* %7, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %211
  %226 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %227 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %226, i32 0, i32 0
  %228 = call i32 @dev_err(i32* %227, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %229 = load i32, i32* %7, align 4
  store i32 %229, i32* %2, align 4
  br label %249

230:                                              ; preds = %211
  %231 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %4, align 8
  %232 = call i32 @tegra_ahci_controller_init(%struct.ahci_host_priv* %231)
  store i32 %232, i32* %7, align 4
  %233 = load i32, i32* %7, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %230
  %236 = load i32, i32* %7, align 4
  store i32 %236, i32* %2, align 4
  br label %249

237:                                              ; preds = %230
  %238 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %239 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %4, align 8
  %240 = call i32 @ahci_platform_init_host(%struct.platform_device* %238, %struct.ahci_host_priv* %239, i32* @ahci_tegra_port_info, i32* @ahci_platform_sht)
  store i32 %240, i32* %7, align 4
  %241 = load i32, i32* %7, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %237
  br label %245

244:                                              ; preds = %237
  store i32 0, i32* %2, align 4
  br label %249

245:                                              ; preds = %243
  %246 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %4, align 8
  %247 = call i32 @tegra_ahci_controller_deinit(%struct.ahci_host_priv* %246)
  %248 = load i32, i32* %7, align 4
  store i32 %248, i32* %2, align 4
  br label %249

249:                                              ; preds = %245, %244, %235, %225, %179, %155, %136, %116, %96, %78, %54, %24, %14
  %250 = load i32, i32* %2, align 4
  ret i32 %250
}

declare dso_local %struct.ahci_host_priv* @ahci_platform_get_resources(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ahci_host_priv*) #1

declare dso_local i32 @PTR_ERR(%struct.ahci_host_priv*) #1

declare dso_local %struct.tegra_ahci_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @of_device_get_match_data(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i8* @devm_reset_control_get(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.ahci_host_priv* @devm_clk_get(i32*, i8*) #1

declare dso_local %struct.TYPE_5__* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @devm_regulator_bulk_get(i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @tegra_ahci_controller_init(%struct.ahci_host_priv*) #1

declare dso_local i32 @ahci_platform_init_host(%struct.platform_device*, %struct.ahci_host_priv*, i32*, i32*) #1

declare dso_local i32 @tegra_ahci_controller_deinit(%struct.ahci_host_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
