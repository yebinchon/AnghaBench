; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_omap-rng.c_omap_rng_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_omap-rng.c_omap_rng_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i64 }
%struct.omap_rng_dev = type { i32*, i32*, i32*, %struct.TYPE_2__, %struct.device* }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@omap_rng_do_read = common dso_local global i32 0, align 4
@omap_rng_init = common dso_local global i32 0, align 4
@omap_rng_cleanup = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to runtime_get device: %d\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unable to enable the clk: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Unable to enable the register clk: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Random Number Generator ver. %02x\0A\00", align 1
@RNG_REV_REG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"initialization failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omap_rng_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_rng_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.omap_rng_dev*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %6, align 8
  %10 = load %struct.device*, %struct.device** %6, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.omap_rng_dev* @devm_kzalloc(%struct.device* %10, i32 64, i32 %11)
  store %struct.omap_rng_dev* %12, %struct.omap_rng_dev** %4, align 8
  %13 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %4, align 8
  %14 = icmp ne %struct.omap_rng_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %235

18:                                               ; preds = %1
  %19 = load i32, i32* @omap_rng_do_read, align 4
  %20 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %4, align 8
  %21 = getelementptr inbounds %struct.omap_rng_dev, %struct.omap_rng_dev* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 5
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @omap_rng_init, align 4
  %24 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %4, align 8
  %25 = getelementptr inbounds %struct.omap_rng_dev, %struct.omap_rng_dev* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  store i32 %23, i32* %26, align 8
  %27 = load i32, i32* @omap_rng_cleanup, align 4
  %28 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %4, align 8
  %29 = getelementptr inbounds %struct.omap_rng_dev, %struct.omap_rng_dev* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  store i32 %27, i32* %30, align 4
  %31 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %4, align 8
  %32 = getelementptr inbounds %struct.omap_rng_dev, %struct.omap_rng_dev* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 900, i32* %33, align 8
  %34 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %4, align 8
  %35 = ptrtoint %struct.omap_rng_dev* %34 to i64
  %36 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %4, align 8
  %37 = getelementptr inbounds %struct.omap_rng_dev, %struct.omap_rng_dev* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i64 %35, i64* %38, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %4, align 8
  %41 = call i32 @platform_set_drvdata(%struct.platform_device* %39, %struct.omap_rng_dev* %40)
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %4, align 8
  %44 = getelementptr inbounds %struct.omap_rng_dev, %struct.omap_rng_dev* %43, i32 0, i32 4
  store %struct.device* %42, %struct.device** %44, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = load i32, i32* @IORESOURCE_MEM, align 4
  %47 = call %struct.resource* @platform_get_resource(%struct.platform_device* %45, i32 %46, i32 0)
  store %struct.resource* %47, %struct.resource** %5, align 8
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = load %struct.resource*, %struct.resource** %5, align 8
  %50 = call i32* @devm_ioremap_resource(%struct.device* %48, %struct.resource* %49)
  %51 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %4, align 8
  %52 = getelementptr inbounds %struct.omap_rng_dev, %struct.omap_rng_dev* %51, i32 0, i32 2
  store i32* %50, i32** %52, align 8
  %53 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %4, align 8
  %54 = getelementptr inbounds %struct.omap_rng_dev, %struct.omap_rng_dev* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = call i64 @IS_ERR(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %18
  %59 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %4, align 8
  %60 = getelementptr inbounds %struct.omap_rng_dev, %struct.omap_rng_dev* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @PTR_ERR(i32* %61)
  store i32 %62, i32* %7, align 4
  br label %231

63:                                               ; preds = %18
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = load %struct.device*, %struct.device** %6, align 8
  %66 = call i32 @dev_name(%struct.device* %65)
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i32 @devm_kstrdup(%struct.device* %64, i32 %66, i32 %67)
  %69 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %4, align 8
  %70 = getelementptr inbounds %struct.omap_rng_dev, %struct.omap_rng_dev* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 8
  %72 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %4, align 8
  %73 = getelementptr inbounds %struct.omap_rng_dev, %struct.omap_rng_dev* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %63
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %7, align 4
  br label %231

80:                                               ; preds = %63
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = call i32 @pm_runtime_enable(%struct.device* %82)
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 @pm_runtime_get_sync(%struct.device* %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %80
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = load i32, i32* %7, align 4
  %93 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %91, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = call i32 @pm_runtime_put_noidle(%struct.device* %95)
  br label %231

97:                                               ; preds = %80
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = call i8* @devm_clk_get(%struct.device* %99, i8* null)
  %101 = bitcast i8* %100 to i32*
  %102 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %4, align 8
  %103 = getelementptr inbounds %struct.omap_rng_dev, %struct.omap_rng_dev* %102, i32 0, i32 0
  store i32* %101, i32** %103, align 8
  %104 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %4, align 8
  %105 = getelementptr inbounds %struct.omap_rng_dev, %struct.omap_rng_dev* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = call i64 @IS_ERR(i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %97
  %110 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %4, align 8
  %111 = getelementptr inbounds %struct.omap_rng_dev, %struct.omap_rng_dev* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @PTR_ERR(i32* %112)
  %114 = load i32, i32* @EPROBE_DEFER, align 4
  %115 = sub nsw i32 0, %114
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %109
  %118 = load i32, i32* @EPROBE_DEFER, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %2, align 4
  br label %235

120:                                              ; preds = %109, %97
  %121 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %4, align 8
  %122 = getelementptr inbounds %struct.omap_rng_dev, %struct.omap_rng_dev* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = call i64 @IS_ERR(i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %139, label %126

126:                                              ; preds = %120
  %127 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %4, align 8
  %128 = getelementptr inbounds %struct.omap_rng_dev, %struct.omap_rng_dev* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @clk_prepare_enable(i32* %129)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %126
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 0
  %136 = load i32, i32* %7, align 4
  %137 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %135, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %136)
  br label %214

138:                                              ; preds = %126
  br label %139

139:                                              ; preds = %138, %120
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = call i8* @devm_clk_get(%struct.device* %141, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %143 = bitcast i8* %142 to i32*
  %144 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %4, align 8
  %145 = getelementptr inbounds %struct.omap_rng_dev, %struct.omap_rng_dev* %144, i32 0, i32 1
  store i32* %143, i32** %145, align 8
  %146 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %4, align 8
  %147 = getelementptr inbounds %struct.omap_rng_dev, %struct.omap_rng_dev* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = call i64 @IS_ERR(i32* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %139
  %152 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %4, align 8
  %153 = getelementptr inbounds %struct.omap_rng_dev, %struct.omap_rng_dev* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @PTR_ERR(i32* %154)
  %156 = load i32, i32* @EPROBE_DEFER, align 4
  %157 = sub nsw i32 0, %156
  %158 = icmp eq i32 %155, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %151
  %160 = load i32, i32* @EPROBE_DEFER, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %2, align 4
  br label %235

162:                                              ; preds = %151, %139
  %163 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %4, align 8
  %164 = getelementptr inbounds %struct.omap_rng_dev, %struct.omap_rng_dev* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = call i64 @IS_ERR(i32* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %181, label %168

168:                                              ; preds = %162
  %169 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %4, align 8
  %170 = getelementptr inbounds %struct.omap_rng_dev, %struct.omap_rng_dev* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = call i32 @clk_prepare_enable(i32* %171)
  store i32 %172, i32* %7, align 4
  %173 = load i32, i32* %7, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %168
  %176 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %177 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %176, i32 0, i32 0
  %178 = load i32, i32* %7, align 4
  %179 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %177, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %178)
  br label %214

180:                                              ; preds = %168
  br label %181

181:                                              ; preds = %180, %162
  %182 = load %struct.device*, %struct.device** %6, align 8
  %183 = getelementptr inbounds %struct.device, %struct.device* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  %187 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %4, align 8
  %188 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %189 = call i32 @of_get_omap_rng_device_details(%struct.omap_rng_dev* %187, %struct.platform_device* %188)
  br label %193

190:                                              ; preds = %181
  %191 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %4, align 8
  %192 = call i32 @get_omap_rng_device_details(%struct.omap_rng_dev* %191)
  br label %193

193:                                              ; preds = %190, %186
  %194 = phi i32 [ %189, %186 ], [ %192, %190 ]
  store i32 %194, i32* %7, align 4
  %195 = load i32, i32* %7, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %193
  br label %214

198:                                              ; preds = %193
  %199 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %200 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %199, i32 0, i32 0
  %201 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %4, align 8
  %202 = getelementptr inbounds %struct.omap_rng_dev, %struct.omap_rng_dev* %201, i32 0, i32 3
  %203 = call i32 @devm_hwrng_register(%struct.device* %200, %struct.TYPE_2__* %202)
  store i32 %203, i32* %7, align 4
  %204 = load i32, i32* %7, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %198
  br label %214

207:                                              ; preds = %198
  %208 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %209 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %208, i32 0, i32 0
  %210 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %4, align 8
  %211 = load i32, i32* @RNG_REV_REG, align 4
  %212 = call i32 @omap_rng_read(%struct.omap_rng_dev* %210, i32 %211)
  %213 = call i32 @dev_info(%struct.device* %209, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %212)
  store i32 0, i32* %2, align 4
  br label %235

214:                                              ; preds = %206, %197, %175, %133
  %215 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %4, align 8
  %216 = getelementptr inbounds %struct.omap_rng_dev, %struct.omap_rng_dev* %215, i32 0, i32 2
  store i32* null, i32** %216, align 8
  %217 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %218 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %217, i32 0, i32 0
  %219 = call i32 @pm_runtime_put_sync(%struct.device* %218)
  %220 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %221 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %220, i32 0, i32 0
  %222 = call i32 @pm_runtime_disable(%struct.device* %221)
  %223 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %4, align 8
  %224 = getelementptr inbounds %struct.omap_rng_dev, %struct.omap_rng_dev* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = call i32 @clk_disable_unprepare(i32* %225)
  %227 = load %struct.omap_rng_dev*, %struct.omap_rng_dev** %4, align 8
  %228 = getelementptr inbounds %struct.omap_rng_dev, %struct.omap_rng_dev* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = call i32 @clk_disable_unprepare(i32* %229)
  br label %231

231:                                              ; preds = %214, %89, %77, %58
  %232 = load %struct.device*, %struct.device** %6, align 8
  %233 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %232, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %234 = load i32, i32* %7, align 4
  store i32 %234, i32* %2, align 4
  br label %235

235:                                              ; preds = %231, %207, %159, %117, %15
  %236 = load i32, i32* %2, align 4
  ret i32 %236
}

declare dso_local %struct.omap_rng_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.omap_rng_dev*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @devm_kstrdup(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i32 @of_get_omap_rng_device_details(%struct.omap_rng_dev*, %struct.platform_device*) #1

declare dso_local i32 @get_omap_rng_device_details(%struct.omap_rng_dev*) #1

declare dso_local i32 @devm_hwrng_register(%struct.device*, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @omap_rng_read(%struct.omap_rng_dev*, i32) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @clk_disable_unprepare(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
