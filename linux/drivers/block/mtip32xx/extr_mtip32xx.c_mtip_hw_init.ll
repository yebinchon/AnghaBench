; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i64, i32, %struct.TYPE_11__*, %struct.TYPE_10__*, i64, i32, i32, i64, %struct.TYPE_9__*, i32 }
%struct.TYPE_11__ = type { i32, i64, i64*, i64*, i64*, %struct.driver_data*, i32*, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }

@MTIP_ABAR = common dso_local global i64 0, align 8
@MTIP_PRODUCT_UNKNOWN = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Memory allocation: port structure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MTIP_MAX_SLOT_GROUPS = common dso_local global i32 0, align 4
@MTIP_MAX_UNALIGNED_SLOTS = common dso_local global i64 0, align 8
@PORT_OFFSET = common dso_local global i64 0, align 8
@PORT_SCR_ACT = common dso_local global i64 0, align 8
@PORT_COMMAND_ISSUE = common dso_local global i64 0, align 8
@PORT_SDBV = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@PORT_SCR_STAT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Surprise removal detected at %u ms\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@MTIP_DDF_REMOVE_PENDING_BIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Removal detected at %u ms\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@HOST_CAP = common dso_local global i64 0, align 8
@HOST_CAP_NZDMA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Card did not reset within timeout\0A\00", align 1
@HOST_IRQ_STAT = common dso_local global i64 0, align 8
@mtip_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Unable to allocate IRQ %d\0A\00", align 1
@HOST_CTL = common dso_local global i64 0, align 8
@HOST_IRQ_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.driver_data*)* @mtip_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_hw_init(%struct.driver_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.driver_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.driver_data* %0, %struct.driver_data** %3, align 8
  %8 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %9 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %8, i32 0, i32 3
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = call i64* @pcim_iomap_table(%struct.TYPE_10__* %10)
  %12 = load i64, i64* @MTIP_ABAR, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %16 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %15, i32 0, i32 4
  store i64 %14, i64* %16, align 8
  %17 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %18 = call i32 @mtip_detect_product(%struct.driver_data* %17)
  %19 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %20 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MTIP_PRODUCT_UNKNOWN, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %406

27:                                               ; preds = %1
  %28 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %29 = call i32 @hba_setup(%struct.driver_data* %28)
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %32 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.TYPE_11__* @kzalloc_node(i32 4, i32 %30, i32 %33)
  %35 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %36 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %35, i32 0, i32 2
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %36, align 8
  %37 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %38 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %37, i32 0, i32 2
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = icmp ne %struct.TYPE_11__* %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %27
  %42 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %43 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %42, i32 0, i32 3
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = call i32 (i32*, i8*, ...) @dev_err(i32* %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %412

49:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %65, %49
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @MTIP_MAX_SLOT_GROUPS, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %50
  %55 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %56 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %55, i32 0, i32 2
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %59 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %58, i32 0, i32 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store %struct.TYPE_11__* %57, %struct.TYPE_11__** %64, align 8
  br label %65

65:                                               ; preds = %54
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %50

68:                                               ; preds = %50
  %69 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %70 = call i64 @mtip_device_unaligned_constrained(%struct.driver_data* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i64, i64* @MTIP_MAX_UNALIGNED_SLOTS, align 8
  %74 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %75 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %74, i32 0, i32 7
  store i64 %73, i64* %75, align 8
  br label %79

76:                                               ; preds = %68
  %77 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %78 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %77, i32 0, i32 7
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %76, %72
  %80 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %81 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %80, i32 0, i32 2
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 7
  %84 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %85 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %84, i32 0, i32 7
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @atomic_set(i32* %83, i64 %86)
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %102, %79
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @MTIP_MAX_SLOT_GROUPS, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %88
  %93 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %94 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %93, i32 0, i32 2
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 6
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = call i32 @spin_lock_init(i32* %100)
  br label %102

102:                                              ; preds = %92
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %4, align 4
  br label %88

105:                                              ; preds = %88
  %106 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %107 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @PORT_OFFSET, align 8
  %110 = add nsw i64 %108, %109
  %111 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %112 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %111, i32 0, i32 2
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  store i64 %110, i64* %114, align 8
  %115 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %116 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %117 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %116, i32 0, i32 2
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 5
  store %struct.driver_data* %115, %struct.driver_data** %119, align 8
  %120 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %121 = call i32 @mtip_dma_alloc(%struct.driver_data* %120)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %105
  br label %406

125:                                              ; preds = %105
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %190, %125
  %127 = load i32, i32* %4, align 4
  %128 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %129 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %193

132:                                              ; preds = %126
  %133 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %134 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %133, i32 0, i32 2
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i32, i32* %4, align 4
  %139 = mul nsw i32 %138, 128
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %137, %140
  %142 = load i64, i64* @PORT_SCR_ACT, align 8
  %143 = add nsw i64 %141, %142
  %144 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %145 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %144, i32 0, i32 2
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 4
  %148 = load i64*, i64** %147, align 8
  %149 = load i32, i32* %4, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %148, i64 %150
  store i64 %143, i64* %151, align 8
  %152 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %153 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %152, i32 0, i32 2
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* %4, align 4
  %158 = mul nsw i32 %157, 128
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %156, %159
  %161 = load i64, i64* @PORT_COMMAND_ISSUE, align 8
  %162 = add nsw i64 %160, %161
  %163 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %164 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %163, i32 0, i32 2
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 3
  %167 = load i64*, i64** %166, align 8
  %168 = load i32, i32* %4, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %167, i64 %169
  store i64 %162, i64* %170, align 8
  %171 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %172 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %171, i32 0, i32 2
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i32, i32* %4, align 4
  %177 = mul nsw i32 %176, 128
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 %175, %178
  %180 = load i64, i64* @PORT_SDBV, align 8
  %181 = add nsw i64 %179, %180
  %182 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %183 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %182, i32 0, i32 2
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 2
  %186 = load i64*, i64** %185, align 8
  %187 = load i32, i32* %4, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i64, i64* %186, i64 %188
  store i64 %181, i64* %189, align 8
  br label %190

190:                                              ; preds = %132
  %191 = load i32, i32* %4, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %4, align 4
  br label %126

193:                                              ; preds = %126
  %194 = load i64, i64* @jiffies, align 8
  store i64 %194, i64* %7, align 8
  %195 = load i64, i64* @jiffies, align 8
  %196 = call i64 @msecs_to_jiffies(i32 30000)
  %197 = add i64 %195, %196
  store i64 %197, i64* %6, align 8
  br label %198

198:                                              ; preds = %216, %193
  %199 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %200 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %199, i32 0, i32 2
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @PORT_SCR_STAT, align 8
  %205 = add nsw i64 %203, %204
  %206 = call i32 @readl(i64 %205)
  %207 = and i32 %206, 15
  %208 = icmp ne i32 %207, 3
  br i1 %208, label %209, label %214

209:                                              ; preds = %198
  %210 = load i64, i64* @jiffies, align 8
  %211 = load i64, i64* %6, align 8
  %212 = call i64 @time_before(i64 %210, i64 %211)
  %213 = icmp ne i64 %212, 0
  br label %214

214:                                              ; preds = %209, %198
  %215 = phi i1 [ false, %198 ], [ %213, %209 ]
  br i1 %215, label %216, label %218

216:                                              ; preds = %214
  %217 = call i32 @mdelay(i32 100)
  br label %198

218:                                              ; preds = %214
  %219 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %220 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %219, i32 0, i32 3
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %220, align 8
  %222 = call i64 @mtip_check_surprise_removal(%struct.TYPE_10__* %221)
  %223 = call i64 @unlikely(i64 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %238

225:                                              ; preds = %218
  %226 = load i64, i64* @jiffies, align 8
  %227 = load i64, i64* %7, align 8
  %228 = sub i64 %226, %227
  store i64 %228, i64* %7, align 8
  %229 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %230 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %229, i32 0, i32 3
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 1
  %233 = load i64, i64* %7, align 8
  %234 = call i32 @jiffies_to_msecs(i64 %233)
  %235 = call i32 @dev_warn(i32* %232, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %234)
  %236 = load i32, i32* @ENODEV, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %5, align 4
  br label %399

238:                                              ; preds = %218
  %239 = load i32, i32* @MTIP_DDF_REMOVE_PENDING_BIT, align 4
  %240 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %241 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %240, i32 0, i32 5
  %242 = call i64 @test_bit(i32 %239, i32* %241)
  %243 = call i64 @unlikely(i64 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %258

245:                                              ; preds = %238
  %246 = load i64, i64* @jiffies, align 8
  %247 = load i64, i64* %7, align 8
  %248 = sub i64 %246, %247
  store i64 %248, i64* %7, align 8
  %249 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %250 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %249, i32 0, i32 3
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 1
  %253 = load i64, i64* %7, align 8
  %254 = call i32 @jiffies_to_msecs(i64 %253)
  %255 = call i32 @dev_warn(i32* %252, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %254)
  %256 = load i32, i32* @EFAULT, align 4
  %257 = sub nsw i32 0, %256
  store i32 %257, i32* %5, align 4
  br label %399

258:                                              ; preds = %238
  %259 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %260 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %259, i32 0, i32 4
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @HOST_CAP, align 8
  %263 = add nsw i64 %261, %262
  %264 = call i32 @readl(i64 %263)
  %265 = load i32, i32* @HOST_CAP_NZDMA, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %281, label %268

268:                                              ; preds = %258
  %269 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %270 = call i64 @mtip_hba_reset(%struct.driver_data* %269)
  %271 = icmp slt i64 %270, 0
  br i1 %271, label %272, label %280

272:                                              ; preds = %268
  %273 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %274 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %273, i32 0, i32 3
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 1
  %277 = call i32 (i32*, i8*, ...) @dev_err(i32* %276, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %278 = load i32, i32* @EIO, align 4
  %279 = sub nsw i32 0, %278
  store i32 %279, i32* %5, align 4
  br label %399

280:                                              ; preds = %268
  br label %294

281:                                              ; preds = %258
  %282 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %283 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %282, i32 0, i32 4
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @HOST_IRQ_STAT, align 8
  %286 = add nsw i64 %284, %285
  %287 = call i32 @readl(i64 %286)
  %288 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %289 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %288, i32 0, i32 4
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* @HOST_IRQ_STAT, align 8
  %292 = add nsw i64 %290, %291
  %293 = call i32 @writel(i32 %287, i64 %292)
  br label %294

294:                                              ; preds = %281, %280
  %295 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %296 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %295, i32 0, i32 2
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %296, align 8
  %298 = call i32 @mtip_init_port(%struct.TYPE_11__* %297)
  %299 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %300 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %299, i32 0, i32 2
  %301 = load %struct.TYPE_11__*, %struct.TYPE_11__** %300, align 8
  %302 = call i32 @mtip_start_port(%struct.TYPE_11__* %301)
  %303 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %304 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %303, i32 0, i32 3
  %305 = load %struct.TYPE_10__*, %struct.TYPE_10__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @mtip_irq_handler, align 4
  %309 = load i32, i32* @IRQF_SHARED, align 4
  %310 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %311 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %310, i32 0, i32 3
  %312 = load %struct.TYPE_10__*, %struct.TYPE_10__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 1
  %314 = call i32 @dev_driver_string(i32* %313)
  %315 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %316 = call i32 @request_irq(i32 %307, i32 %308, i32 %309, i32 %314, %struct.driver_data* %315)
  store i32 %316, i32* %5, align 4
  %317 = load i32, i32* %5, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %330

319:                                              ; preds = %294
  %320 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %321 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %320, i32 0, i32 3
  %322 = load %struct.TYPE_10__*, %struct.TYPE_10__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 1
  %324 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %325 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %324, i32 0, i32 3
  %326 = load %struct.TYPE_10__*, %struct.TYPE_10__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = call i32 (i32*, i8*, ...) @dev_err(i32* %323, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %328)
  br label %399

330:                                              ; preds = %294
  %331 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %332 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %331, i32 0, i32 3
  %333 = load %struct.TYPE_10__*, %struct.TYPE_10__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %337 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %336, i32 0, i32 6
  %338 = load i32, i32* %337, align 4
  %339 = call i32* @get_cpu_mask(i32 %338)
  %340 = call i32 @irq_set_affinity_hint(i32 %335, i32* %339)
  %341 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %342 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %341, i32 0, i32 4
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* @HOST_CTL, align 8
  %345 = add nsw i64 %343, %344
  %346 = call i32 @readl(i64 %345)
  %347 = load i32, i32* @HOST_IRQ_EN, align 4
  %348 = or i32 %346, %347
  %349 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %350 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %349, i32 0, i32 4
  %351 = load i64, i64* %350, align 8
  %352 = load i64, i64* @HOST_CTL, align 8
  %353 = add nsw i64 %351, %352
  %354 = call i32 @writel(i32 %348, i64 %353)
  %355 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %356 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %355, i32 0, i32 2
  %357 = load %struct.TYPE_11__*, %struct.TYPE_11__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %357, i32 0, i32 0
  %359 = call i32 @init_waitqueue_head(i32* %358)
  %360 = load i32, i32* @MTIP_DDF_REMOVE_PENDING_BIT, align 4
  %361 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %362 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %361, i32 0, i32 5
  %363 = call i64 @test_bit(i32 %360, i32* %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %368

365:                                              ; preds = %330
  %366 = load i32, i32* @EFAULT, align 4
  %367 = sub nsw i32 0, %366
  store i32 %367, i32* %5, align 4
  br label %370

368:                                              ; preds = %330
  %369 = load i32, i32* %5, align 4
  store i32 %369, i32* %2, align 4
  br label %412

370:                                              ; preds = %365
  %371 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %372 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %371, i32 0, i32 4
  %373 = load i64, i64* %372, align 8
  %374 = load i64, i64* @HOST_CTL, align 8
  %375 = add nsw i64 %373, %374
  %376 = call i32 @readl(i64 %375)
  %377 = load i32, i32* @HOST_IRQ_EN, align 4
  %378 = xor i32 %377, -1
  %379 = and i32 %376, %378
  %380 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %381 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %380, i32 0, i32 4
  %382 = load i64, i64* %381, align 8
  %383 = load i64, i64* @HOST_CTL, align 8
  %384 = add nsw i64 %382, %383
  %385 = call i32 @writel(i32 %379, i64 %384)
  %386 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %387 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %386, i32 0, i32 3
  %388 = load %struct.TYPE_10__*, %struct.TYPE_10__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = call i32 @irq_set_affinity_hint(i32 %390, i32* null)
  %392 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %393 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %392, i32 0, i32 3
  %394 = load %struct.TYPE_10__*, %struct.TYPE_10__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %398 = call i32 @free_irq(i32 %396, %struct.driver_data* %397)
  br label %399

399:                                              ; preds = %370, %319, %272, %245, %225
  %400 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %401 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %400, i32 0, i32 2
  %402 = load %struct.TYPE_11__*, %struct.TYPE_11__** %401, align 8
  %403 = call i32 @mtip_deinit_port(%struct.TYPE_11__* %402)
  %404 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %405 = call i32 @mtip_dma_free(%struct.driver_data* %404)
  br label %406

406:                                              ; preds = %399, %124, %24
  %407 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %408 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %407, i32 0, i32 2
  %409 = load %struct.TYPE_11__*, %struct.TYPE_11__** %408, align 8
  %410 = call i32 @kfree(%struct.TYPE_11__* %409)
  %411 = load i32, i32* %5, align 4
  store i32 %411, i32* %2, align 4
  br label %412

412:                                              ; preds = %406, %368, %41
  %413 = load i32, i32* %2, align 4
  ret i32 %413
}

declare dso_local i64* @pcim_iomap_table(%struct.TYPE_10__*) #1

declare dso_local i32 @mtip_detect_product(%struct.driver_data*) #1

declare dso_local i32 @hba_setup(%struct.driver_data*) #1

declare dso_local %struct.TYPE_11__* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @mtip_device_unaligned_constrained(%struct.driver_data*) #1

declare dso_local i32 @atomic_set(i32*, i64) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mtip_dma_alloc(%struct.driver_data*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i64 @mtip_check_surprise_removal(%struct.TYPE_10__*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @mtip_hba_reset(%struct.driver_data*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mtip_init_port(%struct.TYPE_11__*) #1

declare dso_local i32 @mtip_start_port(%struct.TYPE_11__*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.driver_data*) #1

declare dso_local i32 @dev_driver_string(i32*) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32* @get_cpu_mask(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.driver_data*) #1

declare dso_local i32 @mtip_deinit_port(%struct.TYPE_11__*) #1

declare dso_local i32 @mtip_dma_free(%struct.driver_data*) #1

declare dso_local i32 @kfree(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
