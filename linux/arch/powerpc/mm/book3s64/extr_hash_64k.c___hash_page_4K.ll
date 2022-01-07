; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_64k.c___hash_page_4K.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_64k.c___hash_page_4K.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32 (i64, i64, i64, i64, i64, i32, i64)*, i64 (i64, i64, i64, i64, i32, i64, i64, i32)*, i32 (i64)*, i32 (i64, i64, i64, i64, i32, i32)* }
%struct.TYPE_9__ = type { i32 }

@mmu_psize_defs = common dso_local global %struct.TYPE_10__* null, align 8
@MMU_PAGE_4K = common dso_local global i64 0, align 8
@H_PAGE_BUSY = common dso_local global i64 0, align 8
@_PAGE_ACCESSED = common dso_local global i64 0, align 8
@H_PAGE_COMBO = common dso_local global i64 0, align 8
@_PAGE_WRITE = common dso_local global i64 0, align 8
@_PAGE_DIRTY = common dso_local global i64 0, align 8
@CPU_FTR_NOEXECUTE = common dso_local global i32 0, align 4
@CPU_FTR_COHERENT_ICACHE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PTRS_PER_PTE = common dso_local global i32 0, align 4
@H_PAGE_HASHPTE = common dso_local global i64 0, align 8
@MMU_PAGE_64K = common dso_local global i32 0, align 4
@mmu_hash_ops = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@INVALID_RPTE_HIDX = common dso_local global i32 0, align 4
@H_PAGE_4K_PFN = common dso_local global i64 0, align 8
@HW_PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@htab_hash_mask = common dso_local global i64 0, align 8
@HPTES_PER_GROUP = common dso_local global i64 0, align 8
@HPTE_V_SECONDARY = common dso_local global i32 0, align 4
@_PTEIDX_GROUP_IX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__hash_page_4K(i64 %0, i64 %1, i64 %2, i32* %3, i64 %4, i64 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_9__, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_9__, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store i64 %0, i64* %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i32* %3, i32** %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mmu_psize_defs, align 8
  %36 = load i64, i64* @MMU_PAGE_4K, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %30, align 8
  br label %40

40:                                               ; preds = %80, %8
  %41 = load i32*, i32** %13, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @READ_ONCE(i32 %42)
  store i32 %43, i32* %31, align 4
  %44 = load i32, i32* %31, align 4
  %45 = call i64 @pte_val(i32 %44)
  store i64 %45, i64* %23, align 8
  %46 = load i64, i64* %23, align 8
  %47 = load i64, i64* @H_PAGE_BUSY, align 8
  %48 = and i64 %46, %47
  %49 = trunc i64 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %350

53:                                               ; preds = %40
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %23, align 8
  %56 = call i32 @check_pte_access(i64 %54, i64 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i32 1, i32* %9, align 4
  br label %350

63:                                               ; preds = %53
  %64 = load i64, i64* %23, align 8
  %65 = load i64, i64* @H_PAGE_BUSY, align 8
  %66 = or i64 %64, %65
  %67 = load i64, i64* @_PAGE_ACCESSED, align 8
  %68 = or i64 %66, %67
  %69 = load i64, i64* @H_PAGE_COMBO, align 8
  %70 = or i64 %68, %69
  store i64 %70, i64* %24, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* @_PAGE_WRITE, align 8
  %73 = and i64 %71, %72
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %63
  %76 = load i64, i64* @_PAGE_DIRTY, align 8
  %77 = load i64, i64* %24, align 8
  %78 = or i64 %77, %76
  store i64 %78, i64* %24, align 8
  br label %79

79:                                               ; preds = %75, %63
  br label %80

80:                                               ; preds = %79
  %81 = load i32*, i32** %13, align 8
  %82 = load i64, i64* %23, align 8
  %83 = call i32 @__pte(i64 %82)
  %84 = load i64, i64* %24, align 8
  %85 = call i32 @__pte(i64 %84)
  %86 = call i32 @pte_xchg(i32* %81, i32 %83, i32 %85)
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  br i1 %88, label %40, label %89

89:                                               ; preds = %80
  %90 = load i64, i64* %24, align 8
  %91 = load i32, i32* %17, align 4
  %92 = xor i32 %91, -1
  %93 = sext i32 %92 to i64
  %94 = and i64 %90, %93
  store i64 %94, i64* %25, align 8
  %95 = load i64, i64* %25, align 8
  %96 = call i64 @htab_convert_pte_flags(i64 %95)
  store i64 %96, i64* %21, align 8
  %97 = load i32, i32* @CPU_FTR_NOEXECUTE, align 4
  %98 = call i64 @cpu_has_feature(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %89
  %101 = load i32, i32* @CPU_FTR_COHERENT_ICACHE, align 4
  %102 = call i64 @cpu_has_feature(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %100
  %105 = load i64, i64* %21, align 8
  %106 = load i64, i64* %23, align 8
  %107 = call i32 @__pte(i64 %106)
  %108 = load i64, i64* %14, align 8
  %109 = call i64 @hash_page_do_lazy_icache(i64 %105, i32 %107, i64 %108)
  store i64 %109, i64* %21, align 8
  br label %110

110:                                              ; preds = %104, %100, %89
  %111 = load i64, i64* %10, align 8
  %112 = load i32, i32* @PAGE_SIZE, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = and i64 %111, %114
  %116 = load i64, i64* %30, align 8
  %117 = lshr i64 %115, %116
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %20, align 4
  %119 = load i64, i64* %10, align 8
  %120 = load i64, i64* %12, align 8
  %121 = load i32, i32* %16, align 4
  %122 = call i64 @hpt_vpn(i64 %119, i64 %120, i32 %121)
  store i64 %122, i64* %26, align 8
  %123 = load i64, i64* %23, align 8
  %124 = call i32 @__pte(i64 %123)
  %125 = load i32*, i32** %13, align 8
  %126 = load i32, i32* @PTRS_PER_PTE, align 4
  %127 = call i32 @__real_pte(i32 %124, i32* %125, i32 %126)
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i32 %127, i32* %128, align 4
  %129 = bitcast %struct.TYPE_9__* %18 to i8*
  %130 = bitcast %struct.TYPE_9__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %129, i8* align 4 %130, i64 4, i1 false)
  %131 = load i64, i64* %23, align 8
  %132 = load i64, i64* @H_PAGE_HASHPTE, align 8
  %133 = and i64 %131, %132
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %110
  br label %191

136:                                              ; preds = %110
  %137 = load i64, i64* %23, align 8
  %138 = load i64, i64* @H_PAGE_COMBO, align 8
  %139 = and i64 %137, %138
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %157, label %141

141:                                              ; preds = %136
  %142 = load i64, i64* %26, align 8
  %143 = load i32, i32* @MMU_PAGE_64K, align 4
  %144 = load i32, i32* %16, align 4
  %145 = load i64, i64* %15, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @flush_hash_page(i64 %142, i32 %147, i32 %143, i32 %144, i64 %145)
  %149 = load i64, i64* @H_PAGE_HASHPTE, align 8
  %150 = xor i64 %149, -1
  %151 = load i64, i64* %23, align 8
  %152 = and i64 %151, %150
  store i64 %152, i64* %23, align 8
  %153 = load i64, i64* @H_PAGE_HASHPTE, align 8
  %154 = xor i64 %153, -1
  %155 = load i64, i64* %24, align 8
  %156 = and i64 %155, %154
  store i64 %156, i64* %24, align 8
  br label %191

157:                                              ; preds = %136
  %158 = load i32, i32* %20, align 4
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @__rpte_sub_valid(i32 %160, i32 %158)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %190

163:                                              ; preds = %157
  %164 = load i64, i64* %26, align 8
  %165 = load i64, i64* %30, align 8
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* %20, align 4
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i64 @pte_get_hash_gslot(i64 %164, i64 %165, i32 %166, i32 %169, i32 %167)
  store i64 %170, i64* %29, align 8
  %171 = load i32 (i64, i64, i64, i64, i64, i32, i64)*, i32 (i64, i64, i64, i64, i64, i32, i64)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mmu_hash_ops, i32 0, i32 0), align 8
  %172 = load i64, i64* %29, align 8
  %173 = load i64, i64* %21, align 8
  %174 = load i64, i64* %26, align 8
  %175 = load i64, i64* @MMU_PAGE_4K, align 8
  %176 = load i64, i64* @MMU_PAGE_4K, align 8
  %177 = load i32, i32* %16, align 4
  %178 = load i64, i64* %15, align 8
  %179 = call i32 %171(i64 %172, i64 %173, i64 %174, i64 %175, i64 %176, i32 %177, i64 %178)
  store i32 %179, i32* %33, align 4
  %180 = load i32, i32* %33, align 4
  %181 = icmp eq i32 %180, -1
  br i1 %181, label %182, label %183

182:                                              ; preds = %163
  br label %191

183:                                              ; preds = %163
  %184 = load i64, i64* %24, align 8
  %185 = load i64, i64* @H_PAGE_BUSY, align 8
  %186 = xor i64 %185, -1
  %187 = and i64 %184, %186
  %188 = call i32 @__pte(i64 %187)
  %189 = load i32*, i32** %13, align 8
  store i32 %188, i32* %189, align 4
  store i32 0, i32* %9, align 4
  br label %350

190:                                              ; preds = %157
  br label %191

191:                                              ; preds = %190, %182, %141, %135
  %192 = load i64, i64* %23, align 8
  %193 = load i64, i64* @H_PAGE_COMBO, align 8
  %194 = and i64 %192, %193
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %191
  %197 = load i32, i32* @INVALID_RPTE_HIDX, align 4
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i32 %197, i32* %198, align 4
  br label %199

199:                                              ; preds = %196, %191
  %200 = load i64, i64* %23, align 8
  %201 = load i64, i64* @H_PAGE_4K_PFN, align 8
  %202 = and i64 %200, %201
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %199
  %205 = load i64, i64* %23, align 8
  %206 = call i32 @__pte(i64 %205)
  %207 = call i64 @pte_pfn(i32 %206)
  %208 = load i64, i64* @HW_PAGE_SHIFT, align 8
  %209 = shl i64 %207, %208
  store i64 %209, i64* %22, align 8
  br label %223

210:                                              ; preds = %199
  %211 = load i64, i64* %23, align 8
  %212 = call i32 @__pte(i64 %211)
  %213 = call i64 @pte_pfn(i32 %212)
  %214 = load i64, i64* @PAGE_SHIFT, align 8
  %215 = shl i64 %213, %214
  store i64 %215, i64* %22, align 8
  %216 = load i32, i32* %20, align 4
  %217 = load i64, i64* %30, align 8
  %218 = trunc i64 %217 to i32
  %219 = shl i32 %216, %218
  %220 = zext i32 %219 to i64
  %221 = load i64, i64* %22, align 8
  %222 = add i64 %221, %220
  store i64 %222, i64* %22, align 8
  br label %223

223:                                              ; preds = %210, %204
  %224 = load i64, i64* %26, align 8
  %225 = load i64, i64* %30, align 8
  %226 = load i32, i32* %16, align 4
  %227 = call i64 @hpt_hash(i64 %224, i64 %225, i32 %226)
  store i64 %227, i64* %27, align 8
  br label %228

228:                                              ; preds = %307, %223
  %229 = load i64, i64* %27, align 8
  %230 = load i64, i64* @htab_hash_mask, align 8
  %231 = and i64 %229, %230
  %232 = load i64, i64* @HPTES_PER_GROUP, align 8
  %233 = mul i64 %231, %232
  store i64 %233, i64* %19, align 8
  %234 = load i64 (i64, i64, i64, i64, i32, i64, i64, i32)*, i64 (i64, i64, i64, i64, i32, i64, i64, i32)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mmu_hash_ops, i32 0, i32 1), align 8
  %235 = load i64, i64* %19, align 8
  %236 = load i64, i64* %26, align 8
  %237 = load i64, i64* %22, align 8
  %238 = load i64, i64* %21, align 8
  %239 = load i64, i64* @MMU_PAGE_4K, align 8
  %240 = load i64, i64* @MMU_PAGE_4K, align 8
  %241 = load i32, i32* %16, align 4
  %242 = call i64 %234(i64 %235, i64 %236, i64 %237, i64 %238, i32 0, i64 %239, i64 %240, i32 %241)
  store i64 %242, i64* %28, align 8
  %243 = load i64, i64* %28, align 8
  %244 = icmp eq i64 %243, -1
  %245 = zext i1 %244 to i32
  %246 = call i64 @unlikely(i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %312

248:                                              ; preds = %228
  %249 = load i64, i64* %27, align 8
  %250 = xor i64 %249, -1
  %251 = load i64, i64* @htab_hash_mask, align 8
  %252 = and i64 %250, %251
  %253 = load i64, i64* @HPTES_PER_GROUP, align 8
  %254 = mul i64 %252, %253
  store i64 %254, i64* %19, align 8
  %255 = load i64 (i64, i64, i64, i64, i32, i64, i64, i32)*, i64 (i64, i64, i64, i64, i32, i64, i64, i32)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mmu_hash_ops, i32 0, i32 1), align 8
  %256 = load i64, i64* %19, align 8
  %257 = load i64, i64* %26, align 8
  %258 = load i64, i64* %22, align 8
  %259 = load i64, i64* %21, align 8
  %260 = load i32, i32* @HPTE_V_SECONDARY, align 4
  %261 = load i64, i64* @MMU_PAGE_4K, align 8
  %262 = load i64, i64* @MMU_PAGE_4K, align 8
  %263 = load i32, i32* %16, align 4
  %264 = call i64 %255(i64 %256, i64 %257, i64 %258, i64 %259, i32 %260, i64 %261, i64 %262, i32 %263)
  store i64 %264, i64* %28, align 8
  %265 = load i64, i64* %28, align 8
  %266 = call i32 @hpte_soft_invalid(i64 %265)
  store i32 %266, i32* %34, align 4
  %267 = load i32, i32* %34, align 4
  %268 = call i64 @unlikely(i32 %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %283

270:                                              ; preds = %248
  %271 = load i64, i64* %28, align 8
  %272 = load i64, i64* @_PTEIDX_GROUP_IX, align 8
  %273 = and i64 %271, %272
  store i64 %273, i64* %29, align 8
  %274 = load i32 (i64, i64, i64, i64, i32, i32)*, i32 (i64, i64, i64, i64, i32, i32)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mmu_hash_ops, i32 0, i32 3), align 8
  %275 = load i64, i64* %19, align 8
  %276 = load i64, i64* %29, align 8
  %277 = add i64 %275, %276
  %278 = load i64, i64* %26, align 8
  %279 = load i64, i64* @MMU_PAGE_4K, align 8
  %280 = load i64, i64* @MMU_PAGE_4K, align 8
  %281 = load i32, i32* %16, align 4
  %282 = call i32 %274(i64 %277, i64 %278, i64 %279, i64 %280, i32 %281, i32 0)
  br label %283

283:                                              ; preds = %270, %248
  %284 = load i64, i64* %28, align 8
  %285 = icmp eq i64 %284, -1
  br i1 %285, label %289, label %286

286:                                              ; preds = %283
  %287 = load i32, i32* %34, align 4
  %288 = icmp ne i32 %287, 0
  br label %289

289:                                              ; preds = %286, %283
  %290 = phi i1 [ true, %283 ], [ %288, %286 ]
  %291 = zext i1 %290 to i32
  %292 = call i64 @unlikely(i32 %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %311

294:                                              ; preds = %289
  %295 = load i32, i32* %34, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %301, label %297

297:                                              ; preds = %294
  %298 = call i32 (...) @mftb()
  %299 = and i32 %298, 1
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %307

301:                                              ; preds = %297, %294
  %302 = load i64, i64* %27, align 8
  %303 = load i64, i64* @htab_hash_mask, align 8
  %304 = and i64 %302, %303
  %305 = load i64, i64* @HPTES_PER_GROUP, align 8
  %306 = mul i64 %304, %305
  store i64 %306, i64* %19, align 8
  br label %307

307:                                              ; preds = %301, %297
  %308 = load i32 (i64)*, i32 (i64)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @mmu_hash_ops, i32 0, i32 2), align 8
  %309 = load i64, i64* %19, align 8
  %310 = call i32 %308(i64 %309)
  br label %228

311:                                              ; preds = %289
  br label %312

312:                                              ; preds = %311, %228
  %313 = load i64, i64* %28, align 8
  %314 = icmp eq i64 %313, -2
  %315 = zext i1 %314 to i32
  %316 = call i64 @unlikely(i32 %315)
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %331

318:                                              ; preds = %312
  %319 = load i64, i64* %23, align 8
  %320 = call i32 @__pte(i64 %319)
  %321 = load i32*, i32** %13, align 8
  store i32 %320, i32* %321, align 4
  %322 = load i64, i64* %10, align 8
  %323 = load i64, i64* %11, align 8
  %324 = load i64, i64* %12, align 8
  %325 = load i64, i64* %14, align 8
  %326 = load i32, i32* %16, align 4
  %327 = load i64, i64* @MMU_PAGE_4K, align 8
  %328 = load i64, i64* @MMU_PAGE_4K, align 8
  %329 = load i64, i64* %23, align 8
  %330 = call i32 @hash_failure_debug(i64 %322, i64 %323, i64 %324, i64 %325, i32 %326, i64 %327, i64 %328, i64 %329)
  store i32 -1, i32* %9, align 4
  br label %350

331:                                              ; preds = %312
  %332 = load i32*, i32** %13, align 8
  %333 = load i32, i32* %20, align 4
  %334 = load i64, i64* %28, align 8
  %335 = load i32, i32* @PTRS_PER_PTE, align 4
  %336 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = call i64 @pte_set_hidx(i32* %332, i32 %337, i32 %333, i64 %334, i32 %335)
  %339 = load i64, i64* %24, align 8
  %340 = or i64 %339, %338
  store i64 %340, i64* %24, align 8
  %341 = load i64, i64* @H_PAGE_HASHPTE, align 8
  %342 = load i64, i64* %24, align 8
  %343 = or i64 %342, %341
  store i64 %343, i64* %24, align 8
  %344 = load i64, i64* %24, align 8
  %345 = load i64, i64* @H_PAGE_BUSY, align 8
  %346 = xor i64 %345, -1
  %347 = and i64 %344, %346
  %348 = call i32 @__pte(i64 %347)
  %349 = load i32*, i32** %13, align 8
  store i32 %348, i32* %349, align 4
  store i32 0, i32* %9, align 4
  br label %350

350:                                              ; preds = %331, %318, %183, %62, %52
  %351 = load i32, i32* %9, align 4
  ret i32 %351
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @pte_val(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @check_pte_access(i64, i64) #1

declare dso_local i32 @pte_xchg(i32*, i32, i32) #1

declare dso_local i32 @__pte(i64) #1

declare dso_local i64 @htab_convert_pte_flags(i64) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i64 @hash_page_do_lazy_icache(i64, i32, i64) #1

declare dso_local i64 @hpt_vpn(i64, i64, i32) #1

declare dso_local i32 @__real_pte(i32, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @flush_hash_page(i64, i32, i32, i32, i64) #1

declare dso_local i64 @__rpte_sub_valid(i32, i32) #1

declare dso_local i64 @pte_get_hash_gslot(i64, i64, i32, i32, i32) #1

declare dso_local i64 @pte_pfn(i32) #1

declare dso_local i64 @hpt_hash(i64, i64, i32) #1

declare dso_local i32 @hpte_soft_invalid(i64) #1

declare dso_local i32 @mftb(...) #1

declare dso_local i32 @hash_failure_debug(i64, i64, i64, i64, i32, i64, i64, i64) #1

declare dso_local i64 @pte_set_hidx(i32*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
