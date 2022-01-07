; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_sunxi-rsb.c_sunxi_rsb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_sunxi-rsb.c_sunxi_rsb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }
%struct.sunxi_rsb = type { i64, i64, i64, i32, i32, %struct.device* }

@.str = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@RSB_MAX_FREQ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"clock-frequency (%u Hz) is too high (max = 20MHz)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to retrieve clk: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to enable clk: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"failed to retrieve reset controller: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"failed to deassert reset line: %d\0A\00", align 1
@RSB_CTRL_SOFT_RST = common dso_local global i64 0, align 8
@RSB_CTRL = common dso_local global i64 0, align 8
@RSB_CCR_MAX_CLK_DIV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"RSB running at %lu Hz\0A\00", align 1
@RSB_CCR = common dso_local global i64 0, align 8
@sunxi_rsb_irq = common dso_local global i32 0, align 4
@RSB_CTRL_NAME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"can't register interrupt handler irq %d: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Initialize device mode failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sunxi_rsb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_rsb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.sunxi_rsb*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %4, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  store %struct.device_node* %19, %struct.device_node** %5, align 8
  store i64 3000000, i64* %10, align 8
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = call i32 @of_property_read_u32(%struct.device_node* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64* %10)
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @RSB_MAX_FREQ, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load i64, i64* %10, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %26, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %244

32:                                               ; preds = %1
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.sunxi_rsb* @devm_kzalloc(%struct.device* %33, i32 40, i32 %34)
  store %struct.sunxi_rsb* %35, %struct.sunxi_rsb** %7, align 8
  %36 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %7, align 8
  %37 = icmp ne %struct.sunxi_rsb* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %244

41:                                               ; preds = %32
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %7, align 8
  %44 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %43, i32 0, i32 5
  store %struct.device* %42, %struct.device** %44, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %7, align 8
  %47 = call i32 @platform_set_drvdata(%struct.platform_device* %45, %struct.sunxi_rsb* %46)
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = load i32, i32* @IORESOURCE_MEM, align 4
  %50 = call %struct.resource* @platform_get_resource(%struct.platform_device* %48, i32 %49, i32 0)
  store %struct.resource* %50, %struct.resource** %6, align 8
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = load %struct.resource*, %struct.resource** %6, align 8
  %53 = call i64 @devm_ioremap_resource(%struct.device* %51, %struct.resource* %52)
  %54 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %7, align 8
  %55 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %7, align 8
  %57 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @IS_ERR(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %41
  %62 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %7, align 8
  %63 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @PTR_ERR(i64 %64)
  store i32 %65, i32* %2, align 4
  br label %244

66:                                               ; preds = %41
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = call i32 @platform_get_irq(%struct.platform_device* %67, i32 0)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %2, align 4
  br label %244

73:                                               ; preds = %66
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = call i64 @devm_clk_get(%struct.device* %74, i32* null)
  %76 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %7, align 8
  %77 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %7, align 8
  %79 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @IS_ERR(i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %73
  %84 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %7, align 8
  %85 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @PTR_ERR(i64 %86)
  store i32 %87, i32* %13, align 4
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = load i32, i32* %13, align 4
  %90 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %88, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %2, align 4
  br label %244

92:                                               ; preds = %73
  %93 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %7, align 8
  %94 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @clk_prepare_enable(i64 %95)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = load i32, i32* %13, align 4
  %102 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %13, align 4
  store i32 %103, i32* %2, align 4
  br label %244

104:                                              ; preds = %92
  %105 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %7, align 8
  %106 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i64 @clk_get_rate(i64 %107)
  store i64 %108, i64* %8, align 8
  %109 = load %struct.device*, %struct.device** %4, align 8
  %110 = call i64 @devm_reset_control_get(%struct.device* %109, i32* null)
  %111 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %7, align 8
  %112 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  %113 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %7, align 8
  %114 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @IS_ERR(i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %104
  %119 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %7, align 8
  %120 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @PTR_ERR(i64 %121)
  store i32 %122, i32* %13, align 4
  %123 = load %struct.device*, %struct.device** %4, align 8
  %124 = load i32, i32* %13, align 4
  %125 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %123, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %124)
  br label %238

126:                                              ; preds = %104
  %127 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %7, align 8
  %128 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @reset_control_deassert(i64 %129)
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %13, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %126
  %134 = load %struct.device*, %struct.device** %4, align 8
  %135 = load i32, i32* %13, align 4
  %136 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %134, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %135)
  br label %238

137:                                              ; preds = %126
  %138 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %7, align 8
  %139 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %138, i32 0, i32 4
  %140 = call i32 @init_completion(i32* %139)
  %141 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %7, align 8
  %142 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %141, i32 0, i32 3
  %143 = call i32 @mutex_init(i32* %142)
  %144 = load i64, i64* @RSB_CTRL_SOFT_RST, align 8
  %145 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %7, align 8
  %146 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @RSB_CTRL, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @writel(i64 %144, i64 %149)
  %151 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %7, align 8
  %152 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @RSB_CTRL, align 8
  %155 = add nsw i64 %153, %154
  %156 = load i64, i64* %14, align 8
  %157 = load i64, i64* %14, align 8
  %158 = load i64, i64* @RSB_CTRL_SOFT_RST, align 8
  %159 = and i64 %157, %158
  %160 = icmp ne i64 %159, 0
  %161 = xor i1 %160, true
  %162 = zext i1 %161 to i32
  %163 = call i32 @readl_poll_timeout(i64 %155, i64 %156, i32 %162, i32 1000, i32 100000)
  %164 = load i64, i64* %8, align 8
  %165 = load i64, i64* %10, align 8
  %166 = udiv i64 %164, %165
  %167 = udiv i64 %166, 2
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %11, align 4
  %169 = load i32, i32* %11, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %137
  store i32 1, i32* %11, align 4
  br label %181

172:                                              ; preds = %137
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* @RSB_CCR_MAX_CLK_DIV, align 4
  %175 = add nsw i32 %174, 1
  %176 = icmp sgt i32 %173, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load i32, i32* @RSB_CCR_MAX_CLK_DIV, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %11, align 4
  br label %180

180:                                              ; preds = %177, %172
  br label %181

181:                                              ; preds = %180, %171
  %182 = load i32, i32* %11, align 4
  %183 = ashr i32 %182, 1
  %184 = sext i32 %183 to i64
  store i64 %184, i64* %9, align 8
  %185 = load i64, i64* %9, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %181
  store i64 1, i64* %9, align 8
  br label %188

188:                                              ; preds = %187, %181
  %189 = load %struct.device*, %struct.device** %4, align 8
  %190 = load i64, i64* %8, align 8
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = udiv i64 %190, %192
  %194 = udiv i64 %193, 2
  %195 = call i32 @dev_info(%struct.device* %189, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i64 %194)
  %196 = load i64, i64* %9, align 8
  %197 = call i64 @RSB_CCR_SDA_OUT_DELAY(i64 %196)
  %198 = load i32, i32* %11, align 4
  %199 = sub nsw i32 %198, 1
  %200 = call i64 @RSB_CCR_CLK_DIV(i32 %199)
  %201 = or i64 %197, %200
  %202 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %7, align 8
  %203 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @RSB_CCR, align 8
  %206 = add nsw i64 %204, %205
  %207 = call i32 @writel(i64 %201, i64 %206)
  %208 = load %struct.device*, %struct.device** %4, align 8
  %209 = load i32, i32* %12, align 4
  %210 = load i32, i32* @sunxi_rsb_irq, align 4
  %211 = load i32, i32* @RSB_CTRL_NAME, align 4
  %212 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %7, align 8
  %213 = call i32 @devm_request_irq(%struct.device* %208, i32 %209, i32 %210, i32 0, i32 %211, %struct.sunxi_rsb* %212)
  store i32 %213, i32* %13, align 4
  %214 = load i32, i32* %13, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %188
  %217 = load %struct.device*, %struct.device** %4, align 8
  %218 = load i32, i32* %12, align 4
  %219 = load i32, i32* %13, align 4
  %220 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %217, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %218, i32 %219)
  br label %233

