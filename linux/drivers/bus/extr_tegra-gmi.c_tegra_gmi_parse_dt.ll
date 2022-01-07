; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_tegra-gmi.c_tegra_gmi_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_tegra-gmi.c_tegra_gmi_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_gmi = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"no child nodes found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"only one child device is supported.\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"nvidia,snor-data-width-32bit\00", align 1
@TEGRA_GMI_BUS_WIDTH_32BIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"nvidia,snor-mux-mode\00", align 1
@TEGRA_GMI_MUX_MODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"nvidia,snor-rdy-active-before-data\00", align 1
@TEGRA_GMI_RDY_BEFORE_DATA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"nvidia,snor-rdy-active-high\00", align 1
@TEGRA_GMI_RDY_ACTIVE_HIGH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"nvidia,snor-adv-active-high\00", align 1
@TEGRA_GMI_ADV_ACTIVE_HIGH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"nvidia,snor-oe-active-high\00", align 1
@TEGRA_GMI_OE_ACTIVE_HIGH = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"nvidia,snor-cs-active-high\00", align 1
@TEGRA_GMI_CS_ACTIVE_HIGH = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [44 x i8] c"failed to decode CS: invalid ranges length\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"failed to decode CS: no reg property found\0A\00", align 1
@TEGRA_GMI_MAX_CHIP_SELECT = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [24 x i8] c"invalid chip select: %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [24 x i8] c"nvidia,snor-muxed-width\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"nvidia,snor-hold-width\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"nvidia,snor-adv-width\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"nvidia,snor-ce-width\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"nvidia,snor-we-width\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"nvidia,snor-oe-width\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"nvidia,snor-wait-width\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_gmi*)* @tegra_gmi_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_gmi_parse_dt(%struct.tegra_gmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_gmi*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [4 x i64], align 16
  %7 = alloca i32, align 4
  store %struct.tegra_gmi* %0, %struct.tegra_gmi** %3, align 8
  %8 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %8, i32 0, i32 3
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.device_node* @of_get_next_available_child(i32 %12, i32* null)
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  %14 = load %struct.device_node*, %struct.device_node** %4, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %18 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %17, i32 0, i32 3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %285

23:                                               ; preds = %1
  %24 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %25 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @of_get_child_count(i32 %28)
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %33 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %32, i32 0, i32 3
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = call i32 @dev_warn(%struct.TYPE_3__* %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %31, %23
  %37 = load %struct.device_node*, %struct.device_node** %4, align 8
  %38 = call i64 @of_property_read_bool(%struct.device_node* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32, i32* @TEGRA_GMI_BUS_WIDTH_32BIT, align 4
  %42 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %43 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %40, %36
  %47 = load %struct.device_node*, %struct.device_node** %4, align 8
  %48 = call i64 @of_property_read_bool(%struct.device_node* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i32, i32* @TEGRA_GMI_MUX_MODE, align 4
  %52 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %53 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %50, %46
  %57 = load %struct.device_node*, %struct.device_node** %4, align 8
  %58 = call i64 @of_property_read_bool(%struct.device_node* %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i32, i32* @TEGRA_GMI_RDY_BEFORE_DATA, align 4
  %62 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %63 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %60, %56
  %67 = load %struct.device_node*, %struct.device_node** %4, align 8
  %68 = call i64 @of_property_read_bool(%struct.device_node* %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i32, i32* @TEGRA_GMI_RDY_ACTIVE_HIGH, align 4
  %72 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %73 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %70, %66
  %77 = load %struct.device_node*, %struct.device_node** %4, align 8
  %78 = call i64 @of_property_read_bool(%struct.device_node* %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i32, i32* @TEGRA_GMI_ADV_ACTIVE_HIGH, align 4
  %82 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %83 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %80, %76
  %87 = load %struct.device_node*, %struct.device_node** %4, align 8
  %88 = call i64 @of_property_read_bool(%struct.device_node* %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load i32, i32* @TEGRA_GMI_OE_ACTIVE_HIGH, align 4
  %92 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %93 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %90, %86
  %97 = load %struct.device_node*, %struct.device_node** %4, align 8
  %98 = call i64 @of_property_read_bool(%struct.device_node* %97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load i32, i32* @TEGRA_GMI_CS_ACTIVE_HIGH, align 4
  %102 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %103 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %100, %96
  %107 = load %struct.device_node*, %struct.device_node** %4, align 8
  %108 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0
  %109 = call i32 @of_property_read_u32_array(%struct.device_node* %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i64* %108, i32 4)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %133

112:                                              ; preds = %106
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @EOVERFLOW, align 4
  %115 = sub nsw i32 0, %114
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %119 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %118, i32 0, i32 3
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %120, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0))
  br label %281

122:                                              ; preds = %112
  %123 = load %struct.device_node*, %struct.device_node** %4, align 8
  %124 = call i32 @of_property_read_u32(%struct.device_node* %123, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i64* %5)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %129 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %128, i32 0, i32 3
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %130, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0))
  br label %281

132:                                              ; preds = %122
  br label %136

133:                                              ; preds = %106
  %134 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 1
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %5, align 8
  br label %136

136:                                              ; preds = %133, %132
  %137 = load i64, i64* %5, align 8
  %138 = load i64, i64* @TEGRA_GMI_MAX_CHIP_SELECT, align 8
  %139 = icmp sge i64 %137, %138
  br i1 %139, label %140, label %148

140:                                              ; preds = %136
  %141 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %142 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %141, i32 0, i32 3
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = load i64, i64* %5, align 8
  %145 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %143, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i64 %144)
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %7, align 4
  br label %281

148:                                              ; preds = %136
  %149 = load i64, i64* %5, align 8
  %150 = call i32 @TEGRA_GMI_CS_SELECT(i64 %149)
  %151 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %152 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  %155 = load %struct.device_node*, %struct.device_node** %4, align 8
  %156 = call i32 @of_property_read_u32(%struct.device_node* %155, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i64* %5)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %166, label %158

158:                                              ; preds = %148
  %159 = load i64, i64* %5, align 8
  %160 = trunc i64 %159 to i32
  %161 = call i32 @TEGRA_GMI_MUXED_WIDTH(i32 %160)
  %162 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %163 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 4
  br label %172

166:                                              ; preds = %148
  %167 = call i32 @TEGRA_GMI_MUXED_WIDTH(i32 1)
  %168 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %169 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %166, %158
  %173 = load %struct.device_node*, %struct.device_node** %4, align 8
  %174 = call i32 @of_property_read_u32(%struct.device_node* %173, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i64* %5)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %184, label %176

176:                                              ; preds = %172
  %177 = load i64, i64* %5, align 8
  %178 = trunc i64 %177 to i32
  %179 = call i32 @TEGRA_GMI_HOLD_WIDTH(i32 %178)
  %180 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %181 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 4
  br label %190

184:                                              ; preds = %172
  %185 = call i32 @TEGRA_GMI_HOLD_WIDTH(i32 1)
  %186 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %187 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 4
  br label %190

190:                                              ; preds = %184, %176
  %191 = load %struct.device_node*, %struct.device_node** %4, align 8
  %192 = call i32 @of_property_read_u32(%struct.device_node* %191, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i64* %5)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %202, label %194

194:                                              ; preds = %190
  %195 = load i64, i64* %5, align 8
  %196 = trunc i64 %195 to i32
  %197 = call i32 @TEGRA_GMI_ADV_WIDTH(i32 %196)
  %198 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %199 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 4
  br label %208

202:                                              ; preds = %190
  %203 = call i32 @TEGRA_GMI_ADV_WIDTH(i32 1)
  %204 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %205 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 4
  br label %208

208:                                              ; preds = %202, %194
  %209 = load %struct.device_node*, %struct.device_node** %4, align 8
  %210 = call i32 @of_property_read_u32(%struct.device_node* %209, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i64* %5)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %220, label %212

212:                                              ; preds = %208
  %213 = load i64, i64* %5, align 8
  %214 = trunc i64 %213 to i32
  %215 = call i32 @TEGRA_GMI_CE_WIDTH(i32 %214)
  %216 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %217 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 4
  br label %226

220:                                              ; preds = %208
  %221 = call i32 @TEGRA_GMI_CE_WIDTH(i32 4)
  %222 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %223 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = or i32 %224, %221
  store i32 %225, i32* %223, align 4
  br label %226

226:                                              ; preds = %220, %212
  %227 = load %struct.device_node*, %struct.device_node** %4, align 8
  %228 = call i32 @of_property_read_u32(%struct.device_node* %227, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i64* %5)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %238, label %230

230:                                              ; preds = %226
  %231 = load i64, i64* %5, align 8
  %232 = trunc i64 %231 to i32
  %233 = call i32 @TEGRA_GMI_WE_WIDTH(i32 %232)
  %234 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %235 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = or i32 %236, %233
  store i32 %237, i32* %235, align 8
  br label %244

238:                                              ; preds = %226
  %239 = call i32 @TEGRA_GMI_WE_WIDTH(i32 1)
  %240 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %241 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = or i32 %242, %239
  store i32 %243, i32* %241, align 8
  br label %244

244:                                              ; preds = %238, %230
  %245 = load %struct.device_node*, %struct.device_node** %4, align 8
  %246 = call i32 @of_property_read_u32(%struct.device_node* %245, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i64* %5)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %256, label %248

248:                                              ; preds = %244
  %249 = load i64, i64* %5, align 8
  %250 = trunc i64 %249 to i32
  %251 = call i32 @TEGRA_GMI_OE_WIDTH(i32 %250)
  %252 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %253 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = or i32 %254, %251
  store i32 %255, i32* %253, align 8
  br label %262

256:                                              ; preds = %244
  %257 = call i32 @TEGRA_GMI_OE_WIDTH(i32 1)
  %258 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %259 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = or i32 %260, %257
  store i32 %261, i32* %259, align 8
  br label %262

262:                                              ; preds = %256, %248
  %263 = load %struct.device_node*, %struct.device_node** %4, align 8
  %264 = call i32 @of_property_read_u32(%struct.device_node* %263, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i64* %5)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %274, label %266

266:                                              ; preds = %262
  %267 = load i64, i64* %5, align 8
  %268 = trunc i64 %267 to i32
  %269 = call i32 @TEGRA_GMI_WAIT_WIDTH(i32 %268)
  %270 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %271 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = or i32 %272, %269
  store i32 %273, i32* %271, align 8
  br label %280

274:                                              ; preds = %262
  %275 = call i32 @TEGRA_GMI_WAIT_WIDTH(i32 3)
  %276 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %277 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = or i32 %278, %275
  store i32 %279, i32* %277, align 8
  br label %280

280:                                              ; preds = %274, %266
  br label %281

281:                                              ; preds = %280, %140, %127, %117
  %282 = load %struct.device_node*, %struct.device_node** %4, align 8
  %283 = call i32 @of_node_put(%struct.device_node* %282)
  %284 = load i32, i32* %7, align 4
  store i32 %284, i32* %2, align 4
  br label %285

285:                                              ; preds = %281, %16
  %286 = load i32, i32* %2, align 4
  ret i32 %286
}

declare dso_local %struct.device_node* @of_get_next_available_child(i32, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, ...) #1

declare dso_local i32 @of_get_child_count(i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_3__*, i8*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i64*, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @TEGRA_GMI_CS_SELECT(i64) #1

declare dso_local i32 @TEGRA_GMI_MUXED_WIDTH(i32) #1

declare dso_local i32 @TEGRA_GMI_HOLD_WIDTH(i32) #1

declare dso_local i32 @TEGRA_GMI_ADV_WIDTH(i32) #1

declare dso_local i32 @TEGRA_GMI_CE_WIDTH(i32) #1

declare dso_local i32 @TEGRA_GMI_WE_WIDTH(i32) #1

declare dso_local i32 @TEGRA_GMI_OE_WIDTH(i32) #1

declare dso_local i32 @TEGRA_GMI_WAIT_WIDTH(i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
