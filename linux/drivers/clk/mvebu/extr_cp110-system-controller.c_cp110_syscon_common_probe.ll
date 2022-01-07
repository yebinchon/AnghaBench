; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_cp110-system-controller.c_cp110_syscon_common_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_cp110-system-controller.c_cp110_syscon_common_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.regmap = type { i32 }
%struct.clk_hw_onecell_data = type { i32, %struct.regmap** }
%struct.clk_hw = type opaque

@gate_base_names = common dso_local global i8** null, align 8
@CP110_NAND_FLASH_CLK_CTRL_REG = common dso_local global i32 0, align 4
@CP110_CLK_NUM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"pll0\00", align 1
@CP110_CORE_PLL0 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"ppv2-core\00", align 1
@CP110_CORE_PPV2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"x2core\00", align 1
@CP110_CORE_X2CORE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@CP110_CORE_CORE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"nand-core\00", align 1
@NF_CLOCK_SEL_400_MASK = common dso_local global i32 0, align 4
@CP110_CORE_NAND = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"sdio-core\00", align 1
@CP110_CORE_SDIO = common dso_local global i64 0, align 8
@CP110_MAX_CORE_CLOCKS = common dso_local global i32 0, align 4
@cp110_of_clk_get = common dso_local global i32 0, align 4
@CP110_MAX_GATABLE_CLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.device_node*)* @cp110_syscon_common_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp110_syscon_common_probe(%struct.platform_device* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.clk_hw_onecell_data*, align 8
  %16 = alloca %struct.clk_hw*, align 8
  %17 = alloca %struct.clk_hw**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  store %struct.device* %26, %struct.device** %7, align 8
  %27 = load %struct.device*, %struct.device** %7, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  %29 = load %struct.device_node*, %struct.device_node** %28, align 8
  store %struct.device_node* %29, %struct.device_node** %8, align 8
  %30 = load i8**, i8*** @gate_base_names, align 8
  %31 = call i32 @ARRAY_SIZE(i8** %30)
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %21, align 8
  %34 = alloca i8*, i64 %32, align 16
  store i64 %32, i64* %22, align 8
  %35 = load %struct.device_node*, %struct.device_node** %5, align 8
  %36 = call %struct.regmap* @syscon_node_to_regmap(%struct.device_node* %35)
  store %struct.regmap* %36, %struct.regmap** %6, align 8
  %37 = load %struct.regmap*, %struct.regmap** %6, align 8
  %38 = call i64 @IS_ERR(%struct.regmap* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %2
  %41 = load %struct.regmap*, %struct.regmap** %6, align 8
  %42 = call i32 @PTR_ERR(%struct.regmap* %41)
  store i32 %42, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %358

43:                                               ; preds = %2
  %44 = load %struct.regmap*, %struct.regmap** %6, align 8
  %45 = load i32, i32* @CP110_NAND_FLASH_CLK_CTRL_REG, align 4
  %46 = call i32 @regmap_read(%struct.regmap* %44, i32 %45, i32* %18)
  store i32 %46, i32* %20, align 4
  %47 = load i32, i32* %20, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %20, align 4
  store i32 %50, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %358

51:                                               ; preds = %43
  %52 = load %struct.device*, %struct.device** %7, align 8
  %53 = load i32, i32* @CP110_CLK_NUM, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 8, %54
  %56 = add i64 16, %55
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.clk_hw_onecell_data* @devm_kzalloc(%struct.device* %52, i32 %57, i32 %58)
  store %struct.clk_hw_onecell_data* %59, %struct.clk_hw_onecell_data** %15, align 8
  %60 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %15, align 8
  %61 = icmp ne %struct.clk_hw_onecell_data* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %51
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %358

65:                                               ; preds = %51
  %66 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %15, align 8
  %67 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %66, i32 0, i32 1
  %68 = load %struct.regmap**, %struct.regmap*** %67, align 8
  %69 = bitcast %struct.regmap** %68 to %struct.clk_hw**
  store %struct.clk_hw** %69, %struct.clk_hw*** %17, align 8
  %70 = load i32, i32* @CP110_CLK_NUM, align 4
  %71 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %15, align 8
  %72 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.device*, %struct.device** %7, align 8
  %74 = load %struct.device_node*, %struct.device_node** %5, align 8
  %75 = call i8* @ap_cp_unique_name(%struct.device* %73, %struct.device_node* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %75, i8** %10, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = call %struct.regmap* @clk_hw_register_fixed_rate(i32* null, i8* %76, i32* null, i32 0, i32 1000000000)
  %78 = bitcast %struct.regmap* %77 to %struct.clk_hw*
  store %struct.clk_hw* %78, %struct.clk_hw** %16, align 8
  %79 = load %struct.clk_hw*, %struct.clk_hw** %16, align 8
  %80 = bitcast %struct.clk_hw* %79 to %struct.regmap*
  %81 = call i64 @IS_ERR(%struct.regmap* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %65
  %84 = load %struct.clk_hw*, %struct.clk_hw** %16, align 8
  %85 = bitcast %struct.clk_hw* %84 to %struct.regmap*
  %86 = call i32 @PTR_ERR(%struct.regmap* %85)
  store i32 %86, i32* %20, align 4
  br label %356

87:                                               ; preds = %65
  %88 = load %struct.clk_hw*, %struct.clk_hw** %16, align 8
  %89 = load %struct.clk_hw**, %struct.clk_hw*** %17, align 8
  %90 = load i64, i64* @CP110_CORE_PLL0, align 8
  %91 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %89, i64 %90
  store %struct.clk_hw* %88, %struct.clk_hw** %91, align 8
  %92 = load %struct.device*, %struct.device** %7, align 8
  %93 = load %struct.device_node*, %struct.device_node** %5, align 8
  %94 = call i8* @ap_cp_unique_name(%struct.device* %92, %struct.device_node* %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %94, i8** %9, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = call %struct.regmap* @clk_hw_register_fixed_factor(i32* null, i8* %95, i8* %96, i32 0, i32 1, i32 3)
  %98 = bitcast %struct.regmap* %97 to %struct.clk_hw*
  store %struct.clk_hw* %98, %struct.clk_hw** %16, align 8
  %99 = load %struct.clk_hw*, %struct.clk_hw** %16, align 8
  %100 = bitcast %struct.clk_hw* %99 to %struct.regmap*
  %101 = call i64 @IS_ERR(%struct.regmap* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %87
  %104 = load %struct.clk_hw*, %struct.clk_hw** %16, align 8
  %105 = bitcast %struct.clk_hw* %104 to %struct.regmap*
  %106 = call i32 @PTR_ERR(%struct.regmap* %105)
  store i32 %106, i32* %20, align 4
  br label %349

107:                                              ; preds = %87
  %108 = load %struct.clk_hw*, %struct.clk_hw** %16, align 8
  %109 = load %struct.clk_hw**, %struct.clk_hw*** %17, align 8
  %110 = load i64, i64* @CP110_CORE_PPV2, align 8
  %111 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %109, i64 %110
  store %struct.clk_hw* %108, %struct.clk_hw** %111, align 8
  %112 = load %struct.device*, %struct.device** %7, align 8
  %113 = load %struct.device_node*, %struct.device_node** %5, align 8
  %114 = call i8* @ap_cp_unique_name(%struct.device* %112, %struct.device_node* %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %114, i8** %12, align 8
  %115 = load i8*, i8** %12, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = call %struct.regmap* @clk_hw_register_fixed_factor(i32* null, i8* %115, i8* %116, i32 0, i32 1, i32 2)
  %118 = bitcast %struct.regmap* %117 to %struct.clk_hw*
  store %struct.clk_hw* %118, %struct.clk_hw** %16, align 8
  %119 = load %struct.clk_hw*, %struct.clk_hw** %16, align 8
  %120 = bitcast %struct.clk_hw* %119 to %struct.regmap*
  %121 = call i64 @IS_ERR(%struct.regmap* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %107
  %124 = load %struct.clk_hw*, %struct.clk_hw** %16, align 8
  %125 = bitcast %struct.clk_hw* %124 to %struct.regmap*
  %126 = call i32 @PTR_ERR(%struct.regmap* %125)
  store i32 %126, i32* %20, align 4
  br label %342

127:                                              ; preds = %107
  %128 = load %struct.clk_hw*, %struct.clk_hw** %16, align 8
  %129 = load %struct.clk_hw**, %struct.clk_hw*** %17, align 8
  %130 = load i64, i64* @CP110_CORE_X2CORE, align 8
  %131 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %129, i64 %130
  store %struct.clk_hw* %128, %struct.clk_hw** %131, align 8
  %132 = load %struct.device*, %struct.device** %7, align 8
  %133 = load %struct.device_node*, %struct.device_node** %5, align 8
  %134 = call i8* @ap_cp_unique_name(%struct.device* %132, %struct.device_node* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %134, i8** %11, align 8
  %135 = load i8*, i8** %11, align 8
  %136 = load i8*, i8** %12, align 8
  %137 = call %struct.regmap* @clk_hw_register_fixed_factor(i32* null, i8* %135, i8* %136, i32 0, i32 1, i32 2)
  %138 = bitcast %struct.regmap* %137 to %struct.clk_hw*
  store %struct.clk_hw* %138, %struct.clk_hw** %16, align 8
  %139 = load %struct.clk_hw*, %struct.clk_hw** %16, align 8
  %140 = bitcast %struct.clk_hw* %139 to %struct.regmap*
  %141 = call i64 @IS_ERR(%struct.regmap* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %127
  %144 = load %struct.clk_hw*, %struct.clk_hw** %16, align 8
  %145 = bitcast %struct.clk_hw* %144 to %struct.regmap*
  %146 = call i32 @PTR_ERR(%struct.regmap* %145)
  store i32 %146, i32* %20, align 4
  br label %335

147:                                              ; preds = %127
  %148 = load %struct.clk_hw*, %struct.clk_hw** %16, align 8
  %149 = load %struct.clk_hw**, %struct.clk_hw*** %17, align 8
  %150 = load i64, i64* @CP110_CORE_CORE, align 8
  %151 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %149, i64 %150
  store %struct.clk_hw* %148, %struct.clk_hw** %151, align 8
  %152 = load %struct.device*, %struct.device** %7, align 8
  %153 = load %struct.device_node*, %struct.device_node** %5, align 8
  %154 = call i8* @ap_cp_unique_name(%struct.device* %152, %struct.device_node* %153, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i8* %154, i8** %13, align 8
  %155 = load i32, i32* %18, align 4
  %156 = load i32, i32* @NF_CLOCK_SEL_400_MASK, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %147
  %160 = load i8*, i8** %13, align 8
  %161 = load i8*, i8** %10, align 8
  %162 = call %struct.regmap* @clk_hw_register_fixed_factor(i32* null, i8* %160, i8* %161, i32 0, i32 2, i32 5)
  %163 = bitcast %struct.regmap* %162 to %struct.clk_hw*
  store %struct.clk_hw* %163, %struct.clk_hw** %16, align 8
  br label %169

164:                                              ; preds = %147
  %165 = load i8*, i8** %13, align 8
  %166 = load i8*, i8** %11, align 8
  %167 = call %struct.regmap* @clk_hw_register_fixed_factor(i32* null, i8* %165, i8* %166, i32 0, i32 1, i32 1)
  %168 = bitcast %struct.regmap* %167 to %struct.clk_hw*
  store %struct.clk_hw* %168, %struct.clk_hw** %16, align 8
  br label %169

169:                                              ; preds = %164, %159
  %170 = load %struct.clk_hw*, %struct.clk_hw** %16, align 8
  %171 = bitcast %struct.clk_hw* %170 to %struct.regmap*
  %172 = call i64 @IS_ERR(%struct.regmap* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %169
  %175 = load %struct.clk_hw*, %struct.clk_hw** %16, align 8
  %176 = bitcast %struct.clk_hw* %175 to %struct.regmap*
  %177 = call i32 @PTR_ERR(%struct.regmap* %176)
  store i32 %177, i32* %20, align 4
  br label %328

178:                                              ; preds = %169
  %179 = load %struct.clk_hw*, %struct.clk_hw** %16, align 8
  %180 = load %struct.clk_hw**, %struct.clk_hw*** %17, align 8
  %181 = load i64, i64* @CP110_CORE_NAND, align 8
  %182 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %180, i64 %181
  store %struct.clk_hw* %179, %struct.clk_hw** %182, align 8
  %183 = load %struct.device*, %struct.device** %7, align 8
  %184 = load %struct.device_node*, %struct.device_node** %5, align 8
  %185 = call i8* @ap_cp_unique_name(%struct.device* %183, %struct.device_node* %184, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i8* %185, i8** %14, align 8
  %186 = load i8*, i8** %14, align 8
  %187 = load i8*, i8** %10, align 8
  %188 = call %struct.regmap* @clk_hw_register_fixed_factor(i32* null, i8* %186, i8* %187, i32 0, i32 2, i32 5)
  %189 = bitcast %struct.regmap* %188 to %struct.clk_hw*
  store %struct.clk_hw* %189, %struct.clk_hw** %16, align 8
  %190 = load %struct.clk_hw*, %struct.clk_hw** %16, align 8
  %191 = bitcast %struct.clk_hw* %190 to %struct.regmap*
  %192 = call i64 @IS_ERR(%struct.regmap* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %178
  %195 = load %struct.clk_hw*, %struct.clk_hw** %16, align 8
  %196 = bitcast %struct.clk_hw* %195 to %struct.regmap*
  %197 = call i32 @PTR_ERR(%struct.regmap* %196)
  store i32 %197, i32* %20, align 4
  br label %321

198:                                              ; preds = %178
  %199 = load %struct.clk_hw*, %struct.clk_hw** %16, align 8
  %200 = load %struct.clk_hw**, %struct.clk_hw*** %17, align 8
  %201 = load i64, i64* @CP110_CORE_SDIO, align 8
  %202 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %200, i64 %201
  store %struct.clk_hw* %199, %struct.clk_hw** %202, align 8
  store i32 0, i32* %19, align 4
  br label %203

203:                                              ; preds = %220, %198
  %204 = load i32, i32* %19, align 4
  %205 = load i8**, i8*** @gate_base_names, align 8
  %206 = call i32 @ARRAY_SIZE(i8** %205)
  %207 = icmp slt i32 %204, %206
  br i1 %207, label %208, label %223

208:                                              ; preds = %203
  %209 = load %struct.device*, %struct.device** %7, align 8
  %210 = load %struct.device_node*, %struct.device_node** %5, align 8
  %211 = load i8**, i8*** @gate_base_names, align 8
  %212 = load i32, i32* %19, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8*, i8** %211, i64 %213
  %215 = load i8*, i8** %214, align 8
  %216 = call i8* @ap_cp_unique_name(%struct.device* %209, %struct.device_node* %210, i8* %215)
  %217 = load i32, i32* %19, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8*, i8** %34, i64 %218
  store i8* %216, i8** %219, align 8
  br label %220

220:                                              ; preds = %208
  %221 = load i32, i32* %19, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %19, align 4
  br label %203

223:                                              ; preds = %203
  store i32 0, i32* %19, align 4
  br label %224

224:                                              ; preds = %274, %223
  %225 = load i32, i32* %19, align 4
  %226 = load i8**, i8*** @gate_base_names, align 8
  %227 = call i32 @ARRAY_SIZE(i8** %226)
  %228 = icmp slt i32 %225, %227
  br i1 %228, label %229, label %277

229:                                              ; preds = %224
  %230 = load i32, i32* %19, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8*, i8** %34, i64 %231
  %233 = load i8*, i8** %232, align 8
  %234 = icmp eq i8* %233, null
  br i1 %234, label %235, label %236

235:                                              ; preds = %229
  br label %274

236:                                              ; preds = %229
  %237 = load i32, i32* %19, align 4
  switch i32 %237, label %246 [
    i32 132, label %238
    i32 133, label %240
    i32 135, label %240
    i32 129, label %240
    i32 128, label %242
    i32 134, label %244
    i32 130, label %244
    i32 131, label %244
    i32 137, label %244
    i32 136, label %244
  ]

238:                                              ; preds = %236
  %239 = load i8*, i8** %13, align 8
  store i8* %239, i8** %24, align 8
  br label %248

240:                                              ; preds = %236, %236, %236
  %241 = load i8*, i8** %9, align 8
  store i8* %241, i8** %24, align 8
  br label %248

242:                                              ; preds = %236
  %243 = load i8*, i8** %14, align 8
  store i8* %243, i8** %24, align 8
  br label %248

244:                                              ; preds = %236, %236, %236, %236, %236
  %245 = load i8*, i8** %12, align 8
  store i8* %245, i8** %24, align 8
  br label %248

246:                                              ; preds = %236
  %247 = load i8*, i8** %11, align 8
  store i8* %247, i8** %24, align 8
  br label %248

248:                                              ; preds = %246, %244, %242, %240, %238
  %249 = load i32, i32* %19, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8*, i8** %34, i64 %250
  %252 = load i8*, i8** %251, align 8
  %253 = load i8*, i8** %24, align 8
  %254 = load %struct.regmap*, %struct.regmap** %6, align 8
  %255 = load i32, i32* %19, align 4
  %256 = call %struct.regmap* @cp110_register_gate(i8* %252, i8* %253, %struct.regmap* %254, i32 %255)
  %257 = bitcast %struct.regmap* %256 to %struct.clk_hw*
  store %struct.clk_hw* %257, %struct.clk_hw** %16, align 8
  %258 = load %struct.clk_hw*, %struct.clk_hw** %16, align 8
  %259 = bitcast %struct.clk_hw* %258 to %struct.regmap*
  %260 = call i64 @IS_ERR(%struct.regmap* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %248
  %263 = load %struct.clk_hw*, %struct.clk_hw** %16, align 8
  %264 = bitcast %struct.clk_hw* %263 to %struct.regmap*
  %265 = call i32 @PTR_ERR(%struct.regmap* %264)
  store i32 %265, i32* %20, align 4
  br label %291

266:                                              ; preds = %248
  %267 = load %struct.clk_hw*, %struct.clk_hw** %16, align 8
  %268 = load %struct.clk_hw**, %struct.clk_hw*** %17, align 8
  %269 = load i32, i32* @CP110_MAX_CORE_CLOCKS, align 4
  %270 = load i32, i32* %19, align 4
  %271 = add nsw i32 %269, %270
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %268, i64 %272
  store %struct.clk_hw* %267, %struct.clk_hw** %273, align 8
  br label %274

274:                                              ; preds = %266, %235
  %275 = load i32, i32* %19, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %19, align 4
  br label %224

277:                                              ; preds = %224
  %278 = load %struct.device_node*, %struct.device_node** %8, align 8
  %279 = load i32, i32* @cp110_of_clk_get, align 4
  %280 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %15, align 8
  %281 = call i32 @of_clk_add_hw_provider(%struct.device_node* %278, i32 %279, %struct.clk_hw_onecell_data* %280)
  store i32 %281, i32* %20, align 4
  %282 = load i32, i32* %20, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %277
  br label %290

285:                                              ; preds = %277
  %286 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %287 = load %struct.clk_hw**, %struct.clk_hw*** %17, align 8
  %288 = bitcast %struct.clk_hw** %287 to %struct.regmap**
  %289 = call i32 @platform_set_drvdata(%struct.platform_device* %286, %struct.regmap** %288)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %358

290:                                              ; preds = %284
  br label %291

291:                                              ; preds = %290, %262
  store i32 0, i32* %19, align 4
  br label %292

292:                                              ; preds = %311, %291
  %293 = load i32, i32* %19, align 4
  %294 = load i32, i32* @CP110_MAX_GATABLE_CLOCKS, align 4
  %295 = icmp slt i32 %293, %294
  br i1 %295, label %296, label %314

296:                                              ; preds = %292
  %297 = load %struct.clk_hw**, %struct.clk_hw*** %17, align 8
  %298 = load i32, i32* @CP110_MAX_CORE_CLOCKS, align 4
  %299 = load i32, i32* %19, align 4
  %300 = add nsw i32 %298, %299
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %297, i64 %301
  %303 = load %struct.clk_hw*, %struct.clk_hw** %302, align 8
  store %struct.clk_hw* %303, %struct.clk_hw** %16, align 8
  %304 = load %struct.clk_hw*, %struct.clk_hw** %16, align 8
  %305 = icmp ne %struct.clk_hw* %304, null
  br i1 %305, label %306, label %310

306:                                              ; preds = %296
  %307 = load %struct.clk_hw*, %struct.clk_hw** %16, align 8
  %308 = bitcast %struct.clk_hw* %307 to %struct.regmap*
  %309 = call i32 @cp110_unregister_gate(%struct.regmap* %308)
  br label %310

310:                                              ; preds = %306, %296
  br label %311

311:                                              ; preds = %310
  %312 = load i32, i32* %19, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %19, align 4
  br label %292

314:                                              ; preds = %292
  %315 = load %struct.clk_hw**, %struct.clk_hw*** %17, align 8
  %316 = load i64, i64* @CP110_CORE_SDIO, align 8
  %317 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %315, i64 %316
  %318 = load %struct.clk_hw*, %struct.clk_hw** %317, align 8
  %319 = bitcast %struct.clk_hw* %318 to %struct.regmap*
  %320 = call i32 @clk_hw_unregister_fixed_factor(%struct.regmap* %319)
  br label %321

321:                                              ; preds = %314, %194
  %322 = load %struct.clk_hw**, %struct.clk_hw*** %17, align 8
  %323 = load i64, i64* @CP110_CORE_NAND, align 8
  %324 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %322, i64 %323
  %325 = load %struct.clk_hw*, %struct.clk_hw** %324, align 8
  %326 = bitcast %struct.clk_hw* %325 to %struct.regmap*
  %327 = call i32 @clk_hw_unregister_fixed_factor(%struct.regmap* %326)
  br label %328

328:                                              ; preds = %321, %174
  %329 = load %struct.clk_hw**, %struct.clk_hw*** %17, align 8
  %330 = load i64, i64* @CP110_CORE_CORE, align 8
  %331 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %329, i64 %330
  %332 = load %struct.clk_hw*, %struct.clk_hw** %331, align 8
  %333 = bitcast %struct.clk_hw* %332 to %struct.regmap*
  %334 = call i32 @clk_hw_unregister_fixed_factor(%struct.regmap* %333)
  br label %335

335:                                              ; preds = %328, %143
  %336 = load %struct.clk_hw**, %struct.clk_hw*** %17, align 8
  %337 = load i64, i64* @CP110_CORE_X2CORE, align 8
  %338 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %336, i64 %337
  %339 = load %struct.clk_hw*, %struct.clk_hw** %338, align 8
  %340 = bitcast %struct.clk_hw* %339 to %struct.regmap*
  %341 = call i32 @clk_hw_unregister_fixed_factor(%struct.regmap* %340)
  br label %342

342:                                              ; preds = %335, %123
  %343 = load %struct.clk_hw**, %struct.clk_hw*** %17, align 8
  %344 = load i64, i64* @CP110_CORE_PPV2, align 8
  %345 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %343, i64 %344
  %346 = load %struct.clk_hw*, %struct.clk_hw** %345, align 8
  %347 = bitcast %struct.clk_hw* %346 to %struct.regmap*
  %348 = call i32 @clk_hw_unregister_fixed_factor(%struct.regmap* %347)
  br label %349

349:                                              ; preds = %342, %103
  %350 = load %struct.clk_hw**, %struct.clk_hw*** %17, align 8
  %351 = load i64, i64* @CP110_CORE_PLL0, align 8
  %352 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %350, i64 %351
  %353 = load %struct.clk_hw*, %struct.clk_hw** %352, align 8
  %354 = bitcast %struct.clk_hw* %353 to %struct.regmap*
  %355 = call i32 @clk_hw_unregister_fixed_rate(%struct.regmap* %354)
  br label %356

356:                                              ; preds = %349, %83
  %357 = load i32, i32* %20, align 4
  store i32 %357, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %358

358:                                              ; preds = %356, %285, %62, %49, %40
  %359 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %359)
  %360 = load i32, i32* %3, align 4
  ret i32 %360
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.regmap* @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local %struct.clk_hw_onecell_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @ap_cp_unique_name(%struct.device*, %struct.device_node*, i8*) #1

declare dso_local %struct.regmap* @clk_hw_register_fixed_rate(i32*, i8*, i32*, i32, i32) #1

declare dso_local %struct.regmap* @clk_hw_register_fixed_factor(i32*, i8*, i8*, i32, i32, i32) #1

declare dso_local %struct.regmap* @cp110_register_gate(i8*, i8*, %struct.regmap*, i32) #1

declare dso_local i32 @of_clk_add_hw_provider(%struct.device_node*, i32, %struct.clk_hw_onecell_data*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.regmap**) #1

declare dso_local i32 @cp110_unregister_gate(%struct.regmap*) #1

declare dso_local i32 @clk_hw_unregister_fixed_factor(%struct.regmap*) #1

declare dso_local i32 @clk_hw_unregister_fixed_rate(%struct.regmap*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
