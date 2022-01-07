; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_cmt.c_sh_cmt_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_cmt.c_sh_cmt_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_cmt_device = type { i32, i32, i32, i32, i32, i32*, %struct.sh_cmt_info*, %struct.platform_device*, i32 }
%struct.sh_cmt_info = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_4__, %struct.platform_device_id* }
%struct.TYPE_4__ = type { %struct.sh_timer_config*, i64 }
%struct.sh_timer_config = type { i32 }
%struct.platform_device_id = type { i64 }

@CONFIG_OF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"missing platform data\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_cmt_device*, %struct.platform_device*)* @sh_cmt_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_cmt_setup(%struct.sh_cmt_device* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sh_cmt_device*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sh_timer_config*, align 8
  %10 = alloca %struct.platform_device_id*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sh_cmt_device* %0, %struct.sh_cmt_device** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %15 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %16 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %15, i32 0, i32 7
  store %struct.platform_device* %14, %struct.platform_device** %16, align 8
  %17 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %18 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %17, i32 0, i32 8
  %19 = call i32 @raw_spin_lock_init(i32* %18)
  %20 = load i32, i32* @CONFIG_OF, align 4
  %21 = call i64 @IS_ENABLED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %2
  %24 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call %struct.sh_cmt_info* @of_device_get_match_data(%struct.TYPE_4__* %31)
  %33 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %34 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %33, i32 0, i32 6
  store %struct.sh_cmt_info* %32, %struct.sh_cmt_info** %34, align 8
  %35 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %36 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %35, i32 0, i32 6
  %37 = load %struct.sh_cmt_info*, %struct.sh_cmt_info** %36, align 8
  %38 = getelementptr inbounds %struct.sh_cmt_info, %struct.sh_cmt_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %41 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %76

42:                                               ; preds = %23, %2
  %43 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.sh_timer_config*, %struct.sh_timer_config** %45, align 8
  %47 = icmp ne %struct.sh_timer_config* %46, null
  br i1 %47, label %48, label %67

48:                                               ; preds = %42
  %49 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.sh_timer_config*, %struct.sh_timer_config** %51, align 8
  store %struct.sh_timer_config* %52, %struct.sh_timer_config** %9, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 1
  %55 = load %struct.platform_device_id*, %struct.platform_device_id** %54, align 8
  store %struct.platform_device_id* %55, %struct.platform_device_id** %10, align 8
  %56 = load %struct.platform_device_id*, %struct.platform_device_id** %10, align 8
  %57 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.sh_cmt_info*
  %60 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %61 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %60, i32 0, i32 6
  store %struct.sh_cmt_info* %59, %struct.sh_cmt_info** %61, align 8
  %62 = load %struct.sh_timer_config*, %struct.sh_timer_config** %9, align 8
  %63 = getelementptr inbounds %struct.sh_timer_config, %struct.sh_timer_config* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %66 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %75

