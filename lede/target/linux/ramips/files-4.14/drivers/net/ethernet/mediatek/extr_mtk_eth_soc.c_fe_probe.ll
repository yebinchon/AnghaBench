; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_probe.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.platform_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.resource = type { i32 }
%struct.of_device_id = type { i64 }
%struct.fe_soc_data = type { i32 (%struct.fe_soc_data*, %struct.net_device*)*, i64* }
%struct.net_device = type { i64, i64, i32, i32, i32, i32, i32* }
%struct.fe_priv = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_14__*, i32, i32, %struct.fe_soc_data*, %struct.TYPE_13__*, %struct.net_device*, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@of_fe_match = common dso_local global i32 0, align 4
@fe_reg_table = common dso_local global i64* null, align 8
@fe_base = common dso_local global %struct.clk* null, align 8
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"alloc_etherdev failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@fe_netdev_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"no IRQ resource found\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@CONFIG_SOC_MT7621 = common dso_local global i32 0, align 4
@FE_REG_FE_DMA_VID_BASE = common dso_local global i64 0, align 8
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@FE_REG_FE_COUNTER_BASE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@FE_FLAG_CALIBRATE_CLK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"this soc needs a clk for calibration\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"mediatek,switch\00", align 1
@FE_FLAG_HAS_SWITCH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to read switch phandle\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@fe_msg_level = common dso_local global i32 0, align 4
@FE_DEFAULT_MSG_ENABLE = common dso_local global i32 0, align 4
@ETH_DATA_LEN = common dso_local global i32 0, align 4
@NUM_DMA_DESC = common dso_local global i8* null, align 8
@fe_pending_work = common dso_local global i32 0, align 4
@FE_FLAG_NAPI_WEIGHT = common dso_local global i32 0, align 4
@fe_poll = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"error bringing up device\0A\00", align 1
@probe = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"mediatek frame engine at 0x%08lx, irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fe_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fe_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.fe_soc_data*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.fe_priv*, align 8
  %9 = alloca %struct.clk*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = load i32, i32* @IORESOURCE_MEM, align 4
  %14 = call %struct.resource* @platform_get_resource(%struct.platform_device* %12, i32 %13, i32 0)
  store %struct.resource* %14, %struct.resource** %4, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 @device_reset(%struct.TYPE_13__* %16)
  %18 = load i32, i32* @of_fe_match, align 4
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call %struct.of_device_id* @of_match_device(i32 %18, %struct.TYPE_13__* %20)
  store %struct.of_device_id* %21, %struct.of_device_id** %5, align 8
  %22 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %23 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.fe_soc_data*
  store %struct.fe_soc_data* %25, %struct.fe_soc_data** %6, align 8
  %26 = load %struct.fe_soc_data*, %struct.fe_soc_data** %6, align 8
  %27 = getelementptr inbounds %struct.fe_soc_data, %struct.fe_soc_data* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load %struct.fe_soc_data*, %struct.fe_soc_data** %6, align 8
  %32 = getelementptr inbounds %struct.fe_soc_data, %struct.fe_soc_data* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  store i64* %33, i64** @fe_reg_table, align 8
  br label %38

34:                                               ; preds = %1
  %35 = load i64*, i64** @fe_reg_table, align 8
  %36 = load %struct.fe_soc_data*, %struct.fe_soc_data** %6, align 8
  %37 = getelementptr inbounds %struct.fe_soc_data, %struct.fe_soc_data* %36, i32 0, i32 1
  store i64* %35, i64** %37, align 8
  br label %38

