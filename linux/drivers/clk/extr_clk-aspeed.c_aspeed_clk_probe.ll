; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-aspeed.c_aspeed_clk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-aspeed.c_aspeed_clk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_gate_data = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.regmap** }
%struct.regmap = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.aspeed_clk_soc_data = type { i32, i32, i32, %struct.regmap* (i8*, i32)* }
%struct.aspeed_reset = type { %struct.TYPE_3__, %struct.regmap* }
%struct.TYPE_3__ = type { i32, i32, i32*, i32 }
%struct.clk_hw = type opaque

@.str = private unnamed_addr constant [18 x i8] c"no syscon regmap\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@aspeed_resets = common dso_local global %struct.aspeed_gate_data* null, align 8
@aspeed_reset_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"could not register reset controller\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"no match data for platform\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ASPEED_MISC_CTRL = common dso_local global i32 0, align 4
@UART_DIV13_EN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"uart\00", align 1
@aspeed_clk_data = common dso_local global %struct.TYPE_4__* null, align 8
@ASPEED_CLK_UART = common dso_local global i64 0, align 8
@ASPEED_MPLL_PARAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"mpll\00", align 1
@ASPEED_CLK_MPLL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"sd_extclk_gate\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"hpll\00", align 1
@scu_base = common dso_local global i64 0, align 8
@ASPEED_CLK_SELECTION = common dso_local global i64 0, align 8
@aspeed_clk_lock = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"sd_extclk\00", align 1
@ASPEED_CLK_SDIO = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@ASPEED_CLK_MAC = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"lhclk\00", align 1
@ASPEED_CLK_LHCLK = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"bclk\00", align 1
@ASPEED_CLK_SELECTION_2 = common dso_local global i64 0, align 8
@ASPEED_CLK_BCLK = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [10 x i8] c"fixed-24m\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"clkin\00", align 1
@ASPEED_CLK_24M = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [9 x i8] c"eclk-mux\00", align 1
@eclk_parent_names = common dso_local global %struct.aspeed_gate_data* null, align 8
@ASPEED_CLK_ECLK_MUX = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"eclk\00", align 1
@ASPEED_CLK_ECLK = common dso_local global i64 0, align 8
@aspeed_gates = common dso_local global %struct.aspeed_gate_data* null, align 8
@CLK_GATE_SET_TO_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @aspeed_clk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_clk_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.aspeed_clk_soc_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.aspeed_reset*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca %struct.clk_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.aspeed_gate_data*, align 8
  %14 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %5, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.regmap* @syscon_node_to_regmap(i32 %19)
  store %struct.regmap* %20, %struct.regmap** %7, align 8
  %21 = load %struct.regmap*, %struct.regmap** %7, align 8
  %22 = call i64 @IS_ERR(%struct.regmap* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.regmap*, %struct.regmap** %7, align 8
  %28 = call i32 @PTR_ERR(%struct.regmap* %27)
  store i32 %28, i32* %2, align 4
  br label %379

29:                                               ; preds = %1
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.aspeed_reset* @devm_kzalloc(%struct.device* %30, i32 32, i32 %31)
  store %struct.aspeed_reset* %32, %struct.aspeed_reset** %6, align 8
  %33 = load %struct.aspeed_reset*, %struct.aspeed_reset** %6, align 8
  %34 = icmp ne %struct.aspeed_reset* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %379

38:                                               ; preds = %29
  %39 = load %struct.regmap*, %struct.regmap** %7, align 8
  %40 = load %struct.aspeed_reset*, %struct.aspeed_reset** %6, align 8
  %41 = getelementptr inbounds %struct.aspeed_reset, %struct.aspeed_reset* %40, i32 0, i32 1
  store %struct.regmap* %39, %struct.regmap** %41, align 8
  %42 = load i32, i32* @THIS_MODULE, align 4
  %43 = load %struct.aspeed_reset*, %struct.aspeed_reset** %6, align 8
  %44 = getelementptr inbounds %struct.aspeed_reset, %struct.aspeed_reset* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  store i32 %42, i32* %45, align 8
  %46 = load %struct.aspeed_gate_data*, %struct.aspeed_gate_data** @aspeed_resets, align 8
  %47 = call i32 @ARRAY_SIZE(%struct.aspeed_gate_data* %46)
  %48 = load %struct.aspeed_reset*, %struct.aspeed_reset** %6, align 8
  %49 = getelementptr inbounds %struct.aspeed_reset, %struct.aspeed_reset* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %struct.aspeed_reset*, %struct.aspeed_reset** %6, align 8
  %52 = getelementptr inbounds %struct.aspeed_reset, %struct.aspeed_reset* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  store i32* @aspeed_reset_ops, i32** %53, align 8
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = getelementptr inbounds %struct.device, %struct.device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.aspeed_reset*, %struct.aspeed_reset** %6, align 8
  %58 = getelementptr inbounds %struct.aspeed_reset, %struct.aspeed_reset* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 4
  %60 = load %struct.device*, %struct.device** %5, align 8
  %61 = load %struct.aspeed_reset*, %struct.aspeed_reset** %6, align 8
  %62 = getelementptr inbounds %struct.aspeed_reset, %struct.aspeed_reset* %61, i32 0, i32 0
  %63 = call i32 @devm_reset_controller_register(%struct.device* %60, %struct.TYPE_3__* %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %38
  %67 = load %struct.device*, %struct.device** %5, align 8
  %68 = call i32 @dev_err(%struct.device* %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %2, align 4
  br label %379

70:                                               ; preds = %38
  %71 = load %struct.device*, %struct.device** %5, align 8
  %72 = call %struct.aspeed_clk_soc_data* @of_device_get_match_data(%struct.device* %71)
  store %struct.aspeed_clk_soc_data* %72, %struct.aspeed_clk_soc_data** %4, align 8
  %73 = load %struct.aspeed_clk_soc_data*, %struct.aspeed_clk_soc_data** %4, align 8
  %74 = icmp ne %struct.aspeed_clk_soc_data* %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load %struct.device*, %struct.device** %5, align 8
  %77 = call i32 @dev_err(%struct.device* %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %379

80:                                               ; preds = %70
  %81 = load %struct.regmap*, %struct.regmap** %7, align 8
  %82 = load i32, i32* @ASPEED_MISC_CTRL, align 4
  %83 = call i32 @regmap_read(%struct.regmap* %81, i32 %82, i32* %9)
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @UART_DIV13_EN, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  store i32 1846153, i32* %10, align 4
  br label %90

89:                                               ; preds = %80
  store i32 24000000, i32* %10, align 4
  br label %90

90:                                               ; preds = %89, %88
  %91 = load %struct.device*, %struct.device** %5, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call %struct.regmap* @clk_hw_register_fixed_rate(%struct.device* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* null, i32 0, i32 %92)
  %94 = bitcast %struct.regmap* %93 to %struct.clk_hw*
  store %struct.clk_hw* %94, %struct.clk_hw** %8, align 8
  %95 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %96 = bitcast %struct.clk_hw* %95 to %struct.regmap*
  %97 = call i64 @IS_ERR(%struct.regmap* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %90
  %100 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %101 = bitcast %struct.clk_hw* %100 to %struct.regmap*
  %102 = call i32 @PTR_ERR(%struct.regmap* %101)
  store i32 %102, i32* %2, align 4
  br label %379

103:                                              ; preds = %90
  %104 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %105 = bitcast %struct.clk_hw* %104 to %struct.regmap*
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** @aspeed_clk_data, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load %struct.regmap**, %struct.regmap*** %107, align 8
  %109 = load i64, i64* @ASPEED_CLK_UART, align 8
  %110 = getelementptr inbounds %struct.regmap*, %struct.regmap** %108, i64 %109
  store %struct.regmap* %105, %struct.regmap** %110, align 8
  %111 = load %struct.regmap*, %struct.regmap** %7, align 8
  %112 = load i32, i32* @ASPEED_MPLL_PARAM, align 4
  %113 = call i32 @regmap_read(%struct.regmap* %111, i32 %112, i32* %9)
  %114 = load %struct.aspeed_clk_soc_data*, %struct.aspeed_clk_soc_data** %4, align 8
  %115 = getelementptr inbounds %struct.aspeed_clk_soc_data, %struct.aspeed_clk_soc_data* %114, i32 0, i32 3
  %116 = load %struct.regmap* (i8*, i32)*, %struct.regmap* (i8*, i32)** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call %struct.regmap* %116(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  %119 = bitcast %struct.regmap* %118 to %struct.clk_hw*
  store %struct.clk_hw* %119, %struct.clk_hw** %8, align 8
  %120 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %121 = bitcast %struct.clk_hw* %120 to %struct.regmap*
  %122 = call i64 @IS_ERR(%struct.regmap* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %103
  %125 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %126 = bitcast %struct.clk_hw* %125 to %struct.regmap*
  %127 = call i32 @PTR_ERR(%struct.regmap* %126)
  store i32 %127, i32* %2, align 4
  br label %379

128:                                              ; preds = %103
  %129 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %130 = bitcast %struct.clk_hw* %129 to %struct.regmap*
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** @aspeed_clk_data, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load %struct.regmap**, %struct.regmap*** %132, align 8
  %134 = load i64, i64* @ASPEED_CLK_MPLL, align 8
  %135 = getelementptr inbounds %struct.regmap*, %struct.regmap** %133, i64 %134
  store %struct.regmap* %130, %struct.regmap** %135, align 8
  %136 = load %struct.device*, %struct.device** %5, align 8
  %137 = load i64, i64* @scu_base, align 8
  %138 = load i64, i64* @ASPEED_CLK_SELECTION, align 8
  %139 = add nsw i64 %137, %138
  %140 = call %struct.regmap* @clk_hw_register_gate(%struct.device* %136, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 0, i64 %139, i32 15, i32 0, i32* @aspeed_clk_lock)
  %141 = bitcast %struct.regmap* %140 to %struct.clk_hw*
  store %struct.clk_hw* %141, %struct.clk_hw** %8, align 8
  %142 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %143 = bitcast %struct.clk_hw* %142 to %struct.regmap*
  %144 = call i64 @IS_ERR(%struct.regmap* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %128
  %147 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %148 = bitcast %struct.clk_hw* %147 to %struct.regmap*
  %149 = call i32 @PTR_ERR(%struct.regmap* %148)
  store i32 %149, i32* %2, align 4
  br label %379

150:                                              ; preds = %128
  %151 = load %struct.device*, %struct.device** %5, align 8
  %152 = load i64, i64* @scu_base, align 8
  %153 = load i64, i64* @ASPEED_CLK_SELECTION, align 8
  %154 = add nsw i64 %152, %153
  %155 = load %struct.aspeed_clk_soc_data*, %struct.aspeed_clk_soc_data** %4, align 8
  %156 = getelementptr inbounds %struct.aspeed_clk_soc_data, %struct.aspeed_clk_soc_data* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call %struct.regmap* @clk_hw_register_divider_table(%struct.device* %151, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 0, i64 %154, i32 12, i32 3, i32 0, i32 %157, i32* @aspeed_clk_lock)
  %159 = bitcast %struct.regmap* %158 to %struct.clk_hw*
  store %struct.clk_hw* %159, %struct.clk_hw** %8, align 8
  %160 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %161 = bitcast %struct.clk_hw* %160 to %struct.regmap*
  %162 = call i64 @IS_ERR(%struct.regmap* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %150
  %165 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %166 = bitcast %struct.clk_hw* %165 to %struct.regmap*
  %167 = call i32 @PTR_ERR(%struct.regmap* %166)
  store i32 %167, i32* %2, align 4
  br label %379

168:                                              ; preds = %150
  %169 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %170 = bitcast %struct.clk_hw* %169 to %struct.regmap*
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** @aspeed_clk_data, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load %struct.regmap**, %struct.regmap*** %172, align 8
  %174 = load i64, i64* @ASPEED_CLK_SDIO, align 8
  %175 = getelementptr inbounds %struct.regmap*, %struct.regmap** %173, i64 %174
  store %struct.regmap* %170, %struct.regmap** %175, align 8
  %176 = load %struct.device*, %struct.device** %5, align 8
  %177 = load i64, i64* @scu_base, align 8
  %178 = load i64, i64* @ASPEED_CLK_SELECTION, align 8
  %179 = add nsw i64 %177, %178
  %180 = load %struct.aspeed_clk_soc_data*, %struct.aspeed_clk_soc_data** %4, align 8
  %181 = getelementptr inbounds %struct.aspeed_clk_soc_data, %struct.aspeed_clk_soc_data* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = call %struct.regmap* @clk_hw_register_divider_table(%struct.device* %176, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 0, i64 %179, i32 16, i32 3, i32 0, i32 %182, i32* @aspeed_clk_lock)
  %184 = bitcast %struct.regmap* %183 to %struct.clk_hw*
  store %struct.clk_hw* %184, %struct.clk_hw** %8, align 8
  %185 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %186 = bitcast %struct.clk_hw* %185 to %struct.regmap*
  %187 = call i64 @IS_ERR(%struct.regmap* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %168
  %190 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %191 = bitcast %struct.clk_hw* %190 to %struct.regmap*
  %192 = call i32 @PTR_ERR(%struct.regmap* %191)
  store i32 %192, i32* %2, align 4
  br label %379

193:                                              ; preds = %168
  %194 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %195 = bitcast %struct.clk_hw* %194 to %struct.regmap*
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** @aspeed_clk_data, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load %struct.regmap**, %struct.regmap*** %197, align 8
  %199 = load i64, i64* @ASPEED_CLK_MAC, align 8
  %200 = getelementptr inbounds %struct.regmap*, %struct.regmap** %198, i64 %199
  store %struct.regmap* %195, %struct.regmap** %200, align 8
  %201 = load %struct.device*, %struct.device** %5, align 8
  %202 = load i64, i64* @scu_base, align 8
  %203 = load i64, i64* @ASPEED_CLK_SELECTION, align 8
  %204 = add nsw i64 %202, %203
  %205 = load %struct.aspeed_clk_soc_data*, %struct.aspeed_clk_soc_data** %4, align 8
  %206 = getelementptr inbounds %struct.aspeed_clk_soc_data, %struct.aspeed_clk_soc_data* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call %struct.regmap* @clk_hw_register_divider_table(%struct.device* %201, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 0, i64 %204, i32 20, i32 3, i32 0, i32 %207, i32* @aspeed_clk_lock)
  %209 = bitcast %struct.regmap* %208 to %struct.clk_hw*
  store %struct.clk_hw* %209, %struct.clk_hw** %8, align 8
  %210 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %211 = bitcast %struct.clk_hw* %210 to %struct.regmap*
  %212 = call i64 @IS_ERR(%struct.regmap* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %193
  %215 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %216 = bitcast %struct.clk_hw* %215 to %struct.regmap*
  %217 = call i32 @PTR_ERR(%struct.regmap* %216)
  store i32 %217, i32* %2, align 4
  br label %379

218:                                              ; preds = %193
  %219 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %220 = bitcast %struct.clk_hw* %219 to %struct.regmap*
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** @aspeed_clk_data, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 0
  %223 = load %struct.regmap**, %struct.regmap*** %222, align 8
  %224 = load i64, i64* @ASPEED_CLK_LHCLK, align 8
  %225 = getelementptr inbounds %struct.regmap*, %struct.regmap** %223, i64 %224
  store %struct.regmap* %220, %struct.regmap** %225, align 8
  %226 = load %struct.device*, %struct.device** %5, align 8
  %227 = load i64, i64* @scu_base, align 8
  %228 = load i64, i64* @ASPEED_CLK_SELECTION_2, align 8
  %229 = add nsw i64 %227, %228
  %230 = load %struct.aspeed_clk_soc_data*, %struct.aspeed_clk_soc_data** %4, align 8
  %231 = getelementptr inbounds %struct.aspeed_clk_soc_data, %struct.aspeed_clk_soc_data* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call %struct.regmap* @clk_hw_register_divider_table(%struct.device* %226, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 0, i64 %229, i32 0, i32 2, i32 0, i32 %232, i32* @aspeed_clk_lock)
  %234 = bitcast %struct.regmap* %233 to %struct.clk_hw*
  store %struct.clk_hw* %234, %struct.clk_hw** %8, align 8
  %235 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %236 = bitcast %struct.clk_hw* %235 to %struct.regmap*
  %237 = call i64 @IS_ERR(%struct.regmap* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %218
  %240 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %241 = bitcast %struct.clk_hw* %240 to %struct.regmap*
  %242 = call i32 @PTR_ERR(%struct.regmap* %241)
  store i32 %242, i32* %2, align 4
  br label %379

243:                                              ; preds = %218
  %244 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %245 = bitcast %struct.clk_hw* %244 to %struct.regmap*
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** @aspeed_clk_data, align 8
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 0
  %248 = load %struct.regmap**, %struct.regmap*** %247, align 8
  %249 = load i64, i64* @ASPEED_CLK_BCLK, align 8
  %250 = getelementptr inbounds %struct.regmap*, %struct.regmap** %248, i64 %249
  store %struct.regmap* %245, %struct.regmap** %250, align 8
  %251 = call %struct.regmap* @clk_hw_register_fixed_rate(%struct.device* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 0, i32 24000000)
  %252 = bitcast %struct.regmap* %251 to %struct.clk_hw*
  store %struct.clk_hw* %252, %struct.clk_hw** %8, align 8
  %253 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %254 = bitcast %struct.clk_hw* %253 to %struct.regmap*
  %255 = call i64 @IS_ERR(%struct.regmap* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %243
  %258 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %259 = bitcast %struct.clk_hw* %258 to %struct.regmap*
  %260 = call i32 @PTR_ERR(%struct.regmap* %259)
  store i32 %260, i32* %2, align 4
  br label %379

261:                                              ; preds = %243
  %262 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %263 = bitcast %struct.clk_hw* %262 to %struct.regmap*
  %264 = load %struct.TYPE_4__*, %struct.TYPE_4__** @aspeed_clk_data, align 8
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 0
  %266 = load %struct.regmap**, %struct.regmap*** %265, align 8
  %267 = load i64, i64* @ASPEED_CLK_24M, align 8
  %268 = getelementptr inbounds %struct.regmap*, %struct.regmap** %266, i64 %267
  store %struct.regmap* %263, %struct.regmap** %268, align 8
  %269 = load %struct.device*, %struct.device** %5, align 8
  %270 = load %struct.aspeed_gate_data*, %struct.aspeed_gate_data** @eclk_parent_names, align 8
  %271 = load %struct.aspeed_gate_data*, %struct.aspeed_gate_data** @eclk_parent_names, align 8
  %272 = call i32 @ARRAY_SIZE(%struct.aspeed_gate_data* %271)
  %273 = load i64, i64* @scu_base, align 8
  %274 = load i64, i64* @ASPEED_CLK_SELECTION, align 8
  %275 = add nsw i64 %273, %274
  %276 = call %struct.regmap* @clk_hw_register_mux(%struct.device* %269, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), %struct.aspeed_gate_data* %270, i32 %272, i32 0, i64 %275, i32 2, i32 3, i32 0, i32* @aspeed_clk_lock)
  %277 = bitcast %struct.regmap* %276 to %struct.clk_hw*
  store %struct.clk_hw* %277, %struct.clk_hw** %8, align 8
  %278 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %279 = bitcast %struct.clk_hw* %278 to %struct.regmap*
  %280 = call i64 @IS_ERR(%struct.regmap* %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %286

282:                                              ; preds = %261
  %283 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %284 = bitcast %struct.clk_hw* %283 to %struct.regmap*
  %285 = call i32 @PTR_ERR(%struct.regmap* %284)
  store i32 %285, i32* %2, align 4
  br label %379

286:                                              ; preds = %261
  %287 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %288 = bitcast %struct.clk_hw* %287 to %struct.regmap*
  %289 = load %struct.TYPE_4__*, %struct.TYPE_4__** @aspeed_clk_data, align 8
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 0
  %291 = load %struct.regmap**, %struct.regmap*** %290, align 8
  %292 = load i64, i64* @ASPEED_CLK_ECLK_MUX, align 8
  %293 = getelementptr inbounds %struct.regmap*, %struct.regmap** %291, i64 %292
  store %struct.regmap* %288, %struct.regmap** %293, align 8
  %294 = load %struct.device*, %struct.device** %5, align 8
  %295 = load i64, i64* @scu_base, align 8
  %296 = load i64, i64* @ASPEED_CLK_SELECTION, align 8
  %297 = add nsw i64 %295, %296
  %298 = load %struct.aspeed_clk_soc_data*, %struct.aspeed_clk_soc_data** %4, align 8
  %299 = getelementptr inbounds %struct.aspeed_clk_soc_data, %struct.aspeed_clk_soc_data* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = call %struct.regmap* @clk_hw_register_divider_table(%struct.device* %294, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 0, i64 %297, i32 28, i32 3, i32 0, i32 %300, i32* @aspeed_clk_lock)
  %302 = bitcast %struct.regmap* %301 to %struct.clk_hw*
  store %struct.clk_hw* %302, %struct.clk_hw** %8, align 8
  %303 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %304 = bitcast %struct.clk_hw* %303 to %struct.regmap*
  %305 = call i64 @IS_ERR(%struct.regmap* %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %311

307:                                              ; preds = %286
  %308 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %309 = bitcast %struct.clk_hw* %308 to %struct.regmap*
  %310 = call i32 @PTR_ERR(%struct.regmap* %309)
  store i32 %310, i32* %2, align 4
  br label %379

311:                                              ; preds = %286
  %312 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %313 = bitcast %struct.clk_hw* %312 to %struct.regmap*
  %314 = load %struct.TYPE_4__*, %struct.TYPE_4__** @aspeed_clk_data, align 8
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 0
  %316 = load %struct.regmap**, %struct.regmap*** %315, align 8
  %317 = load i64, i64* @ASPEED_CLK_ECLK, align 8
  %318 = getelementptr inbounds %struct.regmap*, %struct.regmap** %316, i64 %317
  store %struct.regmap* %313, %struct.regmap** %318, align 8
  store i32 0, i32* %11, align 4
  br label %319

319:                                              ; preds = %375, %311
  %320 = load i32, i32* %11, align 4
  %321 = load %struct.aspeed_gate_data*, %struct.aspeed_gate_data** @aspeed_gates, align 8
  %322 = call i32 @ARRAY_SIZE(%struct.aspeed_gate_data* %321)
  %323 = icmp slt i32 %320, %322
  br i1 %323, label %324, label %378

324:                                              ; preds = %319
  %325 = load %struct.aspeed_gate_data*, %struct.aspeed_gate_data** @aspeed_gates, align 8
  %326 = load i32, i32* %11, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.aspeed_gate_data, %struct.aspeed_gate_data* %325, i64 %327
  store %struct.aspeed_gate_data* %328, %struct.aspeed_gate_data** %13, align 8
  %329 = load %struct.aspeed_gate_data*, %struct.aspeed_gate_data** %13, align 8
  %330 = getelementptr inbounds %struct.aspeed_gate_data, %struct.aspeed_gate_data* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = icmp eq i32 %331, 14
  br i1 %332, label %333, label %334

333:                                              ; preds = %324
  br label %336

334:                                              ; preds = %324
  %335 = load i32, i32* @CLK_GATE_SET_TO_DISABLE, align 4
  br label %336

336:                                              ; preds = %334, %333
  %337 = phi i32 [ 0, %333 ], [ %335, %334 ]
  store i32 %337, i32* %14, align 4
  %338 = load %struct.device*, %struct.device** %5, align 8
  %339 = load %struct.aspeed_gate_data*, %struct.aspeed_gate_data** %13, align 8
  %340 = getelementptr inbounds %struct.aspeed_gate_data, %struct.aspeed_gate_data* %339, i32 0, i32 4
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.aspeed_gate_data*, %struct.aspeed_gate_data** %13, align 8
  %343 = getelementptr inbounds %struct.aspeed_gate_data, %struct.aspeed_gate_data* %342, i32 0, i32 3
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.aspeed_gate_data*, %struct.aspeed_gate_data** %13, align 8
  %346 = getelementptr inbounds %struct.aspeed_gate_data, %struct.aspeed_gate_data* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.regmap*, %struct.regmap** %7, align 8
  %349 = load %struct.aspeed_gate_data*, %struct.aspeed_gate_data** %13, align 8
  %350 = getelementptr inbounds %struct.aspeed_gate_data, %struct.aspeed_gate_data* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.aspeed_gate_data*, %struct.aspeed_gate_data** %13, align 8
  %353 = getelementptr inbounds %struct.aspeed_gate_data, %struct.aspeed_gate_data* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = load i32, i32* %14, align 4
  %356 = call %struct.regmap* @aspeed_clk_hw_register_gate(%struct.device* %338, i32 %341, i32 %344, i32 %347, %struct.regmap* %348, i32 %351, i32 %354, i32 %355, i32* @aspeed_clk_lock)
  %357 = bitcast %struct.regmap* %356 to %struct.clk_hw*
  store %struct.clk_hw* %357, %struct.clk_hw** %8, align 8
  %358 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %359 = bitcast %struct.clk_hw* %358 to %struct.regmap*
  %360 = call i64 @IS_ERR(%struct.regmap* %359)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %366

362:                                              ; preds = %336
  %363 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %364 = bitcast %struct.clk_hw* %363 to %struct.regmap*
  %365 = call i32 @PTR_ERR(%struct.regmap* %364)
  store i32 %365, i32* %2, align 4
  br label %379

366:                                              ; preds = %336
  %367 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %368 = bitcast %struct.clk_hw* %367 to %struct.regmap*
  %369 = load %struct.TYPE_4__*, %struct.TYPE_4__** @aspeed_clk_data, align 8
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 0
  %371 = load %struct.regmap**, %struct.regmap*** %370, align 8
  %372 = load i32, i32* %11, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.regmap*, %struct.regmap** %371, i64 %373
  store %struct.regmap* %368, %struct.regmap** %374, align 8
  br label %375

375:                                              ; preds = %366
  %376 = load i32, i32* %11, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %11, align 4
  br label %319

378:                                              ; preds = %319
  store i32 0, i32* %2, align 4
  br label %379

379:                                              ; preds = %378, %362, %307, %282, %257, %239, %214, %189, %164, %146, %124, %99, %75, %66, %35, %24
  %380 = load i32, i32* %2, align 4
  ret i32 %380
}

declare dso_local %struct.regmap* @syscon_node_to_regmap(i32) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.aspeed_reset* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.aspeed_gate_data*) #1

declare dso_local i32 @devm_reset_controller_register(%struct.device*, %struct.TYPE_3__*) #1

declare dso_local %struct.aspeed_clk_soc_data* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local %struct.regmap* @clk_hw_register_fixed_rate(%struct.device*, i8*, i8*, i32, i32) #1

declare dso_local %struct.regmap* @clk_hw_register_gate(%struct.device*, i8*, i8*, i32, i64, i32, i32, i32*) #1

declare dso_local %struct.regmap* @clk_hw_register_divider_table(%struct.device*, i8*, i8*, i32, i64, i32, i32, i32, i32, i32*) #1

declare dso_local %struct.regmap* @clk_hw_register_mux(%struct.device*, i8*, %struct.aspeed_gate_data*, i32, i32, i64, i32, i32, i32, i32*) #1

declare dso_local %struct.regmap* @aspeed_clk_hw_register_gate(%struct.device*, i32, i32, i32, %struct.regmap*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
