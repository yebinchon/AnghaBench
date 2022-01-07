; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sun9i-mmc.c_sun9i_a80_mmc_config_clk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sun9i-mmc.c_sun9i_a80_mmc_config_clk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.device_node* }
%struct.device_node = type { i8* }
%struct.sun9i_mmc_clk_data = type { i64, %struct.TYPE_9__, i32, i64, i64, %struct.clk_onecell_data }
%struct.TYPE_9__ = type { i32, %struct.device_node*, i32*, i32 }
%struct.clk_onecell_data = type { i32, i64* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@SUN9I_MMC_WIDTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Could not get clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Could not get reset control\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Reset deassert err %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@SUN9I_MMC_GATE_BIT = common dso_local global i32 0, align 4
@of_clk_src_onecell_get = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@sun9i_mmc_reset_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sun9i_a80_mmc_config_clk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun9i_a80_mmc_config_clk_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.sun9i_mmc_clk_data*, align 8
  %6 = alloca %struct.clk_onecell_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %4, align 8
  %17 = load %struct.device_node*, %struct.device_node** %4, align 8
  %18 = getelementptr inbounds %struct.device_node, %struct.device_node* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %7, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.sun9i_mmc_clk_data* @devm_kzalloc(%struct.TYPE_10__* %21, i32 80, i32 %22)
  store %struct.sun9i_mmc_clk_data* %23, %struct.sun9i_mmc_clk_data** %5, align 8
  %24 = load %struct.sun9i_mmc_clk_data*, %struct.sun9i_mmc_clk_data** %5, align 8
  %25 = icmp ne %struct.sun9i_mmc_clk_data* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %248

29:                                               ; preds = %1
  %30 = load %struct.sun9i_mmc_clk_data*, %struct.sun9i_mmc_clk_data** %5, align 8
  %31 = getelementptr inbounds %struct.sun9i_mmc_clk_data, %struct.sun9i_mmc_clk_data* %30, i32 0, i32 2
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = load i32, i32* @IORESOURCE_MEM, align 4
  %35 = call %struct.resource* @platform_get_resource(%struct.platform_device* %33, i32 %34, i32 0)
  store %struct.resource* %35, %struct.resource** %9, align 8
  %36 = load %struct.resource*, %struct.resource** %9, align 8
  %37 = call i32 @resource_size(%struct.resource* %36)
  %38 = load i32, i32* @SUN9I_MMC_WIDTH, align 4
  %39 = call i32 @DIV_ROUND_UP(i32 %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load %struct.resource*, %struct.resource** %9, align 8
  %43 = call i64 @devm_ioremap_resource(%struct.TYPE_10__* %41, %struct.resource* %42)
  %44 = load %struct.sun9i_mmc_clk_data*, %struct.sun9i_mmc_clk_data** %5, align 8
  %45 = getelementptr inbounds %struct.sun9i_mmc_clk_data, %struct.sun9i_mmc_clk_data* %44, i32 0, i32 3
  store i64 %43, i64* %45, align 8
  %46 = load %struct.sun9i_mmc_clk_data*, %struct.sun9i_mmc_clk_data** %5, align 8
  %47 = getelementptr inbounds %struct.sun9i_mmc_clk_data, %struct.sun9i_mmc_clk_data* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @IS_ERR(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %29
  %52 = load %struct.sun9i_mmc_clk_data*, %struct.sun9i_mmc_clk_data** %5, align 8
  %53 = getelementptr inbounds %struct.sun9i_mmc_clk_data, %struct.sun9i_mmc_clk_data* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @PTR_ERR(i64 %54)
  store i32 %55, i32* %2, align 4
  br label %248

56:                                               ; preds = %29
  %57 = load %struct.sun9i_mmc_clk_data*, %struct.sun9i_mmc_clk_data** %5, align 8
  %58 = getelementptr inbounds %struct.sun9i_mmc_clk_data, %struct.sun9i_mmc_clk_data* %57, i32 0, i32 5
  store %struct.clk_onecell_data* %58, %struct.clk_onecell_data** %6, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %6, align 8
  %61 = getelementptr inbounds %struct.clk_onecell_data, %struct.clk_onecell_data* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i64* @devm_kcalloc(%struct.TYPE_10__* %63, i32 %64, i32 8, i32 %65)
  %67 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %6, align 8
  %68 = getelementptr inbounds %struct.clk_onecell_data, %struct.clk_onecell_data* %67, i32 0, i32 1
  store i64* %66, i64** %68, align 8
  %69 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %6, align 8
  %70 = getelementptr inbounds %struct.clk_onecell_data, %struct.clk_onecell_data* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = icmp ne i64* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %56
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %248

76:                                               ; preds = %56
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = call i64 @devm_clk_get(%struct.TYPE_10__* %78, i32* null)
  %80 = load %struct.sun9i_mmc_clk_data*, %struct.sun9i_mmc_clk_data** %5, align 8
  %81 = getelementptr inbounds %struct.sun9i_mmc_clk_data, %struct.sun9i_mmc_clk_data* %80, i32 0, i32 4
  store i64 %79, i64* %81, align 8
  %82 = load %struct.sun9i_mmc_clk_data*, %struct.sun9i_mmc_clk_data** %5, align 8
  %83 = getelementptr inbounds %struct.sun9i_mmc_clk_data, %struct.sun9i_mmc_clk_data* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @IS_ERR(i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %76
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %91 = load %struct.sun9i_mmc_clk_data*, %struct.sun9i_mmc_clk_data** %5, align 8
  %92 = getelementptr inbounds %struct.sun9i_mmc_clk_data, %struct.sun9i_mmc_clk_data* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @PTR_ERR(i64 %93)
  store i32 %94, i32* %2, align 4
  br label %248

95:                                               ; preds = %76
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = call i64 @devm_reset_control_get_exclusive(%struct.TYPE_10__* %97, i32* null)
  %99 = load %struct.sun9i_mmc_clk_data*, %struct.sun9i_mmc_clk_data** %5, align 8
  %100 = getelementptr inbounds %struct.sun9i_mmc_clk_data, %struct.sun9i_mmc_clk_data* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  %101 = load %struct.sun9i_mmc_clk_data*, %struct.sun9i_mmc_clk_data** %5, align 8
  %102 = getelementptr inbounds %struct.sun9i_mmc_clk_data, %struct.sun9i_mmc_clk_data* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @IS_ERR(i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %95
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %108, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %110 = load %struct.sun9i_mmc_clk_data*, %struct.sun9i_mmc_clk_data** %5, align 8
  %111 = getelementptr inbounds %struct.sun9i_mmc_clk_data, %struct.sun9i_mmc_clk_data* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @PTR_ERR(i64 %112)
  store i32 %113, i32* %2, align 4
  br label %248

114:                                              ; preds = %95
  %115 = load %struct.sun9i_mmc_clk_data*, %struct.sun9i_mmc_clk_data** %5, align 8
  %116 = getelementptr inbounds %struct.sun9i_mmc_clk_data, %struct.sun9i_mmc_clk_data* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @reset_control_deassert(i64 %117)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %114
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = load i32, i32* %12, align 4
  %125 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %123, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* %12, align 4
  store i32 %126, i32* %2, align 4
  br label %248

127:                                              ; preds = %114
  %128 = load %struct.sun9i_mmc_clk_data*, %struct.sun9i_mmc_clk_data** %5, align 8
  %129 = getelementptr inbounds %struct.sun9i_mmc_clk_data, %struct.sun9i_mmc_clk_data* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = call i8* @__clk_get_name(i64 %130)
  store i8* %131, i8** %8, align 8
  store i32 0, i32* %11, align 4
  br label %132

132:                                              ; preds = %181, %127
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %184

136:                                              ; preds = %132
  %137 = load %struct.device_node*, %struct.device_node** %4, align 8
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @of_property_read_string_index(%struct.device_node* %137, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %138, i8** %7)
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = load i8*, i8** %7, align 8
  %143 = load i8*, i8** %8, align 8
  %144 = load %struct.sun9i_mmc_clk_data*, %struct.sun9i_mmc_clk_data** %5, align 8
  %145 = getelementptr inbounds %struct.sun9i_mmc_clk_data, %struct.sun9i_mmc_clk_data* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = load i32, i32* @SUN9I_MMC_WIDTH, align 4
  %148 = load i32, i32* %11, align 4
  %149 = mul nsw i32 %147, %148
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %146, %150
  %152 = load i32, i32* @SUN9I_MMC_GATE_BIT, align 4
  %153 = load %struct.sun9i_mmc_clk_data*, %struct.sun9i_mmc_clk_data** %5, align 8
  %154 = getelementptr inbounds %struct.sun9i_mmc_clk_data, %struct.sun9i_mmc_clk_data* %153, i32 0, i32 2
  %155 = call i64 @clk_register_gate(%struct.TYPE_10__* %141, i8* %142, i8* %143, i32 0, i64 %151, i32 %152, i32 0, i32* %154)
  %156 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %6, align 8
  %157 = getelementptr inbounds %struct.clk_onecell_data, %struct.clk_onecell_data* %156, i32 0, i32 1
  %158 = load i64*, i64** %157, align 8
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  store i64 %155, i64* %161, align 8
  %162 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %6, align 8
  %163 = getelementptr inbounds %struct.clk_onecell_data, %struct.clk_onecell_data* %162, i32 0, i32 1
  %164 = load i64*, i64** %163, align 8
  %165 = load i32, i32* %11, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %164, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = call i64 @IS_ERR(i64 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %136
  %172 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %6, align 8
  %173 = getelementptr inbounds %struct.clk_onecell_data, %struct.clk_onecell_data* %172, i32 0, i32 1
  %174 = load i64*, i64** %173, align 8
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i64, i64* %174, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @PTR_ERR(i64 %178)
  store i32 %179, i32* %12, align 4
  br label %242

180:                                              ; preds = %136
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %11, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %11, align 4
  br label %132

184:                                              ; preds = %132
  %185 = load %struct.device_node*, %struct.device_node** %4, align 8
  %186 = load i32, i32* @of_clk_src_onecell_get, align 4
  %187 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %6, align 8
  %188 = call i32 @of_clk_add_provider(%struct.device_node* %185, i32 %186, %struct.clk_onecell_data* %187)
  store i32 %188, i32* %12, align 4
  %189 = load i32, i32* %12, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %184
  br label %224

192:                                              ; preds = %184
  %193 = load i32, i32* @THIS_MODULE, align 4
  %194 = load %struct.sun9i_mmc_clk_data*, %struct.sun9i_mmc_clk_data** %5, align 8
  %195 = getelementptr inbounds %struct.sun9i_mmc_clk_data, %struct.sun9i_mmc_clk_data* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 3
  store i32 %193, i32* %196, align 8
  %197 = load i32, i32* %10, align 4
  %198 = load %struct.sun9i_mmc_clk_data*, %struct.sun9i_mmc_clk_data** %5, align 8
  %199 = getelementptr inbounds %struct.sun9i_mmc_clk_data, %struct.sun9i_mmc_clk_data* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  store i32 %197, i32* %200, align 8
  %201 = load %struct.sun9i_mmc_clk_data*, %struct.sun9i_mmc_clk_data** %5, align 8
  %202 = getelementptr inbounds %struct.sun9i_mmc_clk_data, %struct.sun9i_mmc_clk_data* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 2
  store i32* @sun9i_mmc_reset_ops, i32** %203, align 8
  %204 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %205 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = load %struct.device_node*, %struct.device_node** %206, align 8
  %208 = load %struct.sun9i_mmc_clk_data*, %struct.sun9i_mmc_clk_data** %5, align 8
  %209 = getelementptr inbounds %struct.sun9i_mmc_clk_data, %struct.sun9i_mmc_clk_data* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 1
  store %struct.device_node* %207, %struct.device_node** %210, align 8
  %211 = load %struct.sun9i_mmc_clk_data*, %struct.sun9i_mmc_clk_data** %5, align 8
  %212 = getelementptr inbounds %struct.sun9i_mmc_clk_data, %struct.sun9i_mmc_clk_data* %211, i32 0, i32 1
  %213 = call i32 @reset_controller_register(%struct.TYPE_9__* %212)
  store i32 %213, i32* %12, align 4
  %214 = load i32, i32* %12, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %192
  br label %221

217:                                              ; preds = %192
  %218 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %219 = load %struct.sun9i_mmc_clk_data*, %struct.sun9i_mmc_clk_data** %5, align 8
  %220 = call i32 @platform_set_drvdata(%struct.platform_device* %218, %struct.sun9i_mmc_clk_data* %219)
  store i32 0, i32* %2, align 4
  br label %248

221:                                              ; preds = %216
  %222 = load %struct.device_node*, %struct.device_node** %4, align 8
  %223 = call i32 @of_clk_del_provider(%struct.device_node* %222)
  br label %224

224:                                              ; preds = %221, %191
  store i32 0, i32* %11, align 4
  br label %225

225:                                              ; preds = %238, %224
  %226 = load i32, i32* %11, align 4
  %227 = load i32, i32* %10, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %241

229:                                              ; preds = %225
  %230 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %6, align 8
  %231 = getelementptr inbounds %struct.clk_onecell_data, %struct.clk_onecell_data* %230, i32 0, i32 1
  %232 = load i64*, i64** %231, align 8
  %233 = load i32, i32* %11, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i64, i64* %232, i64 %234
  %236 = load i64, i64* %235, align 8
  %237 = call i32 @clk_unregister(i64 %236)
  br label %238

238:                                              ; preds = %229
  %239 = load i32, i32* %11, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %11, align 4
  br label %225

241:                                              ; preds = %225
  br label %242

242:                                              ; preds = %241, %171
  %243 = load %struct.sun9i_mmc_clk_data*, %struct.sun9i_mmc_clk_data** %5, align 8
  %244 = getelementptr inbounds %struct.sun9i_mmc_clk_data, %struct.sun9i_mmc_clk_data* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = call i32 @reset_control_assert(i64 %245)
  %247 = load i32, i32* %12, align 4
  store i32 %247, i32* %2, align 4
  br label %248

248:                                              ; preds = %242, %217, %121, %106, %87, %73, %51, %26
  %249 = load i32, i32* %2, align 4
  ret i32 %249
}

declare dso_local %struct.sun9i_mmc_clk_data* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i64 @devm_ioremap_resource(%struct.TYPE_10__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64* @devm_kcalloc(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i64 @devm_clk_get(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i64 @devm_reset_control_get_exclusive(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @reset_control_deassert(i64) #1

declare dso_local i8* @__clk_get_name(i64) #1

declare dso_local i32 @of_property_read_string_index(%struct.device_node*, i8*, i32, i8**) #1

declare dso_local i64 @clk_register_gate(%struct.TYPE_10__*, i8*, i8*, i32, i64, i32, i32, i32*) #1

declare dso_local i32 @of_clk_add_provider(%struct.device_node*, i32, %struct.clk_onecell_data*) #1

declare dso_local i32 @reset_controller_register(%struct.TYPE_9__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sun9i_mmc_clk_data*) #1

declare dso_local i32 @of_clk_del_provider(%struct.device_node*) #1

declare dso_local i32 @clk_unregister(i64) #1

declare dso_local i32 @reset_control_assert(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