38:                                               ; preds = %34, %30
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.resource*, %struct.resource** %4, align 8
  %42 = call %struct.clk* @devm_ioremap_resource(%struct.TYPE_13__* %40, %struct.resource* %41)
  store %struct.clk* %42, %struct.clk** @fe_base, align 8
  %43 = load %struct.clk*, %struct.clk** @fe_base, align 8
  %44 = call i64 @IS_ERR(%struct.clk* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* @EADDRNOTAVAIL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %10, align 4
  br label %318

49:                                               ; preds = %38
  %50 = call %struct.net_device* @alloc_etherdev(i32 80)
  store %struct.net_device* %50, %struct.net_device** %7, align 8
  %51 = load %struct.net_device*, %struct.net_device** %7, align 8
  %52 = icmp ne %struct.net_device* %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = call i32 @dev_err(%struct.TYPE_13__* %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %10, align 4
  br label %313

59:                                               ; preds = %49
  %60 = load %struct.net_device*, %struct.net_device** %7, align 8
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i32 @SET_NETDEV_DEV(%struct.net_device* %60, %struct.TYPE_13__* %62)
  %64 = load %struct.net_device*, %struct.net_device** %7, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 6
  store i32* @fe_netdev_ops, i32** %65, align 8
  %66 = load %struct.clk*, %struct.clk** @fe_base, align 8
  %67 = ptrtoint %struct.clk* %66 to i64
  %68 = load %struct.net_device*, %struct.net_device** %7, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = call i64 @platform_get_irq(%struct.platform_device* %70, i32 0)
  %72 = load %struct.net_device*, %struct.net_device** %7, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load %struct.net_device*, %struct.net_device** %7, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %59
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = call i32 @dev_err(%struct.TYPE_13__* %80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @ENXIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %10, align 4
  br label %310

84:                                               ; preds = %59
  %85 = load %struct.fe_soc_data*, %struct.fe_soc_data** %6, align 8
  %86 = getelementptr inbounds %struct.fe_soc_data, %struct.fe_soc_data* %85, i32 0, i32 0
  %87 = load i32 (%struct.fe_soc_data*, %struct.net_device*)*, i32 (%struct.fe_soc_data*, %struct.net_device*)** %86, align 8
  %88 = icmp ne i32 (%struct.fe_soc_data*, %struct.net_device*)* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load %struct.fe_soc_data*, %struct.fe_soc_data** %6, align 8
  %91 = getelementptr inbounds %struct.fe_soc_data, %struct.fe_soc_data* %90, i32 0, i32 0
  %92 = load i32 (%struct.fe_soc_data*, %struct.net_device*)*, i32 (%struct.fe_soc_data*, %struct.net_device*)** %91, align 8
  %93 = load %struct.fe_soc_data*, %struct.fe_soc_data** %6, align 8
  %94 = load %struct.net_device*, %struct.net_device** %7, align 8
  %95 = call i32 %92(%struct.fe_soc_data* %93, %struct.net_device* %94)
  br label %96

96:                                               ; preds = %89, %84
  %97 = load %struct.net_device*, %struct.net_device** %7, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %101 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %102 = or i32 %100, %101
  %103 = xor i32 %102, -1
  %104 = and i32 %99, %103
  %105 = load %struct.net_device*, %struct.net_device** %7, align 8
  %106 = getelementptr inbounds %struct.net_device, %struct.net_device* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load %struct.net_device*, %struct.net_device** %7, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.net_device*, %struct.net_device** %7, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  %114 = load i32, i32* @CONFIG_SOC_MT7621, align 4
  %115 = call i64 @IS_ENABLED(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %96
  %118 = load %struct.net_device*, %struct.net_device** %7, align 8
  %119 = getelementptr inbounds %struct.net_device, %struct.net_device* %118, i32 0, i32 5
  store i32 2048, i32* %119, align 4
  br label %120

120:                                              ; preds = %117, %96
  %121 = load i64*, i64** @fe_reg_table, align 8
  %122 = load i64, i64* @FE_REG_FE_DMA_VID_BASE, align 8
  %123 = getelementptr inbounds i64, i64* %121, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %120
  %127 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %128 = load %struct.net_device*, %struct.net_device** %7, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %126, %120
  %133 = load %struct.net_device*, %struct.net_device** %7, align 8
  %134 = call %struct.fe_priv* @netdev_priv(%struct.net_device* %133)
  store %struct.fe_priv* %134, %struct.fe_priv** %8, align 8
  %135 = load %struct.fe_priv*, %struct.fe_priv** %8, align 8
  %136 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %135, i32 0, i32 12
  %137 = call i32 @spin_lock_init(i32* %136)
  %138 = load i64*, i64** @fe_reg_table, align 8
  %139 = load i64, i64* @FE_REG_FE_COUNTER_BASE, align 8
  %140 = getelementptr inbounds i64, i64* %138, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %161

143:                                              ; preds = %132
  %144 = load i32, i32* @GFP_KERNEL, align 4
  %145 = call %struct.TYPE_14__* @kzalloc(i32 8, i32 %144)
  %146 = load %struct.fe_priv*, %struct.fe_priv** %8, align 8
  %147 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %146, i32 0, i32 4
  store %struct.TYPE_14__* %145, %struct.TYPE_14__** %147, align 8
  %148 = load %struct.fe_priv*, %struct.fe_priv** %8, align 8
  %149 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %148, i32 0, i32 4
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %149, align 8
  %151 = icmp ne %struct.TYPE_14__* %150, null
  br i1 %151, label %155, label %152

152:                                              ; preds = %143
  %153 = load i32, i32* @ENOMEM, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %10, align 4
  br label %310

155:                                              ; preds = %143
  %156 = load %struct.fe_priv*, %struct.fe_priv** %8, align 8
  %157 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %156, i32 0, i32 4
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  %160 = call i32 @spin_lock_init(i32* %159)
  br label %161

161:                                              ; preds = %155, %132
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %162, i32 0, i32 0
  %164 = call %struct.clk* @devm_clk_get(%struct.TYPE_13__* %163, i32* null)
  store %struct.clk* %164, %struct.clk** %9, align 8
  %165 = load %struct.clk*, %struct.clk** %9, align 8
  %166 = call i64 @IS_ERR(%struct.clk* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %161
  %169 = load %struct.clk*, %struct.clk** %9, align 8
  %170 = call i32 @clk_get_rate(%struct.clk* %169)
  %171 = load %struct.fe_priv*, %struct.fe_priv** %8, align 8
  %172 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %171, i32 0, i32 11
  store i32 %170, i32* %172, align 4
  br label %187

173:                                              ; preds = %161
  %174 = load %struct.fe_priv*, %struct.fe_priv** %8, align 8
  %175 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @FE_FLAG_CALIBRATE_CLK, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %173
  %181 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %182 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %181, i32 0, i32 0
  %183 = call i32 @dev_err(%struct.TYPE_13__* %182, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %184 = load i32, i32* @ENXIO, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %10, align 4
  br label %310

186:                                              ; preds = %173
  br label %187

187:                                              ; preds = %186, %168
  %188 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %189 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @of_parse_phandle(i32 %191, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %193 = load %struct.fe_priv*, %struct.fe_priv** %8, align 8
  %194 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %193, i32 0, i32 10
  store i32 %192, i32* %194, align 8
  %195 = load %struct.fe_priv*, %struct.fe_priv** %8, align 8
  %196 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @FE_FLAG_HAS_SWITCH, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %212

201:                                              ; preds = %187
  %202 = load %struct.fe_priv*, %struct.fe_priv** %8, align 8
  %203 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %202, i32 0, i32 10
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %212, label %206

206:                                              ; preds = %201
  %207 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %208 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %207, i32 0, i32 0
  %209 = call i32 @dev_err(%struct.TYPE_13__* %208, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %210 = load i32, i32* @ENODEV, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %10, align 4
  br label %310

212:                                              ; preds = %201, %187
  %213 = load %struct.net_device*, %struct.net_device** %7, align 8
  %214 = load %struct.fe_priv*, %struct.fe_priv** %8, align 8
  %215 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %214, i32 0, i32 9
  store %struct.net_device* %213, %struct.net_device** %215, align 8
  %216 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %217 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %216, i32 0, i32 0
  %218 = load %struct.fe_priv*, %struct.fe_priv** %8, align 8
  %219 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %218, i32 0, i32 8
  store %struct.TYPE_13__* %217, %struct.TYPE_13__** %219, align 8
  %220 = load %struct.fe_soc_data*, %struct.fe_soc_data** %6, align 8
  %221 = load %struct.fe_priv*, %struct.fe_priv** %8, align 8
  %222 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %221, i32 0, i32 7
  store %struct.fe_soc_data* %220, %struct.fe_soc_data** %222, align 8
  %223 = load i32, i32* @fe_msg_level, align 4
  %224 = load i32, i32* @FE_DEFAULT_MSG_ENABLE, align 4
  %225 = call i32 @netif_msg_init(i32 %223, i32 %224)
  %226 = load %struct.fe_priv*, %struct.fe_priv** %8, align 8
  %227 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %226, i32 0, i32 6
  store i32 %225, i32* %227, align 4
  %228 = load i32, i32* @ETH_DATA_LEN, align 4
  %229 = call i32 @fe_max_frag_size(i32 %228)
  %230 = load %struct.fe_priv*, %struct.fe_priv** %8, align 8
  %231 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 1
  store i32 %229, i32* %232, align 4
  %233 = load %struct.fe_priv*, %struct.fe_priv** %8, align 8
  %234 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @fe_max_buf_size(i32 %236)
  %238 = load %struct.fe_priv*, %struct.fe_priv** %8, align 8
  %239 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 2
  store i32 %237, i32* %240, align 8
  %241 = load i8*, i8** @NUM_DMA_DESC, align 8
  %242 = ptrtoint i8* %241 to i32
  %243 = load %struct.fe_priv*, %struct.fe_priv** %8, align 8
  %244 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %243, i32 0, i32 3
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 0
  store i32 %242, i32* %245, align 4
  %246 = load i8*, i8** @NUM_DMA_DESC, align 8
  %247 = ptrtoint i8* %246 to i32
  %248 = load %struct.fe_priv*, %struct.fe_priv** %8, align 8
  %249 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 0
  store i32 %247, i32* %250, align 8
  %251 = load %struct.fe_priv*, %struct.fe_priv** %8, align 8
  %252 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %251, i32 0, i32 5
  %253 = load i32, i32* @fe_pending_work, align 4
  %254 = call i32 @INIT_WORK(i32* %252, i32 %253)
  %255 = load %struct.fe_priv*, %struct.fe_priv** %8, align 8
  %256 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %255, i32 0, i32 4
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 0
  %259 = call i32 @u64_stats_init(i32* %258)
  store i32 16, i32* %11, align 4
  %260 = load %struct.fe_priv*, %struct.fe_priv** %8, align 8
  %261 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @FE_FLAG_NAPI_WEIGHT, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %279

266:                                              ; preds = %212
  %267 = load i32, i32* %11, align 4
  %268 = mul nsw i32 %267, 4
  store i32 %268, i32* %11, align 4
  %269 = load %struct.fe_priv*, %struct.fe_priv** %8, align 8
  %270 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %269, i32 0, i32 3
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = mul nsw i32 %272, 4
  store i32 %273, i32* %271, align 4
  %274 = load %struct.fe_priv*, %struct.fe_priv** %8, align 8
  %275 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = mul nsw i32 %277, 4
  store i32 %278, i32* %276, align 8
  br label %279

279:                                              ; preds = %266, %212
  %280 = load %struct.net_device*, %struct.net_device** %7, align 8
  %281 = load %struct.fe_priv*, %struct.fe_priv** %8, align 8
  %282 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %281, i32 0, i32 1
  %283 = load i32, i32* @fe_poll, align 4
  %284 = load i32, i32* %11, align 4
  %285 = call i32 @netif_napi_add(%struct.net_device* %280, i32* %282, i32 %283, i32 %284)
  %286 = load %struct.net_device*, %struct.net_device** %7, align 8
  %287 = call i32 @fe_set_ethtool_ops(%struct.net_device* %286)
  %288 = load %struct.net_device*, %struct.net_device** %7, align 8
  %289 = call i32 @register_netdev(%struct.net_device* %288)
  store i32 %289, i32* %10, align 4
  %290 = load i32, i32* %10, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %279
  %293 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %294 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %293, i32 0, i32 0
  %295 = call i32 @dev_err(%struct.TYPE_13__* %294, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %310

296:                                              ; preds = %279
  %297 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %298 = load %struct.net_device*, %struct.net_device** %7, align 8
  %299 = call i32 @platform_set_drvdata(%struct.platform_device* %297, %struct.net_device* %298)
  %300 = load %struct.fe_priv*, %struct.fe_priv** %8, align 8
  %301 = load i32, i32* @probe, align 4
  %302 = load %struct.net_device*, %struct.net_device** %7, align 8
  %303 = load %struct.net_device*, %struct.net_device** %7, align 8
  %304 = getelementptr inbounds %struct.net_device, %struct.net_device* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.net_device*, %struct.net_device** %7, align 8
  %307 = getelementptr inbounds %struct.net_device, %struct.net_device* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = call i32 @netif_info(%struct.fe_priv* %300, i32 %301, %struct.net_device* %302, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i64 %305, i64 %308)
  store i32 0, i32* %2, align 4
  br label %320

310:                                              ; preds = %292, %206, %180, %152, %78
  %311 = load %struct.net_device*, %struct.net_device** %7, align 8
  %312 = call i32 @free_netdev(%struct.net_device* %311)
  br label %313

313:                                              ; preds = %310, %53
  %314 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %315 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %314, i32 0, i32 0
  %316 = load %struct.clk*, %struct.clk** @fe_base, align 8
  %317 = call i32 @devm_iounmap(%struct.TYPE_13__* %315, %struct.clk* %316)
  br label %318

318:                                              ; preds = %313, %46
  %319 = load i32, i32* %10, align 4
  store i32 %319, i32* %2, align 4
  br label %320

320:                                              ; preds = %318, %296
  %321 = load i32, i32* %2, align 4
  ret i32 %321
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @device_reset(%struct.TYPE_13__*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_13__*) #1

declare dso_local %struct.clk* @devm_ioremap_resource(%struct.TYPE_13__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.TYPE_13__*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local %struct.fe_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.TYPE_14__* @kzalloc(i32, i32) #1

declare dso_local %struct.clk* @devm_clk_get(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @netif_msg_init(i32, i32) #1

declare dso_local i32 @fe_max_frag_size(i32) #1

declare dso_local i32 @fe_max_buf_size(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @u64_stats_init(i32*) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @fe_set_ethtool_ops(%struct.net_device*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local i32 @netif_info(%struct.fe_priv*, i32, %struct.net_device*, i8*, i64, i64) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @devm_iounmap(%struct.TYPE_13__*, %struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
