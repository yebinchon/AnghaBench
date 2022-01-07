; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_iommu-common.c_iommu_tbl_range_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_iommu-common.c_iommu_tbl_range_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iommu_map_table = type { i32, i32, i64, i64, i64, i32 (%struct.iommu_map_table*)*, %struct.iommu_pool*, i32, %struct.iommu_pool }
%struct.iommu_pool = type { i64, i64, i64, i32 }

@iommu_hash_common = common dso_local global i32 0, align 4
@IOMMU_HAS_LARGE_POOL = common dso_local global i32 0, align 4
@iommu_large_alloc = common dso_local global i64 0, align 8
@BITS_PER_LONG = common dso_local global i32 0, align 4
@IOMMU_ERROR_CODE = common dso_local global i64 0, align 8
@IOMMU_NO_SPAN_BOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @iommu_tbl_range_alloc(%struct.device* %0, %struct.iommu_map_table* %1, i64 %2, i64* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.iommu_map_table*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.iommu_pool*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.iommu_map_table* %1, %struct.iommu_map_table** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %29 = load i32, i32* @iommu_hash_common, align 4
  %30 = call i32 @__this_cpu_read(i32 %29)
  store i32 %30, i32* %14, align 4
  store i32 0, i32* %21, align 4
  %31 = load %struct.iommu_map_table*, %struct.iommu_map_table** %9, align 8
  %32 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %23, align 4
  %34 = load %struct.iommu_map_table*, %struct.iommu_map_table** %9, align 8
  %35 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IOMMU_HAS_LARGE_POOL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %25, align 4
  %41 = load i32, i32* %25, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %6
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @iommu_large_alloc, align 8
  %46 = icmp ugt i64 %44, %45
  br label %47

47:                                               ; preds = %43, %6
  %48 = phi i1 [ false, %6 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %26, align 4
  store i64 0, i64* %28, align 8
  %50 = load i32, i32* %13, align 4
  %51 = icmp ugt i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i32, i32* @BITS_PER_LONG, align 4
  %54 = load i32, i32* %13, align 4
  %55 = sub i32 %53, %54
  %56 = zext i32 %55 to i64
  %57 = lshr i64 -1, %56
  store i64 %57, i64* %28, align 8
  br label %58

58:                                               ; preds = %52, %47
  %59 = load i64, i64* %10, align 8
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = call i32 @WARN_ON_ONCE(i32 1)
  %66 = load i64, i64* @IOMMU_ERROR_CODE, align 8
  store i64 %66, i64* %7, align 8
  br label %328

67:                                               ; preds = %58
  %68 = load i32, i32* %26, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct.iommu_map_table*, %struct.iommu_map_table** %9, align 8
  %72 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %71, i32 0, i32 8
  store %struct.iommu_pool* %72, %struct.iommu_pool** %20, align 8
  store i32 0, i32* %22, align 4
  br label %84

73:                                               ; preds = %67
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %23, align 4
  %76 = sub i32 %75, 1
  %77 = and i32 %74, %76
  store i32 %77, i32* %22, align 4
  %78 = load %struct.iommu_map_table*, %struct.iommu_map_table** %9, align 8
  %79 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %78, i32 0, i32 6
  %80 = load %struct.iommu_pool*, %struct.iommu_pool** %79, align 8
  %81 = load i32, i32* %22, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %80, i64 %82
  store %struct.iommu_pool* %83, %struct.iommu_pool** %20, align 8
  br label %84

84:                                               ; preds = %73, %70
  %85 = load %struct.iommu_pool*, %struct.iommu_pool** %20, align 8
  %86 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %85, i32 0, i32 3
  %87 = load i64, i64* %24, align 8
  %88 = call i32 @spin_lock_irqsave(i32* %86, i64 %87)
  br label %89

89:                                               ; preds = %255, %236, %84
  %90 = load i32, i32* %21, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %116

92:                                               ; preds = %89
  %93 = load i64*, i64** %11, align 8
  %94 = icmp ne i64* %93, null
  br i1 %94, label %95, label %116

95:                                               ; preds = %92
  %96 = load i64*, i64** %11, align 8
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %116

99:                                               ; preds = %95
  %100 = load i64*, i64** %11, align 8
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.iommu_pool*, %struct.iommu_pool** %20, align 8
  %103 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp uge i64 %101, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %99
  %107 = load i64*, i64** %11, align 8
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.iommu_pool*, %struct.iommu_pool** %20, align 8
  %110 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ult i64 %108, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load i64*, i64** %11, align 8
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %17, align 8
  br label %120

116:                                              ; preds = %106, %99, %95, %92, %89
  %117 = load %struct.iommu_pool*, %struct.iommu_pool** %20, align 8
  %118 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %17, align 8
  br label %120

120:                                              ; preds = %116, %113
  %121 = load %struct.iommu_pool*, %struct.iommu_pool** %20, align 8
  %122 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %18, align 8
  %124 = load i64, i64* %17, align 8
  %125 = load i64, i64* %18, align 8
  %126 = icmp uge i64 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %120
  %128 = load %struct.iommu_pool*, %struct.iommu_pool** %20, align 8
  %129 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %17, align 8
  br label %131

131:                                              ; preds = %127, %120
  %132 = load %struct.iommu_map_table*, %struct.iommu_map_table** %9, align 8
  %133 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.iommu_map_table*, %struct.iommu_map_table** %9, align 8
  %136 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = lshr i64 %134, %137
  store i64 %138, i64* %27, align 8
  %139 = load i64, i64* %18, align 8
  %140 = load i64, i64* %27, align 8
  %141 = add i64 %139, %140
  %142 = load i64, i64* %12, align 8
  %143 = icmp ugt i64 %141, %142
  br i1 %143, label %144, label %176

144:                                              ; preds = %131
  %145 = load i64, i64* %12, align 8
  %146 = load i64, i64* %27, align 8
  %147 = sub i64 %145, %146
  %148 = add i64 %147, 1
  store i64 %148, i64* %18, align 8
  %149 = load i64, i64* %17, align 8
  %150 = load i64, i64* %12, align 8
  %151 = and i64 %149, %150
  %152 = load i64, i64* %18, align 8
  %153 = icmp uge i64 %151, %152
  br i1 %153, label %157, label %154

154:                                              ; preds = %144
  %155 = load i32, i32* %21, align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %171

157:                                              ; preds = %154, %144
  %158 = load %struct.iommu_pool*, %struct.iommu_pool** %20, align 8
  %159 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %158, i32 0, i32 3
  %160 = call i32 @spin_unlock(i32* %159)
  %161 = load %struct.iommu_map_table*, %struct.iommu_map_table** %9, align 8
  %162 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %161, i32 0, i32 6
  %163 = load %struct.iommu_pool*, %struct.iommu_pool** %162, align 8
  %164 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %163, i64 0
  store %struct.iommu_pool* %164, %struct.iommu_pool** %20, align 8
  %165 = load %struct.iommu_pool*, %struct.iommu_pool** %20, align 8
  %166 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %165, i32 0, i32 3
  %167 = call i32 @spin_lock(i32* %166)
  %168 = load %struct.iommu_pool*, %struct.iommu_pool** %20, align 8
  %169 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %17, align 8
  br label %175

171:                                              ; preds = %154
  %172 = load i64, i64* %12, align 8
  %173 = load i64, i64* %17, align 8
  %174 = and i64 %173, %172
  store i64 %174, i64* %17, align 8
  br label %175

175:                                              ; preds = %171, %157
  br label %176

176:                                              ; preds = %175, %131
  %177 = load %struct.device*, %struct.device** %8, align 8
  %178 = icmp ne %struct.device* %177, null
  br i1 %178, label %179, label %189

179:                                              ; preds = %176
  %180 = load %struct.device*, %struct.device** %8, align 8
  %181 = call i64 @dma_get_seg_boundary(%struct.device* %180)
  %182 = add i64 %181, 1
  %183 = load %struct.iommu_map_table*, %struct.iommu_map_table** %9, align 8
  %184 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = trunc i64 %185 to i32
  %187 = shl i32 1, %186
  %188 = call i64 @ALIGN(i64 %182, i32 %187)
  store i64 %188, i64* %19, align 8
  br label %196

189:                                              ; preds = %176
  %190 = load %struct.iommu_map_table*, %struct.iommu_map_table** %9, align 8
  %191 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = trunc i64 %192 to i32
  %194 = shl i32 1, %193
  %195 = call i64 @ALIGN(i64 4294967296, i32 %194)
  store i64 %195, i64* %19, align 8
  br label %196

196:                                              ; preds = %189, %179
  %197 = load i64, i64* %19, align 8
  %198 = load %struct.iommu_map_table*, %struct.iommu_map_table** %9, align 8
  %199 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = lshr i64 %197, %200
  store i64 %201, i64* %19, align 8
  %202 = load %struct.iommu_map_table*, %struct.iommu_map_table** %9, align 8
  %203 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @IOMMU_NO_SPAN_BOUND, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %217

208:                                              ; preds = %196
  store i64 0, i64* %27, align 8
  %209 = load %struct.iommu_map_table*, %struct.iommu_map_table** %9, align 8
  %210 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %209, i32 0, i32 4
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.iommu_map_table*, %struct.iommu_map_table** %9, align 8
  %213 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = zext i32 %214 to i64
  %216 = mul i64 %211, %215
  store i64 %216, i64* %19, align 8
  br label %217

217:                                              ; preds = %208, %196
  %218 = load %struct.iommu_map_table*, %struct.iommu_map_table** %9, align 8
  %219 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %218, i32 0, i32 7
  %220 = load i32, i32* %219, align 8
  %221 = load i64, i64* %18, align 8
  %222 = load i64, i64* %17, align 8
  %223 = load i64, i64* %10, align 8
  %224 = load i64, i64* %27, align 8
  %225 = load i64, i64* %19, align 8
  %226 = load i64, i64* %28, align 8
  %227 = call i64 @iommu_area_alloc(i32 %220, i64 %221, i64 %222, i64 %223, i64 %224, i64 %225, i64 %226)
  store i64 %227, i64* %15, align 8
  %228 = load i64, i64* %15, align 8
  %229 = icmp eq i64 %228, -1
  br i1 %229, label %230, label %286

230:                                              ; preds = %217
  %231 = load i32, i32* %21, align 4
  %232 = icmp eq i32 %231, 0
  %233 = zext i1 %232 to i32
  %234 = call i64 @likely(i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %246

236:                                              ; preds = %230
  %237 = load %struct.iommu_pool*, %struct.iommu_pool** %20, align 8
  %238 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.iommu_pool*, %struct.iommu_pool** %20, align 8
  %241 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %240, i32 0, i32 2
  store i64 %239, i64* %241, align 8
  %242 = load %struct.iommu_map_table*, %struct.iommu_map_table** %9, align 8
  %243 = call i32 @set_flush(%struct.iommu_map_table* %242)
  %244 = load i32, i32* %21, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %21, align 4
  br label %89

246:                                              ; preds = %230
  %247 = load i32, i32* %26, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %284, label %249

249:                                              ; preds = %246
  %250 = load i32, i32* %21, align 4
  %251 = load %struct.iommu_map_table*, %struct.iommu_map_table** %9, align 8
  %252 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = icmp ule i32 %250, %253
  br i1 %254, label %255, label %284

255:                                              ; preds = %249
  %256 = load %struct.iommu_pool*, %struct.iommu_pool** %20, align 8
  %257 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %256, i32 0, i32 3
  %258 = call i32 @spin_unlock(i32* %257)
  %259 = load i32, i32* %22, align 4
  %260 = add i32 %259, 1
  %261 = load %struct.iommu_map_table*, %struct.iommu_map_table** %9, align 8
  %262 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = sub i32 %263, 1
  %265 = and i32 %260, %264
  store i32 %265, i32* %22, align 4
  %266 = load %struct.iommu_map_table*, %struct.iommu_map_table** %9, align 8
  %267 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %266, i32 0, i32 6
  %268 = load %struct.iommu_pool*, %struct.iommu_pool** %267, align 8
  %269 = load i32, i32* %22, align 4
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %268, i64 %270
  store %struct.iommu_pool* %271, %struct.iommu_pool** %20, align 8
  %272 = load %struct.iommu_pool*, %struct.iommu_pool** %20, align 8
  %273 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %272, i32 0, i32 3
  %274 = call i32 @spin_lock(i32* %273)
  %275 = load %struct.iommu_pool*, %struct.iommu_pool** %20, align 8
  %276 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.iommu_pool*, %struct.iommu_pool** %20, align 8
  %279 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %278, i32 0, i32 2
  store i64 %277, i64* %279, align 8
  %280 = load %struct.iommu_map_table*, %struct.iommu_map_table** %9, align 8
  %281 = call i32 @set_flush(%struct.iommu_map_table* %280)
  %282 = load i32, i32* %21, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %21, align 4
  br label %89

284:                                              ; preds = %249, %246
  %285 = load i64, i64* @IOMMU_ERROR_CODE, align 8
  store i64 %285, i64* %15, align 8
  br label %322

286:                                              ; preds = %217
  %287 = load %struct.iommu_map_table*, %struct.iommu_map_table** %9, align 8
  %288 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %287, i32 0, i32 5
  %289 = load i32 (%struct.iommu_map_table*)*, i32 (%struct.iommu_map_table*)** %288, align 8
  %290 = icmp ne i32 (%struct.iommu_map_table*)* %289, null
  br i1 %290, label %291, label %309

291:                                              ; preds = %286
  %292 = load i64, i64* %15, align 8
  %293 = load %struct.iommu_pool*, %struct.iommu_pool** %20, align 8
  %294 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %293, i32 0, i32 2
  %295 = load i64, i64* %294, align 8
  %296 = icmp ult i64 %292, %295
  br i1 %296, label %301, label %297

297:                                              ; preds = %291
  %298 = load %struct.iommu_map_table*, %struct.iommu_map_table** %9, align 8
  %299 = call i64 @need_flush(%struct.iommu_map_table* %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %309

301:                                              ; preds = %297, %291
  %302 = load %struct.iommu_map_table*, %struct.iommu_map_table** %9, align 8
  %303 = call i32 @clear_flush(%struct.iommu_map_table* %302)
  %304 = load %struct.iommu_map_table*, %struct.iommu_map_table** %9, align 8
  %305 = getelementptr inbounds %struct.iommu_map_table, %struct.iommu_map_table* %304, i32 0, i32 5
  %306 = load i32 (%struct.iommu_map_table*)*, i32 (%struct.iommu_map_table*)** %305, align 8
  %307 = load %struct.iommu_map_table*, %struct.iommu_map_table** %9, align 8
  %308 = call i32 %306(%struct.iommu_map_table* %307)
  br label %309

309:                                              ; preds = %301, %297, %286
  %310 = load i64, i64* %15, align 8
  %311 = load i64, i64* %10, align 8
  %312 = add i64 %310, %311
  store i64 %312, i64* %16, align 8
  %313 = load i64, i64* %16, align 8
  %314 = load %struct.iommu_pool*, %struct.iommu_pool** %20, align 8
  %315 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %314, i32 0, i32 2
  store i64 %313, i64* %315, align 8
  %316 = load i64*, i64** %11, align 8
  %317 = icmp ne i64* %316, null
  br i1 %317, label %318, label %321

318:                                              ; preds = %309
  %319 = load i64, i64* %16, align 8
  %320 = load i64*, i64** %11, align 8
  store i64 %319, i64* %320, align 8
  br label %321

321:                                              ; preds = %318, %309
  br label %322

322:                                              ; preds = %321, %284
  %323 = load %struct.iommu_pool*, %struct.iommu_pool** %20, align 8
  %324 = getelementptr inbounds %struct.iommu_pool, %struct.iommu_pool* %323, i32 0, i32 3
  %325 = load i64, i64* %24, align 8
  %326 = call i32 @spin_unlock_irqrestore(i32* %324, i64 %325)
  %327 = load i64, i64* %15, align 8
  store i64 %327, i64* %7, align 8
  br label %328

328:                                              ; preds = %322, %64
  %329 = load i64, i64* %7, align 8
  ret i64 %329
}

declare dso_local i32 @__this_cpu_read(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i64 @dma_get_seg_boundary(%struct.device*) #1

declare dso_local i64 @iommu_area_alloc(i32, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @set_flush(%struct.iommu_map_table*) #1

declare dso_local i64 @need_flush(%struct.iommu_map_table*) #1

declare dso_local i32 @clear_flush(%struct.iommu_map_table*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
