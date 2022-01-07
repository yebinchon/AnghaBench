; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_iommu.c_iommu_range_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_iommu.c_iommu_range_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iommu_table = type { i32, i64, i32, i64, %struct.iommu_pool*, i32, %struct.iommu_pool }
%struct.iommu_pool = type { i64, i64, i64, i32 }

@DMA_MAPPING_ERROR = common dso_local global i64 0, align 8
@iommu_pool_hash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.iommu_table*, i64, i64*, i64, i32)* @iommu_range_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iommu_range_alloc(%struct.device* %0, %struct.iommu_table* %1, i64 %2, i64* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.iommu_table*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.iommu_pool*, align 8
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.iommu_table* %1, %struct.iommu_table** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %25 = load i64, i64* %10, align 8
  %26 = icmp ugt i64 %25, 15
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %28 = load i32, i32* %13, align 4
  %29 = zext i32 %28 to i64
  %30 = shl i64 1, %29
  %31 = sub i64 %30, 1
  store i64 %31, i64* %20, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %6
  %38 = call i64 (...) @printk_ratelimit()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 @WARN_ON(i32 1)
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i64, i64* @DMA_MAPPING_ERROR, align 8
  store i64 %43, i64* %7, align 8
  br label %287

44:                                               ; preds = %6
  %45 = load %struct.device*, %struct.device** %8, align 8
  %46 = call i64 @should_fail_iommu(%struct.device* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i64, i64* @DMA_MAPPING_ERROR, align 8
  store i64 %49, i64* %7, align 8
  br label %287

50:                                               ; preds = %44
  %51 = load i32, i32* @iommu_pool_hash, align 4
  %52 = call i32 @raw_cpu_read(i32 %51)
  %53 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %54 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, 1
  %57 = and i32 %52, %56
  store i32 %57, i32* %23, align 4
  %58 = load i32, i32* %18, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %62 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %61, i32 0, i32 6
  store %struct.iommu_pool* %62, %struct.iommu_pool** %24, align 8
  br label %70

63:                                               ; preds = %50
  %64 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %65 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %64, i32 0, i32 4
  %66 = load %struct.iommu_pool*, %struct.iommu_pool** %65, align 8
  %67 = load i32, i32* %23, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %66, i64 %68
  store %struct.iommu_pool* %69, %struct.iommu_pool** %24, align 8
  br label %70

70:                                               ; preds = %63, %60
  %71 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %72 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %71, i32 0, i32 3
  %73 = load i64, i64* %22, align 8
  %74 = call i32 @spin_lock_irqsave(i32* %72, i64 %73)
  br label %75

75:                                               ; preds = %217, %203, %70
  %76 = load i32, i32* %19, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %102

78:                                               ; preds = %75
  %79 = load i64*, i64** %11, align 8
  %80 = icmp ne i64* %79, null
  br i1 %80, label %81, label %102

81:                                               ; preds = %78
  %82 = load i64*, i64** %11, align 8
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %81
  %86 = load i64*, i64** %11, align 8
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %89 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp uge i64 %87, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %85
  %93 = load i64*, i64** %11, align 8
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %96 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ult i64 %94, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load i64*, i64** %11, align 8
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %16, align 8
  br label %106

102:                                              ; preds = %92, %85, %81, %78, %75
  %103 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %104 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %16, align 8
  br label %106

106:                                              ; preds = %102, %99
  %107 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %108 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %17, align 8
  %110 = load i64, i64* %16, align 8
  %111 = load i64, i64* %17, align 8
  %112 = icmp uge i64 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %115 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %16, align 8
  br label %117

117:                                              ; preds = %113, %106
  %118 = load i64, i64* %17, align 8
  %119 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %120 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = add i64 %118, %121
  %123 = load i64, i64* %12, align 8
  %124 = icmp ugt i64 %122, %123
  br i1 %124, label %125, label %159

125:                                              ; preds = %117
  %126 = load i64, i64* %12, align 8
  %127 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %128 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = sub i64 %126, %129
  %131 = add i64 %130, 1
  store i64 %131, i64* %17, align 8
  %132 = load i64, i64* %16, align 8
  %133 = load i64, i64* %12, align 8
  %134 = and i64 %132, %133
  %135 = load i64, i64* %17, align 8
  %136 = icmp uge i64 %134, %135
  br i1 %136, label %140, label %137

137:                                              ; preds = %125
  %138 = load i32, i32* %19, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %154

140:                                              ; preds = %137, %125
  %141 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %142 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %141, i32 0, i32 3
  %143 = call i32 @spin_unlock(i32* %142)
  %144 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %145 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %144, i32 0, i32 4
  %146 = load %struct.iommu_pool*, %struct.iommu_pool** %145, align 8
  %147 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %146, i64 0
  store %struct.iommu_pool* %147, %struct.iommu_pool** %24, align 8
  %148 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %149 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %148, i32 0, i32 3
  %150 = call i32 @spin_lock(i32* %149)
  %151 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %152 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %16, align 8
  br label %158

154:                                              ; preds = %137
  %155 = load i64, i64* %12, align 8
  %156 = load i64, i64* %16, align 8
  %157 = and i64 %156, %155
  store i64 %157, i64* %16, align 8
  br label %158

158:                                              ; preds = %154, %140
  br label %159

159:                                              ; preds = %158, %117
  %160 = load %struct.device*, %struct.device** %8, align 8
  %161 = icmp ne %struct.device* %160, null
  br i1 %161, label %162, label %171

162:                                              ; preds = %159
  %163 = load %struct.device*, %struct.device** %8, align 8
  %164 = call i64 @dma_get_seg_boundary(%struct.device* %163)
  %165 = add i64 %164, 1
  %166 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %167 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = shl i32 1, %168
  %170 = call i64 @ALIGN(i64 %165, i32 %169)
  store i64 %170, i64* %21, align 8
  br label %177

171:                                              ; preds = %159
  %172 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %173 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = shl i32 1, %174
  %176 = call i64 @ALIGN(i64 4294967296, i32 %175)
  store i64 %176, i64* %21, align 8
  br label %177

177:                                              ; preds = %171, %162
  %178 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %179 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 8
  %181 = load i64, i64* %17, align 8
  %182 = load i64, i64* %16, align 8
  %183 = load i64, i64* %10, align 8
  %184 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %185 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* %21, align 8
  %188 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %189 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = zext i32 %190 to i64
  %192 = lshr i64 %187, %191
  %193 = load i64, i64* %20, align 8
  %194 = call i64 @iommu_area_alloc(i32 %180, i64 %181, i64 %182, i64 %183, i64 %186, i64 %192, i64 %193)
  store i64 %194, i64* %14, align 8
  %195 = load i64, i64* %14, align 8
  %196 = icmp eq i64 %195, -1
  br i1 %196, label %197, label %250

197:                                              ; preds = %177
  %198 = load i32, i32* %19, align 4
  %199 = icmp eq i32 %198, 0
  %200 = zext i1 %199 to i32
  %201 = call i64 @likely(i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %211

203:                                              ; preds = %197
  %204 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %205 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %208 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %207, i32 0, i32 2
  store i64 %206, i64* %208, align 8
  %209 = load i32, i32* %19, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %19, align 4
  br label %75

211:                                              ; preds = %197
  %212 = load i32, i32* %19, align 4
  %213 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %214 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp sle i32 %212, %215
  br i1 %216, label %217, label %244

217:                                              ; preds = %211
  %218 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %219 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %218, i32 0, i32 3
  %220 = call i32 @spin_unlock(i32* %219)
  %221 = load i32, i32* %23, align 4
  %222 = add i32 %221, 1
  %223 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %224 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = sub nsw i32 %225, 1
  %227 = and i32 %222, %226
  store i32 %227, i32* %23, align 4
  %228 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %229 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %228, i32 0, i32 4
  %230 = load %struct.iommu_pool*, %struct.iommu_pool** %229, align 8
  %231 = load i32, i32* %23, align 4
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %230, i64 %232
  store %struct.iommu_pool* %233, %struct.iommu_pool** %24, align 8
  %234 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %235 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %234, i32 0, i32 3
  %236 = call i32 @spin_lock(i32* %235)
  %237 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %238 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %241 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %240, i32 0, i32 2
  store i64 %239, i64* %241, align 8
  %242 = load i32, i32* %19, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %19, align 4
  br label %75

244:                                              ; preds = %211
  %245 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %246 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %245, i32 0, i32 3
  %247 = load i64, i64* %22, align 8
  %248 = call i32 @spin_unlock_irqrestore(i32* %246, i64 %247)
  %249 = load i64, i64* @DMA_MAPPING_ERROR, align 8
  store i64 %249, i64* %7, align 8
  br label %287

250:                                              ; preds = %177
  %251 = load i64, i64* %14, align 8
  %252 = load i64, i64* %10, align 8
  %253 = add i64 %251, %252
  store i64 %253, i64* %15, align 8
  %254 = load i32, i32* %18, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %250
  %257 = load i64, i64* %15, align 8
  %258 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %259 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %258, i32 0, i32 2
  store i64 %257, i64* %259, align 8
  br label %275

260:                                              ; preds = %250
  %261 = load i64, i64* %15, align 8
  %262 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %263 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %262, i32 0, i32 3
  %264 = load i64, i64* %263, align 8
  %265 = add i64 %261, %264
  %266 = sub i64 %265, 1
  %267 = load %struct.iommu_table*, %struct.iommu_table** %9, align 8
  %268 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %267, i32 0, i32 3
  %269 = load i64, i64* %268, align 8
  %270 = sub i64 %269, 1
  %271 = xor i64 %270, -1
  %272 = and i64 %266, %271
  %273 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %274 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %273, i32 0, i32 2
  store i64 %272, i64* %274, align 8
  br label %275

275:                                              ; preds = %260, %256
  %276 = load i64*, i64** %11, align 8
  %277 = icmp ne i64* %276, null
  br i1 %277, label %278, label %281

278:                                              ; preds = %275
  %279 = load i64, i64* %15, align 8
  %280 = load i64*, i64** %11, align 8
  store i64 %279, i64* %280, align 8
  br label %281

281:                                              ; preds = %278, %275
  %282 = load %struct.iommu_pool*, %struct.iommu_pool** %24, align 8
  %283 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %282, i32 0, i32 3
  %284 = load i64, i64* %22, align 8
  %285 = call i32 @spin_unlock_irqrestore(i32* %283, i64 %284)
  %286 = load i64, i64* %14, align 8
  store i64 %286, i64* %7, align 8
  br label %287

287:                                              ; preds = %281, %244, %48, %42
  %288 = load i64, i64* %7, align 8
  ret i64 %288
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @should_fail_iommu(%struct.device*) #1

declare dso_local i32 @raw_cpu_read(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i64 @dma_get_seg_boundary(%struct.device*) #1

declare dso_local i64 @iommu_area_alloc(i32, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