221:                                              ; preds = %188
  %222 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %7, align 8
  %223 = call i32 @sunxi_rsb_init_device_mode(%struct.sunxi_rsb* %222)
  store i32 %223, i32* %13, align 4
  %224 = load i32, i32* %13, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %221
  %227 = load %struct.device*, %struct.device** %4, align 8
  %228 = load i32, i32* %13, align 4
  %229 = call i32 @dev_warn(%struct.device* %227, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %228)
  br label %230

230:                                              ; preds = %226, %221
  %231 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %7, align 8
  %232 = call i32 @of_rsb_register_devices(%struct.sunxi_rsb* %231)
  store i32 0, i32* %2, align 4
  br label %244

233:                                              ; preds = %216
  %234 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %7, align 8
  %235 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = call i32 @reset_control_assert(i64 %236)
  br label %238

238:                                              ; preds = %233, %133, %118
  %239 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %7, align 8
  %240 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = call i32 @clk_disable_unprepare(i64 %241)
  %243 = load i32, i32* %13, align 4
  store i32 %243, i32* %2, align 4
  br label %244

244:                                              ; preds = %238, %230, %99, %83, %71, %61, %38, %25
  %245 = load i32, i32* %2, align 4
  ret i32 %245
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local %struct.sunxi_rsb* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sunxi_rsb*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i64 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i64 @clk_get_rate(i64) #1

declare dso_local i64 @devm_reset_control_get(%struct.device*, i32*) #1

declare dso_local i32 @reset_control_deassert(i64) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @readl_poll_timeout(i64, i64, i32, i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i64) #1

declare dso_local i64 @RSB_CCR_SDA_OUT_DELAY(i64) #1

declare dso_local i64 @RSB_CCR_CLK_DIV(i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.sunxi_rsb*) #1

declare dso_local i32 @sunxi_rsb_init_device_mode(%struct.sunxi_rsb*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @of_rsb_register_devices(%struct.sunxi_rsb*) #1

declare dso_local i32 @reset_control_assert(i64) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
