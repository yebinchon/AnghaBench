; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-ast2600.c_aspeed_g6_clk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-ast2600.c_aspeed_g6_clk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.regmap** }
%struct.regmap = type { i32 }
%struct.aspeed_gate_data = type { i32, i32, i32, i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.aspeed_reset = type { %struct.TYPE_3__, %struct.regmap* }
%struct.TYPE_3__ = type { i32, i32, i32*, i32 }
%struct.clk_hw = type opaque

@.str = private unnamed_addr constant [18 x i8] c"no syscon regmap\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@aspeed_g6_reset_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"could not register reset controller\0A\00", align 1
@ASPEED_G6_MISC_CTRL = common dso_local global i32 0, align 4
@UART_DIV13_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"uart\00", align 1
@aspeed_g6_clk_data = common dso_local global %struct.TYPE_4__* null, align 8
@ASPEED_CLK_UART = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"uartx\00", align 1
@ASPEED_CLK_UARTX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"emmc_extclk_gate\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"hpll\00", align 1
@scu_g6_base = common dso_local global i64 0, align 8
@ASPEED_G6_CLK_SELECTION1 = common dso_local global i64 0, align 8
@aspeed_g6_clk_lock = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"emmc_extclk\00", align 1
@ast2600_div_table = common dso_local global i32 0, align 4
@ASPEED_CLK_EMMC = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"sd_extclk_gate\00", align 1
@ASPEED_G6_CLK_SELECTION4 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"sd_extclk\00", align 1
@ASPEED_CLK_SDIO = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"mac12\00", align 1
@ast2600_mac_div_table = common dso_local global i32 0, align 4
@ASPEED_CLK_MAC12 = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"mac34\00", align 1
@ASPEED_CLK_MAC34 = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"lhclk\00", align 1
@ASPEED_CLK_LHCLK = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [6 x i8] c"d1clk\00", align 1
@d1clk_parent_names = common dso_local global %struct.aspeed_gate_data* null, align 8
@ASPEED_CLK_D1CLK = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"bclk\00", align 1
@ASPEED_CLK_BCLK = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"vclk\00", align 1
@vclk_parent_names = common dso_local global %struct.aspeed_gate_data* null, align 8
@ASPEED_G6_CLK_SELECTION2 = common dso_local global i64 0, align 8
@ASPEED_CLK_VCLK = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [5 x i8] c"eclk\00", align 1
@ast2600_eclk_div_table = common dso_local global i32 0, align 4
@ASPEED_CLK_ECLK = common dso_local global i64 0, align 8
@aspeed_g6_gates = common dso_local global %struct.aspeed_gate_data* null, align 8
@CLK_GATE_SET_TO_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @aspeed_g6_clk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_g6_clk_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.aspeed_reset*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca %struct.clk_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.aspeed_gate_data*, align 8
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %4, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.regmap* @syscon_node_to_regmap(i32 %18)
  store %struct.regmap* %19, %struct.regmap** %6, align 8
  %20 = load %struct.regmap*, %struct.regmap** %6, align 8
  %21 = call i64 @IS_ERR(%struct.regmap* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.regmap*, %struct.regmap** %6, align 8
  %27 = call i32 @PTR_ERR(%struct.regmap* %26)
  store i32 %27, i32* %2, align 4
  br label %434

28:                                               ; preds = %1
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.aspeed_reset* @devm_kzalloc(%struct.device* %29, i32 32, i32 %30)
  store %struct.aspeed_reset* %31, %struct.aspeed_reset** %5, align 8
  %32 = load %struct.aspeed_reset*, %struct.aspeed_reset** %5, align 8
  %33 = icmp ne %struct.aspeed_reset* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %434

37:                                               ; preds = %28
  %38 = load %struct.regmap*, %struct.regmap** %6, align 8
  %39 = load %struct.aspeed_reset*, %struct.aspeed_reset** %5, align 8
  %40 = getelementptr inbounds %struct.aspeed_reset, %struct.aspeed_reset* %39, i32 0, i32 1
  store %struct.regmap* %38, %struct.regmap** %40, align 8
  %41 = load i32, i32* @THIS_MODULE, align 4
  %42 = load %struct.aspeed_reset*, %struct.aspeed_reset** %5, align 8
  %43 = getelementptr inbounds %struct.aspeed_reset, %struct.aspeed_reset* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 8
  %45 = load %struct.aspeed_reset*, %struct.aspeed_reset** %5, align 8
  %46 = getelementptr inbounds %struct.aspeed_reset, %struct.aspeed_reset* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 64, i32* %47, align 8
  %48 = load %struct.aspeed_reset*, %struct.aspeed_reset** %5, align 8
  %49 = getelementptr inbounds %struct.aspeed_reset, %struct.aspeed_reset* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  store i32* @aspeed_g6_reset_ops, i32** %50, align 8
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = getelementptr inbounds %struct.device, %struct.device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.aspeed_reset*, %struct.aspeed_reset** %5, align 8
  %55 = getelementptr inbounds %struct.aspeed_reset, %struct.aspeed_reset* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load %struct.aspeed_reset*, %struct.aspeed_reset** %5, align 8
  %59 = getelementptr inbounds %struct.aspeed_reset, %struct.aspeed_reset* %58, i32 0, i32 0
  %60 = call i32 @devm_reset_controller_register(%struct.device* %57, %struct.TYPE_3__* %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %37
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %2, align 4
  br label %434

67:                                               ; preds = %37
  %68 = load %struct.regmap*, %struct.regmap** %6, align 8
  %69 = load i32, i32* @ASPEED_G6_MISC_CTRL, align 4
  %70 = call i32 @regmap_read(%struct.regmap* %68, i32 %69, i32* %8)
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @UART_DIV13_EN, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  store i32 1846153, i32* %9, align 4
  br label %77

76:                                               ; preds = %67
  store i32 24000000, i32* %9, align 4
  br label %77

77:                                               ; preds = %76, %75
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call %struct.regmap* @clk_hw_register_fixed_rate(%struct.device* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 0, i32 %79)
  %81 = bitcast %struct.regmap* %80 to %struct.clk_hw*
  store %struct.clk_hw* %81, %struct.clk_hw** %7, align 8
  %82 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %83 = bitcast %struct.clk_hw* %82 to %struct.regmap*
  %84 = call i64 @IS_ERR(%struct.regmap* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %77
  %87 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %88 = bitcast %struct.clk_hw* %87 to %struct.regmap*
  %89 = call i32 @PTR_ERR(%struct.regmap* %88)
  store i32 %89, i32* %2, align 4
  br label %434

90:                                               ; preds = %77
  %91 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %92 = bitcast %struct.clk_hw* %91 to %struct.regmap*
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @aspeed_g6_clk_data, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load %struct.regmap**, %struct.regmap*** %94, align 8
  %96 = load i64, i64* @ASPEED_CLK_UART, align 8
  %97 = getelementptr inbounds %struct.regmap*, %struct.regmap** %95, i64 %96
  store %struct.regmap* %92, %struct.regmap** %97, align 8
  %98 = load %struct.regmap*, %struct.regmap** %6, align 8
  %99 = call i32 @regmap_read(%struct.regmap* %98, i32 128, i32* %8)
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @BIT(i32 31)
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %90
  store i32 1846153, i32* %9, align 4
  br label %106

105:                                              ; preds = %90
  store i32 24000000, i32* %9, align 4
  br label %106

106:                                              ; preds = %105, %104
  %107 = load %struct.device*, %struct.device** %4, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call %struct.regmap* @clk_hw_register_fixed_rate(%struct.device* %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 0, i32 %108)
  %110 = bitcast %struct.regmap* %109 to %struct.clk_hw*
  store %struct.clk_hw* %110, %struct.clk_hw** %7, align 8
  %111 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %112 = bitcast %struct.clk_hw* %111 to %struct.regmap*
  %113 = call i64 @IS_ERR(%struct.regmap* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %106
  %116 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %117 = bitcast %struct.clk_hw* %116 to %struct.regmap*
  %118 = call i32 @PTR_ERR(%struct.regmap* %117)
  store i32 %118, i32* %2, align 4
  br label %434

119:                                              ; preds = %106
  %120 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %121 = bitcast %struct.clk_hw* %120 to %struct.regmap*
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** @aspeed_g6_clk_data, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load %struct.regmap**, %struct.regmap*** %123, align 8
  %125 = load i64, i64* @ASPEED_CLK_UARTX, align 8
  %126 = getelementptr inbounds %struct.regmap*, %struct.regmap** %124, i64 %125
  store %struct.regmap* %121, %struct.regmap** %126, align 8
  %127 = load %struct.device*, %struct.device** %4, align 8
  %128 = load i64, i64* @scu_g6_base, align 8
  %129 = load i64, i64* @ASPEED_G6_CLK_SELECTION1, align 8
  %130 = add nsw i64 %128, %129
  %131 = call %struct.regmap* @clk_hw_register_gate(%struct.device* %127, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 0, i64 %130, i32 15, i32 0, i32* @aspeed_g6_clk_lock)
  %132 = bitcast %struct.regmap* %131 to %struct.clk_hw*
  store %struct.clk_hw* %132, %struct.clk_hw** %7, align 8
  %133 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %134 = bitcast %struct.clk_hw* %133 to %struct.regmap*
  %135 = call i64 @IS_ERR(%struct.regmap* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %119
  %138 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %139 = bitcast %struct.clk_hw* %138 to %struct.regmap*
  %140 = call i32 @PTR_ERR(%struct.regmap* %139)
  store i32 %140, i32* %2, align 4
  br label %434

141:                                              ; preds = %119
  %142 = load %struct.device*, %struct.device** %4, align 8
  %143 = load i64, i64* @scu_g6_base, align 8
  %144 = load i64, i64* @ASPEED_G6_CLK_SELECTION1, align 8
  %145 = add nsw i64 %143, %144
  %146 = load i32, i32* @ast2600_div_table, align 4
  %147 = call %struct.regmap* @clk_hw_register_divider_table(%struct.device* %142, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 0, i64 %145, i32 12, i32 3, i32 0, i32 %146, i32* @aspeed_g6_clk_lock)
  %148 = bitcast %struct.regmap* %147 to %struct.clk_hw*
  store %struct.clk_hw* %148, %struct.clk_hw** %7, align 8
  %149 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %150 = bitcast %struct.clk_hw* %149 to %struct.regmap*
  %151 = call i64 @IS_ERR(%struct.regmap* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %141
  %154 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %155 = bitcast %struct.clk_hw* %154 to %struct.regmap*
  %156 = call i32 @PTR_ERR(%struct.regmap* %155)
  store i32 %156, i32* %2, align 4
  br label %434

157:                                              ; preds = %141
  %158 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %159 = bitcast %struct.clk_hw* %158 to %struct.regmap*
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** @aspeed_g6_clk_data, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load %struct.regmap**, %struct.regmap*** %161, align 8
  %163 = load i64, i64* @ASPEED_CLK_EMMC, align 8
  %164 = getelementptr inbounds %struct.regmap*, %struct.regmap** %162, i64 %163
  store %struct.regmap* %159, %struct.regmap** %164, align 8
  %165 = load %struct.device*, %struct.device** %4, align 8
  %166 = load i64, i64* @scu_g6_base, align 8
  %167 = load i64, i64* @ASPEED_G6_CLK_SELECTION4, align 8
  %168 = add nsw i64 %166, %167
  %169 = call %struct.regmap* @clk_hw_register_gate(%struct.device* %165, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 0, i64 %168, i32 31, i32 0, i32* @aspeed_g6_clk_lock)
  %170 = bitcast %struct.regmap* %169 to %struct.clk_hw*
  store %struct.clk_hw* %170, %struct.clk_hw** %7, align 8
  %171 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %172 = bitcast %struct.clk_hw* %171 to %struct.regmap*
  %173 = call i64 @IS_ERR(%struct.regmap* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %157
  %176 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %177 = bitcast %struct.clk_hw* %176 to %struct.regmap*
  %178 = call i32 @PTR_ERR(%struct.regmap* %177)
  store i32 %178, i32* %2, align 4
  br label %434

179:                                              ; preds = %157
  %180 = load %struct.device*, %struct.device** %4, align 8
  %181 = load i64, i64* @scu_g6_base, align 8
  %182 = load i64, i64* @ASPEED_G6_CLK_SELECTION4, align 8
  %183 = add nsw i64 %181, %182
  %184 = load i32, i32* @ast2600_div_table, align 4
  %185 = call %struct.regmap* @clk_hw_register_divider_table(%struct.device* %180, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 0, i64 %183, i32 28, i32 3, i32 0, i32 %184, i32* @aspeed_g6_clk_lock)
  %186 = bitcast %struct.regmap* %185 to %struct.clk_hw*
  store %struct.clk_hw* %186, %struct.clk_hw** %7, align 8
  %187 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %188 = bitcast %struct.clk_hw* %187 to %struct.regmap*
  %189 = call i64 @IS_ERR(%struct.regmap* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %179
  %192 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %193 = bitcast %struct.clk_hw* %192 to %struct.regmap*
  %194 = call i32 @PTR_ERR(%struct.regmap* %193)
  store i32 %194, i32* %2, align 4
  br label %434

195:                                              ; preds = %179
  %196 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %197 = bitcast %struct.clk_hw* %196 to %struct.regmap*
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** @aspeed_g6_clk_data, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load %struct.regmap**, %struct.regmap*** %199, align 8
  %201 = load i64, i64* @ASPEED_CLK_SDIO, align 8
  %202 = getelementptr inbounds %struct.regmap*, %struct.regmap** %200, i64 %201
  store %struct.regmap* %197, %struct.regmap** %202, align 8
  %203 = load %struct.device*, %struct.device** %4, align 8
  %204 = load i64, i64* @scu_g6_base, align 8
  %205 = load i64, i64* @ASPEED_G6_CLK_SELECTION1, align 8
  %206 = add nsw i64 %204, %205
  %207 = load i32, i32* @ast2600_mac_div_table, align 4
  %208 = call %struct.regmap* @clk_hw_register_divider_table(%struct.device* %203, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 0, i64 %206, i32 16, i32 3, i32 0, i32 %207, i32* @aspeed_g6_clk_lock)
  %209 = bitcast %struct.regmap* %208 to %struct.clk_hw*
  store %struct.clk_hw* %209, %struct.clk_hw** %7, align 8
  %210 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %211 = bitcast %struct.clk_hw* %210 to %struct.regmap*
  %212 = call i64 @IS_ERR(%struct.regmap* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %195
  %215 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %216 = bitcast %struct.clk_hw* %215 to %struct.regmap*
  %217 = call i32 @PTR_ERR(%struct.regmap* %216)
  store i32 %217, i32* %2, align 4
  br label %434

218:                                              ; preds = %195
  %219 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %220 = bitcast %struct.clk_hw* %219 to %struct.regmap*
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** @aspeed_g6_clk_data, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 0
  %223 = load %struct.regmap**, %struct.regmap*** %222, align 8
  %224 = load i64, i64* @ASPEED_CLK_MAC12, align 8
  %225 = getelementptr inbounds %struct.regmap*, %struct.regmap** %223, i64 %224
  store %struct.regmap* %220, %struct.regmap** %225, align 8
  %226 = load %struct.device*, %struct.device** %4, align 8
  %227 = load i64, i64* @scu_g6_base, align 8
  %228 = add nsw i64 %227, 784
  %229 = load i32, i32* @ast2600_mac_div_table, align 4
  %230 = call %struct.regmap* @clk_hw_register_divider_table(%struct.device* %226, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 0, i64 %228, i32 24, i32 3, i32 0, i32 %229, i32* @aspeed_g6_clk_lock)
  %231 = bitcast %struct.regmap* %230 to %struct.clk_hw*
  store %struct.clk_hw* %231, %struct.clk_hw** %7, align 8
  %232 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %233 = bitcast %struct.clk_hw* %232 to %struct.regmap*
  %234 = call i64 @IS_ERR(%struct.regmap* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %218
  %237 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %238 = bitcast %struct.clk_hw* %237 to %struct.regmap*
  %239 = call i32 @PTR_ERR(%struct.regmap* %238)
  store i32 %239, i32* %2, align 4
  br label %434

240:                                              ; preds = %218
  %241 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %242 = bitcast %struct.clk_hw* %241 to %struct.regmap*
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** @aspeed_g6_clk_data, align 8
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 0
  %245 = load %struct.regmap**, %struct.regmap*** %244, align 8
  %246 = load i64, i64* @ASPEED_CLK_MAC34, align 8
  %247 = getelementptr inbounds %struct.regmap*, %struct.regmap** %245, i64 %246
  store %struct.regmap* %242, %struct.regmap** %247, align 8
  %248 = load %struct.device*, %struct.device** %4, align 8
  %249 = load i64, i64* @scu_g6_base, align 8
  %250 = load i64, i64* @ASPEED_G6_CLK_SELECTION1, align 8
  %251 = add nsw i64 %249, %250
  %252 = load i32, i32* @ast2600_div_table, align 4
  %253 = call %struct.regmap* @clk_hw_register_divider_table(%struct.device* %248, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 0, i64 %251, i32 20, i32 3, i32 0, i32 %252, i32* @aspeed_g6_clk_lock)
  %254 = bitcast %struct.regmap* %253 to %struct.clk_hw*
  store %struct.clk_hw* %254, %struct.clk_hw** %7, align 8
  %255 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %256 = bitcast %struct.clk_hw* %255 to %struct.regmap*
  %257 = call i64 @IS_ERR(%struct.regmap* %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %240
  %260 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %261 = bitcast %struct.clk_hw* %260 to %struct.regmap*
  %262 = call i32 @PTR_ERR(%struct.regmap* %261)
  store i32 %262, i32* %2, align 4
  br label %434

263:                                              ; preds = %240
  %264 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %265 = bitcast %struct.clk_hw* %264 to %struct.regmap*
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** @aspeed_g6_clk_data, align 8
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 0
  %268 = load %struct.regmap**, %struct.regmap*** %267, align 8
  %269 = load i64, i64* @ASPEED_CLK_LHCLK, align 8
  %270 = getelementptr inbounds %struct.regmap*, %struct.regmap** %268, i64 %269
  store %struct.regmap* %265, %struct.regmap** %270, align 8
  %271 = load %struct.regmap*, %struct.regmap** %6, align 8
  %272 = load i64, i64* @ASPEED_G6_CLK_SELECTION1, align 8
  %273 = call i32 @GENMASK(i32 10, i32 8)
  %274 = call i32 @BIT(i32 10)
  %275 = call i32 @regmap_update_bits(%struct.regmap* %271, i64 %272, i32 %273, i32 %274)
  %276 = load %struct.device*, %struct.device** %4, align 8
  %277 = load %struct.aspeed_gate_data*, %struct.aspeed_gate_data** @d1clk_parent_names, align 8
  %278 = load %struct.aspeed_gate_data*, %struct.aspeed_gate_data** @d1clk_parent_names, align 8
  %279 = call i32 @ARRAY_SIZE(%struct.aspeed_gate_data* %278)
  %280 = load i64, i64* @scu_g6_base, align 8
  %281 = load i64, i64* @ASPEED_G6_CLK_SELECTION1, align 8
  %282 = add nsw i64 %280, %281
  %283 = call %struct.regmap* @clk_hw_register_mux(%struct.device* %276, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), %struct.aspeed_gate_data* %277, i32 %279, i32 0, i64 %282, i32 8, i32 3, i32 0, i32* @aspeed_g6_clk_lock)
  %284 = bitcast %struct.regmap* %283 to %struct.clk_hw*
  store %struct.clk_hw* %284, %struct.clk_hw** %7, align 8
  %285 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %286 = bitcast %struct.clk_hw* %285 to %struct.regmap*
  %287 = call i64 @IS_ERR(%struct.regmap* %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %293

289:                                              ; preds = %263
  %290 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %291 = bitcast %struct.clk_hw* %290 to %struct.regmap*
  %292 = call i32 @PTR_ERR(%struct.regmap* %291)
  store i32 %292, i32* %2, align 4
  br label %434

293:                                              ; preds = %263
  %294 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %295 = bitcast %struct.clk_hw* %294 to %struct.regmap*
  %296 = load %struct.TYPE_4__*, %struct.TYPE_4__** @aspeed_g6_clk_data, align 8
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 0
  %298 = load %struct.regmap**, %struct.regmap*** %297, align 8
  %299 = load i64, i64* @ASPEED_CLK_D1CLK, align 8
  %300 = getelementptr inbounds %struct.regmap*, %struct.regmap** %298, i64 %299
  store %struct.regmap* %295, %struct.regmap** %300, align 8
  %301 = load %struct.regmap*, %struct.regmap** %6, align 8
  %302 = call i32 @regmap_write(%struct.regmap* %301, i32 776, i32 73728)
  %303 = load %struct.device*, %struct.device** %4, align 8
  %304 = load i64, i64* @scu_g6_base, align 8
  %305 = load i64, i64* @ASPEED_G6_CLK_SELECTION1, align 8
  %306 = add nsw i64 %304, %305
  %307 = load i32, i32* @ast2600_div_table, align 4
  %308 = call %struct.regmap* @clk_hw_register_divider_table(%struct.device* %303, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 0, i64 %306, i32 20, i32 3, i32 0, i32 %307, i32* @aspeed_g6_clk_lock)
  %309 = bitcast %struct.regmap* %308 to %struct.clk_hw*
  store %struct.clk_hw* %309, %struct.clk_hw** %7, align 8
  %310 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %311 = bitcast %struct.clk_hw* %310 to %struct.regmap*
  %312 = call i64 @IS_ERR(%struct.regmap* %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %318

314:                                              ; preds = %293
  %315 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %316 = bitcast %struct.clk_hw* %315 to %struct.regmap*
  %317 = call i32 @PTR_ERR(%struct.regmap* %316)
  store i32 %317, i32* %2, align 4
  br label %434

318:                                              ; preds = %293
  %319 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %320 = bitcast %struct.clk_hw* %319 to %struct.regmap*
  %321 = load %struct.TYPE_4__*, %struct.TYPE_4__** @aspeed_g6_clk_data, align 8
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 0
  %323 = load %struct.regmap**, %struct.regmap*** %322, align 8
  %324 = load i64, i64* @ASPEED_CLK_BCLK, align 8
  %325 = getelementptr inbounds %struct.regmap*, %struct.regmap** %323, i64 %324
  store %struct.regmap* %320, %struct.regmap** %325, align 8
  %326 = load %struct.device*, %struct.device** %4, align 8
  %327 = load %struct.aspeed_gate_data*, %struct.aspeed_gate_data** @vclk_parent_names, align 8
  %328 = load %struct.aspeed_gate_data*, %struct.aspeed_gate_data** @vclk_parent_names, align 8
  %329 = call i32 @ARRAY_SIZE(%struct.aspeed_gate_data* %328)
  %330 = load i64, i64* @scu_g6_base, align 8
  %331 = load i64, i64* @ASPEED_G6_CLK_SELECTION2, align 8
  %332 = add nsw i64 %330, %331
  %333 = call %struct.regmap* @clk_hw_register_mux(%struct.device* %326, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), %struct.aspeed_gate_data* %327, i32 %329, i32 0, i64 %332, i32 12, i32 3, i32 0, i32* @aspeed_g6_clk_lock)
  %334 = bitcast %struct.regmap* %333 to %struct.clk_hw*
  store %struct.clk_hw* %334, %struct.clk_hw** %7, align 8
  %335 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %336 = bitcast %struct.clk_hw* %335 to %struct.regmap*
  %337 = call i64 @IS_ERR(%struct.regmap* %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %343

339:                                              ; preds = %318
  %340 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %341 = bitcast %struct.clk_hw* %340 to %struct.regmap*
  %342 = call i32 @PTR_ERR(%struct.regmap* %341)
  store i32 %342, i32* %2, align 4
  br label %434

343:                                              ; preds = %318
  %344 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %345 = bitcast %struct.clk_hw* %344 to %struct.regmap*
  %346 = load %struct.TYPE_4__*, %struct.TYPE_4__** @aspeed_g6_clk_data, align 8
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %346, i32 0, i32 0
  %348 = load %struct.regmap**, %struct.regmap*** %347, align 8
  %349 = load i64, i64* @ASPEED_CLK_VCLK, align 8
  %350 = getelementptr inbounds %struct.regmap*, %struct.regmap** %348, i64 %349
  store %struct.regmap* %345, %struct.regmap** %350, align 8
  %351 = load %struct.device*, %struct.device** %4, align 8
  %352 = load i64, i64* @scu_g6_base, align 8
  %353 = load i64, i64* @ASPEED_G6_CLK_SELECTION1, align 8
  %354 = add nsw i64 %352, %353
  %355 = load i32, i32* @ast2600_eclk_div_table, align 4
  %356 = call %struct.regmap* @clk_hw_register_divider_table(%struct.device* %351, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* null, i32 0, i64 %354, i32 28, i32 3, i32 0, i32 %355, i32* @aspeed_g6_clk_lock)
  %357 = bitcast %struct.regmap* %356 to %struct.clk_hw*
  store %struct.clk_hw* %357, %struct.clk_hw** %7, align 8
  %358 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %359 = bitcast %struct.clk_hw* %358 to %struct.regmap*
  %360 = call i64 @IS_ERR(%struct.regmap* %359)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %366

362:                                              ; preds = %343
  %363 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %364 = bitcast %struct.clk_hw* %363 to %struct.regmap*
  %365 = call i32 @PTR_ERR(%struct.regmap* %364)
  store i32 %365, i32* %2, align 4
  br label %434

366:                                              ; preds = %343
  %367 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %368 = bitcast %struct.clk_hw* %367 to %struct.regmap*
  %369 = load %struct.TYPE_4__*, %struct.TYPE_4__** @aspeed_g6_clk_data, align 8
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 0
  %371 = load %struct.regmap**, %struct.regmap*** %370, align 8
  %372 = load i64, i64* @ASPEED_CLK_ECLK, align 8
  %373 = getelementptr inbounds %struct.regmap*, %struct.regmap** %371, i64 %372
  store %struct.regmap* %368, %struct.regmap** %373, align 8
  store i32 0, i32* %10, align 4
  br label %374

374:                                              ; preds = %430, %366
  %375 = load i32, i32* %10, align 4
  %376 = load %struct.aspeed_gate_data*, %struct.aspeed_gate_data** @aspeed_g6_gates, align 8
  %377 = call i32 @ARRAY_SIZE(%struct.aspeed_gate_data* %376)
  %378 = icmp slt i32 %375, %377
  br i1 %378, label %379, label %433

379:                                              ; preds = %374
  %380 = load %struct.aspeed_gate_data*, %struct.aspeed_gate_data** @aspeed_g6_gates, align 8
  %381 = load i32, i32* %10, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.aspeed_gate_data, %struct.aspeed_gate_data* %380, i64 %382
  store %struct.aspeed_gate_data* %383, %struct.aspeed_gate_data** %12, align 8
  %384 = load %struct.aspeed_gate_data*, %struct.aspeed_gate_data** %12, align 8
  %385 = getelementptr inbounds %struct.aspeed_gate_data, %struct.aspeed_gate_data* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 4
  %387 = icmp eq i32 %386, 14
  br i1 %387, label %388, label %389

388:                                              ; preds = %379
  br label %391

389:                                              ; preds = %379
  %390 = load i32, i32* @CLK_GATE_SET_TO_DISABLE, align 4
  br label %391

391:                                              ; preds = %389, %388
  %392 = phi i32 [ 0, %388 ], [ %390, %389 ]
  store i32 %392, i32* %13, align 4
  %393 = load %struct.device*, %struct.device** %4, align 8
  %394 = load %struct.aspeed_gate_data*, %struct.aspeed_gate_data** %12, align 8
  %395 = getelementptr inbounds %struct.aspeed_gate_data, %struct.aspeed_gate_data* %394, i32 0, i32 4
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.aspeed_gate_data*, %struct.aspeed_gate_data** %12, align 8
  %398 = getelementptr inbounds %struct.aspeed_gate_data, %struct.aspeed_gate_data* %397, i32 0, i32 3
  %399 = load i32, i32* %398, align 4
  %400 = load %struct.aspeed_gate_data*, %struct.aspeed_gate_data** %12, align 8
  %401 = getelementptr inbounds %struct.aspeed_gate_data, %struct.aspeed_gate_data* %400, i32 0, i32 2
  %402 = load i32, i32* %401, align 4
  %403 = load %struct.regmap*, %struct.regmap** %6, align 8
  %404 = load %struct.aspeed_gate_data*, %struct.aspeed_gate_data** %12, align 8
  %405 = getelementptr inbounds %struct.aspeed_gate_data, %struct.aspeed_gate_data* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 4
  %407 = load %struct.aspeed_gate_data*, %struct.aspeed_gate_data** %12, align 8
  %408 = getelementptr inbounds %struct.aspeed_gate_data, %struct.aspeed_gate_data* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 4
  %410 = load i32, i32* %13, align 4
  %411 = call %struct.regmap* @aspeed_g6_clk_hw_register_gate(%struct.device* %393, i32 %396, i32 %399, i32 %402, %struct.regmap* %403, i32 %406, i32 %409, i32 %410, i32* @aspeed_g6_clk_lock)
  %412 = bitcast %struct.regmap* %411 to %struct.clk_hw*
  store %struct.clk_hw* %412, %struct.clk_hw** %7, align 8
  %413 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %414 = bitcast %struct.clk_hw* %413 to %struct.regmap*
  %415 = call i64 @IS_ERR(%struct.regmap* %414)
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %417, label %421

417:                                              ; preds = %391
  %418 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %419 = bitcast %struct.clk_hw* %418 to %struct.regmap*
  %420 = call i32 @PTR_ERR(%struct.regmap* %419)
  store i32 %420, i32* %2, align 4
  br label %434

421:                                              ; preds = %391
  %422 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %423 = bitcast %struct.clk_hw* %422 to %struct.regmap*
  %424 = load %struct.TYPE_4__*, %struct.TYPE_4__** @aspeed_g6_clk_data, align 8
  %425 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %424, i32 0, i32 0
  %426 = load %struct.regmap**, %struct.regmap*** %425, align 8
  %427 = load i32, i32* %10, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.regmap*, %struct.regmap** %426, i64 %428
  store %struct.regmap* %423, %struct.regmap** %429, align 8
  br label %430

430:                                              ; preds = %421
  %431 = load i32, i32* %10, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %10, align 4
  br label %374

433:                                              ; preds = %374
  store i32 0, i32* %2, align 4
  br label %434

434:                                              ; preds = %433, %417, %362, %339, %314, %289, %259, %236, %214, %191, %175, %153, %137, %115, %86, %63, %34, %23
  %435 = load i32, i32* %2, align 4
  ret i32 %435
}

declare dso_local %struct.regmap* @syscon_node_to_regmap(i32) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.aspeed_reset* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_reset_controller_register(%struct.device*, %struct.TYPE_3__*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local %struct.regmap* @clk_hw_register_fixed_rate(%struct.device*, i8*, i32*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.regmap* @clk_hw_register_gate(%struct.device*, i8*, i8*, i32, i64, i32, i32, i32*) #1

declare dso_local %struct.regmap* @clk_hw_register_divider_table(%struct.device*, i8*, i8*, i32, i64, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i64, i32, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local %struct.regmap* @clk_hw_register_mux(%struct.device*, i8*, %struct.aspeed_gate_data*, i32, i32, i64, i32, i32, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.aspeed_gate_data*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local %struct.regmap* @aspeed_g6_clk_hw_register_gate(%struct.device*, i32, i32, i32, %struct.regmap*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
