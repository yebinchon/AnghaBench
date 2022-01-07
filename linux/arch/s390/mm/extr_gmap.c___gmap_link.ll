; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c___gmap_link.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c___gmap_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmap = type { i64*, i32, i32, i32, %struct.mm_struct* }
%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@_ASCE_TYPE_MASK = common dso_local global i32 0, align 4
@_ASCE_TYPE_REGION1 = common dso_local global i32 0, align 4
@_REGION1_INDEX = common dso_local global i64 0, align 8
@_REGION1_SHIFT = common dso_local global i64 0, align 8
@_REGION_ENTRY_INVALID = common dso_local global i64 0, align 8
@_REGION2_ENTRY_EMPTY = common dso_local global i64 0, align 8
@_REGION1_MASK = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@_REGION_ENTRY_ORIGIN = common dso_local global i64 0, align 8
@_ASCE_TYPE_REGION2 = common dso_local global i32 0, align 4
@_REGION2_INDEX = common dso_local global i64 0, align 8
@_REGION2_SHIFT = common dso_local global i64 0, align 8
@_REGION3_ENTRY_EMPTY = common dso_local global i64 0, align 8
@_REGION2_MASK = common dso_local global i64 0, align 8
@_ASCE_TYPE_REGION3 = common dso_local global i32 0, align 4
@_REGION3_INDEX = common dso_local global i64 0, align 8
@_REGION3_SHIFT = common dso_local global i64 0, align 8
@_SEGMENT_ENTRY_EMPTY = common dso_local global i64 0, align 8
@_REGION3_MASK = common dso_local global i64 0, align 8
@_SEGMENT_INDEX = common dso_local global i64 0, align 8
@_SEGMENT_SHIFT = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PMD_SHIFT = common dso_local global i64 0, align 8
@_SEGMENT_ENTRY_HARDWARE_BITS_LARGE = common dso_local global i64 0, align 8
@_SEGMENT_ENTRY_GMAP_UC = common dso_local global i64 0, align 8
@_SEGMENT_ENTRY_HARDWARE_BITS = common dso_local global i64 0, align 8
@_SEGMENT_ENTRY_PROTECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__gmap_link(%struct.gmap* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gmap*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.gmap* %0, %struct.gmap** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load %struct.gmap*, %struct.gmap** %5, align 8
  %18 = call i32 @gmap_is_shadow(%struct.gmap* %17)
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.gmap*, %struct.gmap** %5, align 8
  %21 = getelementptr inbounds %struct.gmap, %struct.gmap* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  store i64* %22, i64** %9, align 8
  %23 = load %struct.gmap*, %struct.gmap** %5, align 8
  %24 = getelementptr inbounds %struct.gmap, %struct.gmap* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @_ASCE_TYPE_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @_ASCE_TYPE_REGION1, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %61

30:                                               ; preds = %3
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @_REGION1_INDEX, align 8
  %33 = and i64 %31, %32
  %34 = load i64, i64* @_REGION1_SHIFT, align 8
  %35 = lshr i64 %33, %34
  %36 = load i64*, i64** %9, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 %35
  store i64* %37, i64** %9, align 8
  %38 = load i64*, i64** %9, align 8
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @_REGION_ENTRY_INVALID, align 8
  %41 = and i64 %39, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %30
  %44 = load %struct.gmap*, %struct.gmap** %5, align 8
  %45 = load i64*, i64** %9, align 8
  %46 = load i64, i64* @_REGION2_ENTRY_EMPTY, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @_REGION1_MASK, align 8
  %49 = and i64 %47, %48
  %50 = call i64 @gmap_alloc_table(%struct.gmap* %44, i64* %45, i64 %46, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %291

55:                                               ; preds = %43, %30
  %56 = load i64*, i64** %9, align 8
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @_REGION_ENTRY_ORIGIN, align 8
  %59 = and i64 %57, %58
  %60 = inttoptr i64 %59 to i64*
  store i64* %60, i64** %9, align 8
  br label %61

61:                                               ; preds = %55, %3
  %62 = load %struct.gmap*, %struct.gmap** %5, align 8
  %63 = getelementptr inbounds %struct.gmap, %struct.gmap* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @_ASCE_TYPE_MASK, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @_ASCE_TYPE_REGION2, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %100

69:                                               ; preds = %61
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* @_REGION2_INDEX, align 8
  %72 = and i64 %70, %71
  %73 = load i64, i64* @_REGION2_SHIFT, align 8
  %74 = lshr i64 %72, %73
  %75 = load i64*, i64** %9, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 %74
  store i64* %76, i64** %9, align 8
  %77 = load i64*, i64** %9, align 8
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @_REGION_ENTRY_INVALID, align 8
  %80 = and i64 %78, %79
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %69
  %83 = load %struct.gmap*, %struct.gmap** %5, align 8
  %84 = load i64*, i64** %9, align 8
  %85 = load i64, i64* @_REGION3_ENTRY_EMPTY, align 8
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* @_REGION2_MASK, align 8
  %88 = and i64 %86, %87
  %89 = call i64 @gmap_alloc_table(%struct.gmap* %83, i64* %84, i64 %85, i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %82
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %291

94:                                               ; preds = %82, %69
  %95 = load i64*, i64** %9, align 8
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @_REGION_ENTRY_ORIGIN, align 8
  %98 = and i64 %96, %97
  %99 = inttoptr i64 %98 to i64*
  store i64* %99, i64** %9, align 8
  br label %100

100:                                              ; preds = %94, %61
  %101 = load %struct.gmap*, %struct.gmap** %5, align 8
  %102 = getelementptr inbounds %struct.gmap, %struct.gmap* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @_ASCE_TYPE_MASK, align 4
  %105 = and i32 %103, %104
  %106 = load i32, i32* @_ASCE_TYPE_REGION3, align 4
  %107 = icmp sge i32 %105, %106
  br i1 %107, label %108, label %139

108:                                              ; preds = %100
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* @_REGION3_INDEX, align 8
  %111 = and i64 %109, %110
  %112 = load i64, i64* @_REGION3_SHIFT, align 8
  %113 = lshr i64 %111, %112
  %114 = load i64*, i64** %9, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 %113
  store i64* %115, i64** %9, align 8
  %116 = load i64*, i64** %9, align 8
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @_REGION_ENTRY_INVALID, align 8
  %119 = and i64 %117, %118
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %108
  %122 = load %struct.gmap*, %struct.gmap** %5, align 8
  %123 = load i64*, i64** %9, align 8
  %124 = load i64, i64* @_SEGMENT_ENTRY_EMPTY, align 8
  %125 = load i64, i64* %6, align 8
  %126 = load i64, i64* @_REGION3_MASK, align 8
  %127 = and i64 %125, %126
  %128 = call i64 @gmap_alloc_table(%struct.gmap* %122, i64* %123, i64 %124, i64 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %121
  %131 = load i32, i32* @ENOMEM, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %4, align 4
  br label %291

133:                                              ; preds = %121, %108
  %134 = load i64*, i64** %9, align 8
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @_REGION_ENTRY_ORIGIN, align 8
  %137 = and i64 %135, %136
  %138 = inttoptr i64 %137 to i64*
  store i64* %138, i64** %9, align 8
  br label %139

139:                                              ; preds = %133, %100
  %140 = load i64, i64* %6, align 8
  %141 = load i64, i64* @_SEGMENT_INDEX, align 8
  %142 = and i64 %140, %141
  %143 = load i64, i64* @_SEGMENT_SHIFT, align 8
  %144 = lshr i64 %142, %143
  %145 = load i64*, i64** %9, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 %144
  store i64* %146, i64** %9, align 8
  %147 = load %struct.gmap*, %struct.gmap** %5, align 8
  %148 = getelementptr inbounds %struct.gmap, %struct.gmap* %147, i32 0, i32 4
  %149 = load %struct.mm_struct*, %struct.mm_struct** %148, align 8
  store %struct.mm_struct* %149, %struct.mm_struct** %8, align 8
  %150 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %151 = load i64, i64* %7, align 8
  %152 = call i32* @pgd_offset(%struct.mm_struct* %150, i64 %151)
  store i32* %152, i32** %11, align 8
  %153 = load i32*, i32** %11, align 8
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @pgd_none(i32 %154)
  %156 = call i32 @VM_BUG_ON(i32 %155)
  %157 = load i32*, i32** %11, align 8
  %158 = load i64, i64* %7, align 8
  %159 = call i32* @p4d_offset(i32* %157, i64 %158)
  store i32* %159, i32** %12, align 8
  %160 = load i32*, i32** %12, align 8
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @p4d_none(i32 %161)
  %163 = call i32 @VM_BUG_ON(i32 %162)
  %164 = load i32*, i32** %12, align 8
  %165 = load i64, i64* %7, align 8
  %166 = call i32* @pud_offset(i32* %164, i64 %165)
  store i32* %166, i32** %13, align 8
  %167 = load i32*, i32** %13, align 8
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @pud_none(i32 %168)
  %170 = call i32 @VM_BUG_ON(i32 %169)
  %171 = load i32*, i32** %13, align 8
  %172 = load i32, i32* %171, align 4
  %173 = call i64 @pud_large(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %139
  %176 = load i32, i32* @EFAULT, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %4, align 4
  br label %291

178:                                              ; preds = %139
  %179 = load i32*, i32** %13, align 8
  %180 = load i64, i64* %7, align 8
  %181 = call i32* @pmd_offset(i32* %179, i64 %180)
  store i32* %181, i32** %14, align 8
  %182 = load i32*, i32** %14, align 8
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @pmd_none(i32 %183)
  %185 = call i32 @VM_BUG_ON(i32 %184)
  %186 = load i32*, i32** %14, align 8
  %187 = load i32, i32* %186, align 4
  %188 = call i64 @pmd_large(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %201

190:                                              ; preds = %178
  %191 = load %struct.gmap*, %struct.gmap** %5, align 8
  %192 = getelementptr inbounds %struct.gmap, %struct.gmap* %191, i32 0, i32 4
  %193 = load %struct.mm_struct*, %struct.mm_struct** %192, align 8
  %194 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %190
  %199 = load i32, i32* @EFAULT, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %4, align 4
  br label %291

201:                                              ; preds = %190, %178
  %202 = load i32, i32* @GFP_KERNEL, align 4
  %203 = call i32 @radix_tree_preload(i32 %202)
  store i32 %203, i32* %16, align 4
  %204 = load i32, i32* %16, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %201
  %207 = load i32, i32* %16, align 4
  store i32 %207, i32* %4, align 4
  br label %291

208:                                              ; preds = %201
  %209 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %210 = load i32*, i32** %14, align 8
  %211 = call i32* @pmd_lock(%struct.mm_struct* %209, i32* %210)
  store i32* %211, i32** %10, align 8
  %212 = load %struct.gmap*, %struct.gmap** %5, align 8
  %213 = getelementptr inbounds %struct.gmap, %struct.gmap* %212, i32 0, i32 2
  %214 = call i32 @spin_lock(i32* %213)
  %215 = load i64*, i64** %9, align 8
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @_SEGMENT_ENTRY_EMPTY, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %252

219:                                              ; preds = %208
  %220 = load %struct.gmap*, %struct.gmap** %5, align 8
  %221 = getelementptr inbounds %struct.gmap, %struct.gmap* %220, i32 0, i32 3
  %222 = load i64, i64* %7, align 8
  %223 = load i64, i64* @PMD_SHIFT, align 8
  %224 = lshr i64 %222, %223
  %225 = load i64*, i64** %9, align 8
  %226 = call i32 @radix_tree_insert(i32* %221, i64 %224, i64* %225)
  store i32 %226, i32* %16, align 4
  %227 = load i32, i32* %16, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %251, label %229

229:                                              ; preds = %219
  %230 = load i32*, i32** %14, align 8
  %231 = load i32, i32* %230, align 4
  %232 = call i64 @pmd_large(i32 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %243

234:                                              ; preds = %229
  %235 = load i32*, i32** %14, align 8
  %236 = load i32, i32* %235, align 4
  %237 = call i64 @pmd_val(i32 %236)
  %238 = load i64, i64* @_SEGMENT_ENTRY_HARDWARE_BITS_LARGE, align 8
  %239 = and i64 %237, %238
  %240 = load i64, i64* @_SEGMENT_ENTRY_GMAP_UC, align 8
  %241 = or i64 %239, %240
  %242 = load i64*, i64** %9, align 8
  store i64 %241, i64* %242, align 8
  br label %250

243:                                              ; preds = %229
  %244 = load i32*, i32** %14, align 8
  %245 = load i32, i32* %244, align 4
  %246 = call i64 @pmd_val(i32 %245)
  %247 = load i64, i64* @_SEGMENT_ENTRY_HARDWARE_BITS, align 8
  %248 = and i64 %246, %247
  %249 = load i64*, i64** %9, align 8
  store i64 %248, i64* %249, align 8
  br label %250

250:                                              ; preds = %243, %234
  br label %251

251:                                              ; preds = %250, %219
  br label %283

252:                                              ; preds = %208
  %253 = load i64*, i64** %9, align 8
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @_SEGMENT_ENTRY_PROTECT, align 8
  %256 = and i64 %254, %255
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %282

258:                                              ; preds = %252
  %259 = load i32*, i32** %14, align 8
  %260 = load i32, i32* %259, align 4
  %261 = call i64 @pmd_val(i32 %260)
  %262 = load i64, i64* @_SEGMENT_ENTRY_PROTECT, align 8
  %263 = and i64 %261, %262
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %282, label %265

265:                                              ; preds = %258
  %266 = load i64*, i64** %9, align 8
  %267 = load i64, i64* %266, align 8
  store i64 %267, i64* %15, align 8
  %268 = load i64, i64* @_SEGMENT_ENTRY_PROTECT, align 8
  %269 = xor i64 %268, -1
  %270 = load i64, i64* %15, align 8
  %271 = and i64 %270, %269
  store i64 %271, i64* %15, align 8
  %272 = load i64, i64* @_SEGMENT_ENTRY_GMAP_UC, align 8
  %273 = load i64, i64* %15, align 8
  %274 = or i64 %273, %272
  store i64 %274, i64* %15, align 8
  %275 = load %struct.gmap*, %struct.gmap** %5, align 8
  %276 = load i64*, i64** %9, align 8
  %277 = bitcast i64* %276 to i32*
  %278 = load i64, i64* %15, align 8
  %279 = call i32 @__pmd(i64 %278)
  %280 = load i64, i64* %6, align 8
  %281 = call i32 @gmap_pmdp_xchg(%struct.gmap* %275, i32* %277, i32 %279, i64 %280)
  br label %282

282:                                              ; preds = %265, %258, %252
  br label %283

283:                                              ; preds = %282, %251
  %284 = load %struct.gmap*, %struct.gmap** %5, align 8
  %285 = getelementptr inbounds %struct.gmap, %struct.gmap* %284, i32 0, i32 2
  %286 = call i32 @spin_unlock(i32* %285)
  %287 = load i32*, i32** %10, align 8
  %288 = call i32 @spin_unlock(i32* %287)
  %289 = call i32 (...) @radix_tree_preload_end()
  %290 = load i32, i32* %16, align 4
  store i32 %290, i32* %4, align 4
  br label %291

291:                                              ; preds = %283, %206, %198, %175, %130, %91, %52
  %292 = load i32, i32* %4, align 4
  ret i32 %292
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gmap_is_shadow(%struct.gmap*) #1

declare dso_local i64 @gmap_alloc_table(%struct.gmap*, i64*, i64, i64) #1

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @pgd_none(i32) #1

declare dso_local i32* @p4d_offset(i32*, i64) #1

declare dso_local i32 @p4d_none(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32 @pud_none(i32) #1

declare dso_local i64 @pud_large(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @pmd_none(i32) #1

declare dso_local i64 @pmd_large(i32) #1

declare dso_local i32 @radix_tree_preload(i32) #1

declare dso_local i32* @pmd_lock(%struct.mm_struct*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @radix_tree_insert(i32*, i64, i64*) #1

declare dso_local i64 @pmd_val(i32) #1

declare dso_local i32 @gmap_pmdp_xchg(%struct.gmap*, i32*, i32, i64) #1

declare dso_local i32 @__pmd(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @radix_tree_preload_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