67:                                               ; preds = %42
  %68 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %69 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %68, i32 0, i32 7
  %70 = load %struct.platform_device*, %struct.platform_device** %69, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = call i32 @dev_err(%struct.TYPE_4__* %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @ENXIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %244

75:                                               ; preds = %48
  br label %76

76:                                               ; preds = %75, %29
  %77 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %78 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %77, i32 0, i32 7
  %79 = load %struct.platform_device*, %struct.platform_device** %78, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = call i32 @clk_get(%struct.TYPE_4__* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %82 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %83 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %85 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @IS_ERR(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %76
  %90 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %91 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %90, i32 0, i32 7
  %92 = load %struct.platform_device*, %struct.platform_device** %91, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = call i32 @dev_err(%struct.TYPE_4__* %93, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %95 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %96 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @PTR_ERR(i32 %97)
  store i32 %98, i32* %3, align 4
  br label %244

99:                                               ; preds = %76
  %100 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %101 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @clk_prepare(i32 %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %238

107:                                              ; preds = %99
  %108 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %109 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @clk_enable(i32 %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  br label %233

115:                                              ; preds = %107
  %116 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %117 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %116, i32 0, i32 6
  %118 = load %struct.sh_cmt_info*, %struct.sh_cmt_info** %117, align 8
  %119 = getelementptr inbounds %struct.sh_cmt_info, %struct.sh_cmt_info* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 16
  br i1 %121, label %122, label %130

122:                                              ; preds = %115
  %123 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %124 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @clk_get_rate(i32 %125)
  %127 = sdiv i32 %126, 512
  %128 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %129 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  br label %138

130:                                              ; preds = %115
  %131 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %132 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @clk_get_rate(i32 %133)
  %135 = sdiv i32 %134, 8
  %136 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %137 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %130, %122
  %139 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %140 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @clk_disable(i32 %141)
  %143 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %144 = call i32 @sh_cmt_map_memory(%struct.sh_cmt_device* %143)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %138
  br label %233

148:                                              ; preds = %138
  %149 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %150 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @hweight8(i32 %151)
  %153 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %154 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  %155 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %156 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @GFP_KERNEL, align 4
  %159 = call i32* @kcalloc(i32 %157, i32 4, i32 %158)
  %160 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %161 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %160, i32 0, i32 5
  store i32* %159, i32** %161, align 8
  %162 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %163 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %162, i32 0, i32 5
  %164 = load i32*, i32** %163, align 8
  %165 = icmp eq i32* %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %148
  %167 = load i32, i32* @ENOMEM, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %8, align 4
  br label %224

169:                                              ; preds = %148
  store i32 0, i32* %7, align 4
  %170 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %171 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  store i32 %172, i32* %6, align 4
  br label %173

173:                                              ; preds = %217, %169
  %174 = load i32, i32* %7, align 4
  %175 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %176 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = icmp ult i32 %174, %177
  br i1 %178, label %179, label %220

179:                                              ; preds = %173
  %180 = load i32, i32* %6, align 4
  %181 = call i32 @ffs(i32 %180)
  %182 = sub nsw i32 %181, 1
  store i32 %182, i32* %11, align 4
  %183 = load i32, i32* %7, align 4
  %184 = icmp eq i32 %183, 1
  br i1 %184, label %190, label %185

185:                                              ; preds = %179
  %186 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %187 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = icmp eq i32 %188, 1
  br label %190

190:                                              ; preds = %185, %179
  %191 = phi i1 [ true, %179 ], [ %189, %185 ]
  %192 = zext i1 %191 to i32
  store i32 %192, i32* %12, align 4
  %193 = load i32, i32* %7, align 4
  %194 = icmp eq i32 %193, 0
  %195 = zext i1 %194 to i32
  store i32 %195, i32* %13, align 4
  %196 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %197 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %196, i32 0, i32 5
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %7, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* %13, align 4
  %205 = load i32, i32* %12, align 4
  %206 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %207 = call i32 @sh_cmt_setup_channel(i32* %201, i32 %202, i32 %203, i32 %204, i32 %205, %struct.sh_cmt_device* %206)
  store i32 %207, i32* %8, align 4
  %208 = load i32, i32* %8, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %190
  br label %224

211:                                              ; preds = %190
  %212 = load i32, i32* %11, align 4
  %213 = shl i32 1, %212
  %214 = xor i32 %213, -1
  %215 = load i32, i32* %6, align 4
  %216 = and i32 %215, %214
  store i32 %216, i32* %6, align 4
  br label %217

217:                                              ; preds = %211
  %218 = load i32, i32* %7, align 4
  %219 = add i32 %218, 1
  store i32 %219, i32* %7, align 4
  br label %173

220:                                              ; preds = %173
  %221 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %222 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %223 = call i32 @platform_set_drvdata(%struct.platform_device* %221, %struct.sh_cmt_device* %222)
  store i32 0, i32* %3, align 4
  br label %244

224:                                              ; preds = %210, %166
  %225 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %226 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %225, i32 0, i32 5
  %227 = load i32*, i32** %226, align 8
  %228 = call i32 @kfree(i32* %227)
  %229 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %230 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @iounmap(i32 %231)
  br label %233

233:                                              ; preds = %224, %147, %114
  %234 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %235 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @clk_unprepare(i32 %236)
  br label %238

238:                                              ; preds = %233, %106
  %239 = load %struct.sh_cmt_device*, %struct.sh_cmt_device** %4, align 8
  %240 = getelementptr inbounds %struct.sh_cmt_device, %struct.sh_cmt_device* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @clk_put(i32 %241)
  %243 = load i32, i32* %8, align 4
  store i32 %243, i32* %3, align 4
  br label %244

244:                                              ; preds = %238, %220, %89, %67
  %245 = load i32, i32* %3, align 4
  ret i32 %245
}

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local %struct.sh_cmt_info* @of_device_get_match_data(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @clk_get(%struct.TYPE_4__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_prepare(i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @sh_cmt_map_memory(%struct.sh_cmt_device*) #1

declare dso_local i32 @hweight8(i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @sh_cmt_setup_channel(i32*, i32, i32, i32, i32, %struct.sh_cmt_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sh_cmt_device*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @clk_unprepare(i32) #1

declare dso_local i32 @clk_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
