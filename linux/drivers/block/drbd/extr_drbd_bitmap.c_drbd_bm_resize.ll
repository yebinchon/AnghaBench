; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_bitmap.c_drbd_bm_resize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_bitmap.c_drbd_bm_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32, %struct.drbd_bitmap* }
%struct.drbd_bitmap = type { i64, i64, i64, i64, i64, i32, %struct.page** }
%struct.page = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"resize\00", align 1
@BM_LOCKED_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"drbd_bm_resize called with capacity == %llu\0A\00", align 1
@BM_SECT_PER_BIT = common dso_local global i32 0, align 4
@LN2_BPL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"bits = %lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"bits_on_disk = %llu\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@DRBD_FAULT_BM_ALLOC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"resync bitmap: bits=%lu words=%lu pages=%lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_bm_resize(%struct.drbd_device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drbd_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drbd_bitmap*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.page**, align 8
  %17 = alloca %struct.page**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.drbd_device* %0, %struct.drbd_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %22 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %21, i32 0, i32 1
  %23 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %22, align 8
  store %struct.drbd_bitmap* %23, %struct.drbd_bitmap** %8, align 8
  store %struct.page** null, %struct.page*** %17, align 8
  store i32 0, i32* %18, align 4
  %24 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %25 = call i32 @expect(%struct.drbd_bitmap* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %265

30:                                               ; preds = %3
  %31 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %32 = load i32, i32* @BM_LOCKED_MASK, align 4
  %33 = call i32 @drbd_bm_lock(%struct.drbd_device* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 (%struct.drbd_device*, i8*, i64, ...) @drbd_info(%struct.drbd_device* %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %39 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %261

43:                                               ; preds = %30
  %44 = load i64, i64* %6, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %79

46:                                               ; preds = %43
  %47 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %48 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %47, i32 0, i32 5
  %49 = call i32 @spin_lock_irq(i32* %48)
  %50 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %51 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %50, i32 0, i32 6
  %52 = load %struct.page**, %struct.page*** %51, align 8
  store %struct.page** %52, %struct.page*** %17, align 8
  %53 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %54 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %15, align 8
  %56 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %57 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %11, align 8
  %59 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %60 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %59, i32 0, i32 6
  store %struct.page** null, %struct.page*** %60, align 8
  %61 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %62 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %64 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %63, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %66 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %65, i32 0, i32 4
  store i64 0, i64* %66, align 8
  %67 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %68 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %67, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %70 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %72 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %71, i32 0, i32 5
  %73 = call i32 @spin_unlock_irq(i32* %72)
  %74 = load %struct.page**, %struct.page*** %17, align 8
  %75 = load i64, i64* %15, align 8
  %76 = call i32 @bm_free_pages(%struct.page** %74, i64 %75)
  %77 = load %struct.page**, %struct.page*** %17, align 8
  %78 = call i32 @bm_vk_free(%struct.page** %77)
  br label %261

79:                                               ; preds = %43
  %80 = load i64, i64* %6, align 8
  %81 = load i32, i32* @BM_SECT_PER_BIT, align 4
  %82 = call i64 @ALIGN(i64 %80, i32 %81)
  %83 = call i64 @BM_SECT_TO_BIT(i64 %82)
  store i64 %83, i64* %9, align 8
  %84 = load i64, i64* %9, align 8
  %85 = call i64 @ALIGN(i64 %84, i32 64)
  %86 = load i64, i64* @LN2_BPL, align 8
  %87 = lshr i64 %85, %86
  store i64 %87, i64* %10, align 8
  %88 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %89 = call i64 @get_ldev(%struct.drbd_device* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %111

91:                                               ; preds = %79
  %92 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %93 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @drbd_md_on_disk_bits(i32 %94)
  store i64 %95, i64* %20, align 8
  %96 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %97 = call i32 @put_ldev(%struct.drbd_device* %96)
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* %20, align 8
  %100 = icmp ugt i64 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %91
  %102 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %103 = load i64, i64* %9, align 8
  %104 = call i32 (%struct.drbd_device*, i8*, i64, ...) @drbd_info(%struct.drbd_device* %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %103)
  %105 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %106 = load i64, i64* %20, align 8
  %107 = call i32 (%struct.drbd_device*, i8*, i64, ...) @drbd_info(%struct.drbd_device* %105, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %106)
  %108 = load i32, i32* @ENOSPC, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %18, align 4
  br label %261

110:                                              ; preds = %91
  br label %111

111:                                              ; preds = %110, %79
  %112 = load i64, i64* %10, align 8
  %113 = mul i64 %112, 8
  %114 = load i32, i32* @PAGE_SIZE, align 4
  %115 = call i64 @ALIGN(i64 %113, i32 %114)
  %116 = load i64, i64* @PAGE_SHIFT, align 8
  %117 = lshr i64 %115, %116
  store i64 %117, i64* %13, align 8
  %118 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %119 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %14, align 8
  %121 = load i64, i64* %13, align 8
  %122 = load i64, i64* %14, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %135

124:                                              ; preds = %111
  %125 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %126 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %127 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %126, i32 0, i32 6
  %128 = load %struct.page**, %struct.page*** %127, align 8
  %129 = icmp ne %struct.page** %128, null
  %130 = zext i1 %129 to i32
  %131 = call i32 @D_ASSERT(%struct.drbd_device* %125, i32 %130)
  %132 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %133 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %132, i32 0, i32 6
  %134 = load %struct.page**, %struct.page*** %133, align 8
  store %struct.page** %134, %struct.page*** %16, align 8
  br label %146

135:                                              ; preds = %111
  %136 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %137 = load i32, i32* @DRBD_FAULT_BM_ALLOC, align 4
  %138 = call i64 @drbd_insert_fault(%struct.drbd_device* %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  store %struct.page** null, %struct.page*** %16, align 8
  br label %145

141:                                              ; preds = %135
  %142 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %143 = load i64, i64* %13, align 8
  %144 = call %struct.page** @bm_realloc_pages(%struct.drbd_bitmap* %142, i64 %143)
  store %struct.page** %144, %struct.page*** %16, align 8
  br label %145

145:                                              ; preds = %141, %140
  br label %146

146:                                              ; preds = %145, %124
  %147 = load %struct.page**, %struct.page*** %16, align 8
  %148 = icmp ne %struct.page** %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %146
  %150 = load i32, i32* @ENOMEM, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %18, align 4
  br label %261

152:                                              ; preds = %146
  %153 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %154 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %153, i32 0, i32 5
  %155 = call i32 @spin_lock_irq(i32* %154)
  %156 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %157 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %156, i32 0, i32 6
  %158 = load %struct.page**, %struct.page*** %157, align 8
  store %struct.page** %158, %struct.page*** %17, align 8
  %159 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %160 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  store i64 %161, i64* %11, align 8
  %162 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %163 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %12, align 8
  %165 = load i64, i64* %9, align 8
  %166 = load i64, i64* %12, align 8
  %167 = icmp ugt i64 %165, %166
  %168 = zext i1 %167 to i32
  store i32 %168, i32* %19, align 4
  %169 = load %struct.page**, %struct.page*** %17, align 8
  %170 = icmp ne %struct.page** %169, null
  br i1 %170, label %171, label %180

171:                                              ; preds = %152
  %172 = load i32, i32* %19, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %171
  %175 = load i32, i32* %7, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %179 = call i32 @bm_set_surplus(%struct.drbd_bitmap* %178)
  br label %180

180:                                              ; preds = %177, %174, %171, %152
  %181 = load %struct.page**, %struct.page*** %16, align 8
  %182 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %183 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %182, i32 0, i32 6
  store %struct.page** %181, %struct.page*** %183, align 8
  %184 = load i64, i64* %13, align 8
  %185 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %186 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %185, i32 0, i32 1
  store i64 %184, i64* %186, align 8
  %187 = load i64, i64* %9, align 8
  %188 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %189 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %188, i32 0, i32 4
  store i64 %187, i64* %189, align 8
  %190 = load i64, i64* %10, align 8
  %191 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %192 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %191, i32 0, i32 2
  store i64 %190, i64* %192, align 8
  %193 = load i64, i64* %6, align 8
  %194 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %195 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %194, i32 0, i32 0
  store i64 %193, i64* %195, align 8
  %196 = load i32, i32* %19, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %223

198:                                              ; preds = %180
  %199 = load i32, i32* %7, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %215

201:                                              ; preds = %198
  %202 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %203 = load i64, i64* %11, align 8
  %204 = load i64, i64* %10, align 8
  %205 = load i64, i64* %11, align 8
  %206 = sub i64 %204, %205
  %207 = call i32 @bm_memset(%struct.drbd_bitmap* %202, i64 %203, i32 255, i64 %206)
  %208 = load i64, i64* %9, align 8
  %209 = load i64, i64* %12, align 8
  %210 = sub i64 %208, %209
  %211 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %212 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = add i64 %213, %210
  store i64 %214, i64* %212, align 8
  br label %222

215:                                              ; preds = %198
  %216 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %217 = load i64, i64* %11, align 8
  %218 = load i64, i64* %10, align 8
  %219 = load i64, i64* %11, align 8
  %220 = sub i64 %218, %219
  %221 = call i32 @bm_memset(%struct.drbd_bitmap* %216, i64 %217, i32 0, i64 %220)
  br label %222

222:                                              ; preds = %215, %201
  br label %223

223:                                              ; preds = %222, %180
  %224 = load i64, i64* %13, align 8
  %225 = load i64, i64* %14, align 8
  %226 = icmp ult i64 %224, %225
  br i1 %226, label %227, label %235

227:                                              ; preds = %223
  %228 = load %struct.page**, %struct.page*** %17, align 8
  %229 = load i64, i64* %13, align 8
  %230 = getelementptr inbounds %struct.page*, %struct.page** %228, i64 %229
  %231 = load i64, i64* %14, align 8
  %232 = load i64, i64* %13, align 8
  %233 = sub i64 %231, %232
  %234 = call i32 @bm_free_pages(%struct.page** %230, i64 %233)
  br label %235

235:                                              ; preds = %227, %223
  %236 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %237 = call i32 @bm_clear_surplus(%struct.drbd_bitmap* %236)
  %238 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %239 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %238, i32 0, i32 5
  %240 = call i32 @spin_unlock_irq(i32* %239)
  %241 = load %struct.page**, %struct.page*** %17, align 8
  %242 = load %struct.page**, %struct.page*** %16, align 8
  %243 = icmp ne %struct.page** %241, %242
  br i1 %243, label %244, label %247

244:                                              ; preds = %235
  %245 = load %struct.page**, %struct.page*** %17, align 8
  %246 = call i32 @bm_vk_free(%struct.page** %245)
  br label %247

247:                                              ; preds = %244, %235
  %248 = load i32, i32* %19, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %255, label %250

250:                                              ; preds = %247
  %251 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %252 = call i64 @bm_count_bits(%struct.drbd_bitmap* %251)
  %253 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  %254 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %253, i32 0, i32 3
  store i64 %252, i64* %254, align 8
  br label %255

255:                                              ; preds = %250, %247
  %256 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %257 = load i64, i64* %9, align 8
  %258 = load i64, i64* %10, align 8
  %259 = load i64, i64* %13, align 8
  %260 = call i32 (%struct.drbd_device*, i8*, i64, ...) @drbd_info(%struct.drbd_device* %256, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i64 %257, i64 %258, i64 %259)
  br label %261

261:                                              ; preds = %255, %149, %101, %46, %42
  %262 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %263 = call i32 @drbd_bm_unlock(%struct.drbd_device* %262)
  %264 = load i32, i32* %18, align 4
  store i32 %264, i32* %4, align 4
  br label %265

265:                                              ; preds = %261, %27
  %266 = load i32, i32* %4, align 4
  ret i32 %266
}

declare dso_local i32 @expect(%struct.drbd_bitmap*) #1

declare dso_local i32 @drbd_bm_lock(%struct.drbd_device*, i8*, i32) #1

declare dso_local i32 @drbd_info(%struct.drbd_device*, i8*, i64, ...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @bm_free_pages(%struct.page**, i64) #1

declare dso_local i32 @bm_vk_free(%struct.page**) #1

declare dso_local i64 @BM_SECT_TO_BIT(i64) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i64 @get_ldev(%struct.drbd_device*) #1

declare dso_local i64 @drbd_md_on_disk_bits(i32) #1

declare dso_local i32 @put_ldev(%struct.drbd_device*) #1

declare dso_local i32 @D_ASSERT(%struct.drbd_device*, i32) #1

declare dso_local i64 @drbd_insert_fault(%struct.drbd_device*, i32) #1

declare dso_local %struct.page** @bm_realloc_pages(%struct.drbd_bitmap*, i64) #1

declare dso_local i32 @bm_set_surplus(%struct.drbd_bitmap*) #1

declare dso_local i32 @bm_memset(%struct.drbd_bitmap*, i64, i32, i64) #1

declare dso_local i32 @bm_clear_surplus(%struct.drbd_bitmap*) #1

declare dso_local i64 @bm_count_bits(%struct.drbd_bitmap*) #1

declare dso_local i32 @drbd_bm_unlock(%struct.drbd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
