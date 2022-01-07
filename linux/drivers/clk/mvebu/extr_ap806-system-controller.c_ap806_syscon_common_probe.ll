; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_ap806-system-controller.c_ap806_syscon_common_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_ap806-system-controller.c_ap806_syscon_common_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"cannot get regmap\0A\00", align 1
@AP806_SAR_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"cannot read from regmap\0A\00", align 1
@AP806_SAR_CLKFREQ_MODE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"marvell,ap806-clock\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"marvell,ap807-clock\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"compatible not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"invalid Sample at Reset value\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"pll-cluster-0\00", align 1
@ap806_clks = common dso_local global %struct.regmap** null, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"pll-cluster-1\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"mss\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"sdio\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"ap-dclk\00", align 1
@of_clk_src_onecell_get = common dso_local global i32 0, align 4
@ap806_clk_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.device_node*)* @ap806_syscon_common_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap806_syscon_common_probe(%struct.platform_device* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.device_node*, align 8
  %13 = alloca %struct.regmap*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %11, align 8
  %18 = load %struct.device*, %struct.device** %11, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load %struct.device_node*, %struct.device_node** %19, align 8
  store %struct.device_node* %20, %struct.device_node** %12, align 8
  %21 = load %struct.device_node*, %struct.device_node** %5, align 8
  %22 = call %struct.regmap* @syscon_node_to_regmap(%struct.device_node* %21)
  store %struct.regmap* %22, %struct.regmap** %13, align 8
  %23 = load %struct.regmap*, %struct.regmap** %13, align 8
  %24 = call i64 @IS_ERR(%struct.regmap* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.device*, %struct.device** %11, align 8
  %28 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.regmap*, %struct.regmap** %13, align 8
  %30 = call i32 @PTR_ERR(%struct.regmap* %29)
  store i32 %30, i32* %3, align 4
  br label %238

31:                                               ; preds = %2
  %32 = load %struct.regmap*, %struct.regmap** %13, align 8
  %33 = load i32, i32* @AP806_SAR_REG, align 4
  %34 = call i32 @regmap_read(%struct.regmap* %32, i32 %33, i32* %14)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.device*, %struct.device** %11, align 8
  %39 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %15, align 4
  store i32 %40, i32* %3, align 4
  br label %238

41:                                               ; preds = %31
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @AP806_SAR_CLKFREQ_MODE_MASK, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %6, align 4
  %45 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.device, %struct.device* %46, i32 0, i32 0
  %48 = load %struct.device_node*, %struct.device_node** %47, align 8
  %49 = call i64 @of_device_is_compatible(%struct.device_node* %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @ap806_get_sar_clocks(i32 %52, i32* %7, i32* %8)
  store i32 %53, i32* %15, align 4
  br label %70

54:                                               ; preds = %41
  %55 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.device, %struct.device* %56, i32 0, i32 0
  %58 = load %struct.device_node*, %struct.device_node** %57, align 8
  %59 = call i64 @of_device_is_compatible(%struct.device_node* %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @ap807_get_sar_clocks(i32 %62, i32* %7, i32* %8)
  store i32 %63, i32* %15, align 4
  br label %69

64:                                               ; preds = %54
  %65 = load %struct.device*, %struct.device** %11, align 8
  %66 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %238

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %51
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load %struct.device*, %struct.device** %11, align 8
  %75 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %76 = load i32, i32* %15, align 4
  store i32 %76, i32* %3, align 4
  br label %238

77:                                               ; preds = %70
  %78 = load i32, i32* %7, align 4
  %79 = mul i32 %78, 1000000
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = mul i32 %80, 1000000
  store i32 %81, i32* %8, align 4
  %82 = load %struct.device*, %struct.device** %11, align 8
  %83 = load %struct.device_node*, %struct.device_node** %5, align 8
  %84 = call i8* @ap_cp_unique_name(%struct.device* %82, %struct.device_node* %83, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store i8* %84, i8** %9, align 8
  %85 = load %struct.device*, %struct.device** %11, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call %struct.regmap* @clk_register_fixed_rate(%struct.device* %85, i8* %86, i32* null, i32 0, i32 %87)
  %89 = load %struct.regmap**, %struct.regmap*** @ap806_clks, align 8
  %90 = getelementptr inbounds %struct.regmap*, %struct.regmap** %89, i64 0
  store %struct.regmap* %88, %struct.regmap** %90, align 8
  %91 = load %struct.regmap**, %struct.regmap*** @ap806_clks, align 8
  %92 = getelementptr inbounds %struct.regmap*, %struct.regmap** %91, i64 0
  %93 = load %struct.regmap*, %struct.regmap** %92, align 8
  %94 = call i64 @IS_ERR(%struct.regmap* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %77
  %97 = load %struct.regmap**, %struct.regmap*** @ap806_clks, align 8
  %98 = getelementptr inbounds %struct.regmap*, %struct.regmap** %97, i64 0
  %99 = load %struct.regmap*, %struct.regmap** %98, align 8
  %100 = call i32 @PTR_ERR(%struct.regmap* %99)
  store i32 %100, i32* %15, align 4
  br label %236

101:                                              ; preds = %77
  %102 = load %struct.device*, %struct.device** %11, align 8
  %103 = load %struct.device_node*, %struct.device_node** %5, align 8
  %104 = call i8* @ap_cp_unique_name(%struct.device* %102, %struct.device_node* %103, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  store i8* %104, i8** %9, align 8
  %105 = load %struct.device*, %struct.device** %11, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call %struct.regmap* @clk_register_fixed_rate(%struct.device* %105, i8* %106, i32* null, i32 0, i32 %107)
  %109 = load %struct.regmap**, %struct.regmap*** @ap806_clks, align 8
  %110 = getelementptr inbounds %struct.regmap*, %struct.regmap** %109, i64 1
  store %struct.regmap* %108, %struct.regmap** %110, align 8
  %111 = load %struct.regmap**, %struct.regmap*** @ap806_clks, align 8
  %112 = getelementptr inbounds %struct.regmap*, %struct.regmap** %111, i64 1
  %113 = load %struct.regmap*, %struct.regmap** %112, align 8
  %114 = call i64 @IS_ERR(%struct.regmap* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %101
  %117 = load %struct.regmap**, %struct.regmap*** @ap806_clks, align 8
  %118 = getelementptr inbounds %struct.regmap*, %struct.regmap** %117, i64 1
  %119 = load %struct.regmap*, %struct.regmap** %118, align 8
  %120 = call i32 @PTR_ERR(%struct.regmap* %119)
  store i32 %120, i32* %15, align 4
  br label %231

121:                                              ; preds = %101
  %122 = load %struct.device*, %struct.device** %11, align 8
  %123 = load %struct.device_node*, %struct.device_node** %5, align 8
  %124 = call i8* @ap_cp_unique_name(%struct.device* %122, %struct.device_node* %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  store i8* %124, i8** %10, align 8
  %125 = load %struct.device*, %struct.device** %11, align 8
  %126 = load i8*, i8** %10, align 8
  %127 = call %struct.regmap* @clk_register_fixed_rate(%struct.device* %125, i8* %126, i32* null, i32 0, i32 1200000000)
  %128 = load %struct.regmap**, %struct.regmap*** @ap806_clks, align 8
  %129 = getelementptr inbounds %struct.regmap*, %struct.regmap** %128, i64 2
  store %struct.regmap* %127, %struct.regmap** %129, align 8
  %130 = load %struct.regmap**, %struct.regmap*** @ap806_clks, align 8
  %131 = getelementptr inbounds %struct.regmap*, %struct.regmap** %130, i64 2
  %132 = load %struct.regmap*, %struct.regmap** %131, align 8
  %133 = call i64 @IS_ERR(%struct.regmap* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %121
  %136 = load %struct.regmap**, %struct.regmap*** @ap806_clks, align 8
  %137 = getelementptr inbounds %struct.regmap*, %struct.regmap** %136, i64 2
  %138 = load %struct.regmap*, %struct.regmap** %137, align 8
  %139 = call i32 @PTR_ERR(%struct.regmap* %138)
  store i32 %139, i32* %15, align 4
  br label %226

140:                                              ; preds = %121
  %141 = load %struct.device*, %struct.device** %11, align 8
  %142 = load %struct.device_node*, %struct.device_node** %5, align 8
  %143 = call i8* @ap_cp_unique_name(%struct.device* %141, %struct.device_node* %142, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  store i8* %143, i8** %9, align 8
  %144 = load i8*, i8** %9, align 8
  %145 = load i8*, i8** %10, align 8
  %146 = call %struct.regmap* @clk_register_fixed_factor(i32* null, i8* %144, i8* %145, i32 0, i32 1, i32 6)
  %147 = load %struct.regmap**, %struct.regmap*** @ap806_clks, align 8
  %148 = getelementptr inbounds %struct.regmap*, %struct.regmap** %147, i64 3
  store %struct.regmap* %146, %struct.regmap** %148, align 8
  %149 = load %struct.regmap**, %struct.regmap*** @ap806_clks, align 8
  %150 = getelementptr inbounds %struct.regmap*, %struct.regmap** %149, i64 3
  %151 = load %struct.regmap*, %struct.regmap** %150, align 8
  %152 = call i64 @IS_ERR(%struct.regmap* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %140
  %155 = load %struct.regmap**, %struct.regmap*** @ap806_clks, align 8
  %156 = getelementptr inbounds %struct.regmap*, %struct.regmap** %155, i64 3
  %157 = load %struct.regmap*, %struct.regmap** %156, align 8
  %158 = call i32 @PTR_ERR(%struct.regmap* %157)
  store i32 %158, i32* %15, align 4
  br label %221

159:                                              ; preds = %140
  %160 = load %struct.device*, %struct.device** %11, align 8
  %161 = load %struct.device_node*, %struct.device_node** %5, align 8
  %162 = call i8* @ap_cp_unique_name(%struct.device* %160, %struct.device_node* %161, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  store i8* %162, i8** %9, align 8
  %163 = load i8*, i8** %9, align 8
  %164 = load i8*, i8** %10, align 8
  %165 = call %struct.regmap* @clk_register_fixed_factor(i32* null, i8* %163, i8* %164, i32 0, i32 1, i32 3)
  %166 = load %struct.regmap**, %struct.regmap*** @ap806_clks, align 8
  %167 = getelementptr inbounds %struct.regmap*, %struct.regmap** %166, i64 4
  store %struct.regmap* %165, %struct.regmap** %167, align 8
  %168 = load %struct.regmap**, %struct.regmap*** @ap806_clks, align 8
  %169 = getelementptr inbounds %struct.regmap*, %struct.regmap** %168, i64 4
  %170 = load %struct.regmap*, %struct.regmap** %169, align 8
  %171 = call i64 @IS_ERR(%struct.regmap* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %159
  %174 = load %struct.regmap**, %struct.regmap*** @ap806_clks, align 8
  %175 = getelementptr inbounds %struct.regmap*, %struct.regmap** %174, i64 4
  %176 = load %struct.regmap*, %struct.regmap** %175, align 8
  %177 = call i32 @PTR_ERR(%struct.regmap* %176)
  store i32 %177, i32* %15, align 4
  br label %216

178:                                              ; preds = %159
  %179 = load %struct.device*, %struct.device** %11, align 8
  %180 = load %struct.device_node*, %struct.device_node** %5, align 8
  %181 = call i8* @ap_cp_unique_name(%struct.device* %179, %struct.device_node* %180, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  store i8* %181, i8** %9, align 8
  %182 = load %struct.device*, %struct.device** %11, align 8
  %183 = load i8*, i8** %9, align 8
  %184 = load i32, i32* %8, align 4
  %185 = call %struct.regmap* @clk_register_fixed_rate(%struct.device* %182, i8* %183, i32* null, i32 0, i32 %184)
  %186 = load %struct.regmap**, %struct.regmap*** @ap806_clks, align 8
  %187 = getelementptr inbounds %struct.regmap*, %struct.regmap** %186, i64 5
  store %struct.regmap* %185, %struct.regmap** %187, align 8
  %188 = load %struct.regmap**, %struct.regmap*** @ap806_clks, align 8
  %189 = getelementptr inbounds %struct.regmap*, %struct.regmap** %188, i64 5
  %190 = load %struct.regmap*, %struct.regmap** %189, align 8
  %191 = call i64 @IS_ERR(%struct.regmap* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %178
  %194 = load %struct.regmap**, %struct.regmap*** @ap806_clks, align 8
  %195 = getelementptr inbounds %struct.regmap*, %struct.regmap** %194, i64 5
  %196 = load %struct.regmap*, %struct.regmap** %195, align 8
  %197 = call i32 @PTR_ERR(%struct.regmap* %196)
  store i32 %197, i32* %15, align 4
  br label %211

198:                                              ; preds = %178
  %199 = load %struct.device_node*, %struct.device_node** %12, align 8
  %200 = load i32, i32* @of_clk_src_onecell_get, align 4
  %201 = call i32 @of_clk_add_provider(%struct.device_node* %199, i32 %200, i32* @ap806_clk_data)
  store i32 %201, i32* %15, align 4
  %202 = load i32, i32* %15, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %198
  br label %206

205:                                              ; preds = %198
  store i32 0, i32* %3, align 4
  br label %238

206:                                              ; preds = %204
  %207 = load %struct.regmap**, %struct.regmap*** @ap806_clks, align 8
  %208 = getelementptr inbounds %struct.regmap*, %struct.regmap** %207, i64 5
  %209 = load %struct.regmap*, %struct.regmap** %208, align 8
  %210 = call i32 @clk_unregister_fixed_factor(%struct.regmap* %209)
  br label %211

211:                                              ; preds = %206, %193
  %212 = load %struct.regmap**, %struct.regmap*** @ap806_clks, align 8
  %213 = getelementptr inbounds %struct.regmap*, %struct.regmap** %212, i64 4
  %214 = load %struct.regmap*, %struct.regmap** %213, align 8
  %215 = call i32 @clk_unregister_fixed_factor(%struct.regmap* %214)
  br label %216

216:                                              ; preds = %211, %173
  %217 = load %struct.regmap**, %struct.regmap*** @ap806_clks, align 8
  %218 = getelementptr inbounds %struct.regmap*, %struct.regmap** %217, i64 3
  %219 = load %struct.regmap*, %struct.regmap** %218, align 8
  %220 = call i32 @clk_unregister_fixed_factor(%struct.regmap* %219)
  br label %221

221:                                              ; preds = %216, %154
  %222 = load %struct.regmap**, %struct.regmap*** @ap806_clks, align 8
  %223 = getelementptr inbounds %struct.regmap*, %struct.regmap** %222, i64 2
  %224 = load %struct.regmap*, %struct.regmap** %223, align 8
  %225 = call i32 @clk_unregister_fixed_rate(%struct.regmap* %224)
  br label %226

226:                                              ; preds = %221, %135
  %227 = load %struct.regmap**, %struct.regmap*** @ap806_clks, align 8
  %228 = getelementptr inbounds %struct.regmap*, %struct.regmap** %227, i64 1
  %229 = load %struct.regmap*, %struct.regmap** %228, align 8
  %230 = call i32 @clk_unregister_fixed_rate(%struct.regmap* %229)
  br label %231

231:                                              ; preds = %226, %116
  %232 = load %struct.regmap**, %struct.regmap*** @ap806_clks, align 8
  %233 = getelementptr inbounds %struct.regmap*, %struct.regmap** %232, i64 0
  %234 = load %struct.regmap*, %struct.regmap** %233, align 8
  %235 = call i32 @clk_unregister_fixed_rate(%struct.regmap* %234)
  br label %236

236:                                              ; preds = %231, %96
  %237 = load i32, i32* %15, align 4
  store i32 %237, i32* %3, align 4
  br label %238

238:                                              ; preds = %236, %205, %73, %64, %37, %26
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

declare dso_local %struct.regmap* @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @ap806_get_sar_clocks(i32, i32*, i32*) #1

declare dso_local i32 @ap807_get_sar_clocks(i32, i32*, i32*) #1

declare dso_local i8* @ap_cp_unique_name(%struct.device*, %struct.device_node*, i8*) #1

declare dso_local %struct.regmap* @clk_register_fixed_rate(%struct.device*, i8*, i32*, i32, i32) #1

declare dso_local %struct.regmap* @clk_register_fixed_factor(i32*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @of_clk_add_provider(%struct.device_node*, i32, i32*) #1

declare dso_local i32 @clk_unregister_fixed_factor(%struct.regmap*) #1

declare dso_local i32 @clk_unregister_fixed_rate(%struct.regmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
