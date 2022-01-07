; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_hugepage.c___hash_page_thp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_hugepage.c___hash_page_thp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 (i64, i64, i64, i32, i32, i32, i64)*, i64 (i64, i64, i64, i64, i32, i32, i32, i32)*, i32 (i64)* }

@MMU_PAGE_16M = common dso_local global i32 0, align 4
@H_PAGE_BUSY = common dso_local global i64 0, align 8
@_PAGE_ACCESSED = common dso_local global i64 0, align 8
@_PAGE_WRITE = common dso_local global i64 0, align 8
@_PAGE_DIRTY = common dso_local global i64 0, align 8
@H_PAGE_THP_HUGE = common dso_local global i64 0, align 8
@_PAGE_DEVMAP = common dso_local global i64 0, align 8
@mmu_psize_defs = common dso_local global %struct.TYPE_3__* null, align 8
@HPAGE_PMD_MASK = common dso_local global i64 0, align 8
@PTE_FRAG_SIZE = common dso_local global i32 0, align 4
@MMU_PAGE_4K = common dso_local global i32 0, align 4
@H_PAGE_HASHPTE = common dso_local global i64 0, align 8
@H_PAGE_COMBO = common dso_local global i64 0, align 8
@MMU_PAGE_64K = common dso_local global i32 0, align 4
@_PTEIDX_SECONDARY = common dso_local global i64 0, align 8
@htab_hash_mask = common dso_local global i64 0, align 8
@HPTES_PER_GROUP = common dso_local global i64 0, align 8
@_PTEIDX_GROUP_IX = common dso_local global i64 0, align 8
@mmu_hash_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@HPTE_V_SECONDARY = common dso_local global i32 0, align 4
@CPU_FTR_COHERENT_ICACHE = common dso_local global i32 0, align 4
@old_pte = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__hash_page_thp(i64 %0, i64 %1, i64 %2, i32* %3, i64 %4, i64 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  store i64 %0, i64* %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i32* %3, i32** %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %34 = load i32, i32* @MMU_PAGE_16M, align 4
  store i32 %34, i32* %27, align 4
  br label %35

35:                                               ; preds = %73, %8
  %36 = load i32*, i32** %13, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @READ_ONCE(i32 %37)
  store i32 %38, i32* %32, align 4
  %39 = load i32, i32* %32, align 4
  %40 = call i64 @pmd_val(i32 %39)
  store i64 %40, i64* %24, align 8
  %41 = load i64, i64* %24, align 8
  %42 = load i64, i64* @H_PAGE_BUSY, align 8
  %43 = and i64 %41, %42
  %44 = trunc i64 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  br label %301

48:                                               ; preds = %35
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %24, align 8
  %51 = call i32 @check_pte_access(i64 %49, i64 %50)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store i32 1, i32* %9, align 4
  br label %301

58:                                               ; preds = %48
  %59 = load i64, i64* %24, align 8
  %60 = load i64, i64* @H_PAGE_BUSY, align 8
  %61 = or i64 %59, %60
  %62 = load i64, i64* @_PAGE_ACCESSED, align 8
  %63 = or i64 %61, %62
  store i64 %63, i64* %25, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* @_PAGE_WRITE, align 8
  %66 = and i64 %64, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = load i64, i64* @_PAGE_DIRTY, align 8
  %70 = load i64, i64* %25, align 8
  %71 = or i64 %70, %69
  store i64 %71, i64* %25, align 8
  br label %72

72:                                               ; preds = %68, %58
  br label %73

73:                                               ; preds = %72
  %74 = load i32*, i32** %13, align 8
  %75 = load i64, i64* %24, align 8
  %76 = call i32 @__pmd(i64 %75)
  %77 = load i64, i64* %25, align 8
  %78 = call i32 @__pmd(i64 %77)
  %79 = call i32 @pmd_xchg(i32* %74, i32 %76, i32 %78)
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  br i1 %81, label %35, label %82

82:                                               ; preds = %73
  %83 = load i64, i64* %24, align 8
  %84 = load i64, i64* @H_PAGE_THP_HUGE, align 8
  %85 = load i64, i64* @_PAGE_DEVMAP, align 8
  %86 = or i64 %84, %85
  %87 = and i64 %83, %86
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %82
  store i32 0, i32* %9, align 4
  br label %301

90:                                               ; preds = %82
  %91 = load i64, i64* %25, align 8
  %92 = call i64 @htab_convert_pte_flags(i64 %91)
  store i64 %92, i64* %21, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mmu_psize_defs, align 8
  %94 = load i32, i32* %17, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %30, align 8
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %101 = xor i64 %100, -1
  %102 = and i64 %99, %101
  %103 = load i64, i64* %30, align 8
  %104 = lshr i64 %102, %103
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %18, align 4
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* @PTE_FRAG_SIZE, align 4
  %108 = icmp uge i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @BUG_ON(i32 %109)
  %111 = load i64, i64* %10, align 8
  %112 = load i64, i64* %12, align 8
  %113 = load i32, i32* %16, align 4
  %114 = call i64 @hpt_vpn(i64 %111, i64 %112, i32 %113)
  store i64 %114, i64* %28, align 8
  %115 = load i32*, i32** %13, align 8
  %116 = call i8* @get_hpte_slot_array(i32* %115)
  store i8* %116, i8** %20, align 8
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* @MMU_PAGE_4K, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %142

120:                                              ; preds = %90
  %121 = load i64, i64* %24, align 8
  %122 = load i64, i64* @H_PAGE_HASHPTE, align 8
  %123 = and i64 %121, %122
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %120
  %126 = load i64, i64* %24, align 8
  %127 = load i64, i64* @H_PAGE_COMBO, align 8
  %128 = and i64 %126, %127
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %141, label %130

130:                                              ; preds = %125
  %131 = load i64, i64* %12, align 8
  %132 = load i64, i64* %10, align 8
  %133 = load i32*, i32** %13, align 8
  %134 = load i32, i32* @MMU_PAGE_64K, align 4
  %135 = load i32, i32* %16, align 4
  %136 = load i64, i64* %15, align 8
  %137 = call i32 @flush_hash_hugepage(i64 %131, i64 %132, i32* %133, i32 %134, i32 %135, i64 %136)
  %138 = load i8*, i8** %20, align 8
  %139 = load i32, i32* @PTE_FRAG_SIZE, align 4
  %140 = call i32 @memset(i8* %138, i32 0, i32 %139)
  br label %141

141:                                              ; preds = %130, %125, %120
  br label %142

142:                                              ; preds = %141, %90
  %143 = load i8*, i8** %20, align 8
  %144 = load i32, i32* %18, align 4
  %145 = call i32 @hpte_valid(i8* %143, i32 %144)
  store i32 %145, i32* %19, align 4
  %146 = load i32, i32* %19, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %191

148:                                              ; preds = %142
  %149 = load i64, i64* %28, align 8
  %150 = load i64, i64* %30, align 8
  %151 = load i32, i32* %16, align 4
  %152 = call i64 @hpt_hash(i64 %149, i64 %150, i32 %151)
  store i64 %152, i64* %29, align 8
  %153 = load i8*, i8** %20, align 8
  %154 = load i32, i32* %18, align 4
  %155 = call i64 @hpte_hash_index(i8* %153, i32 %154)
  store i64 %155, i64* %23, align 8
  %156 = load i64, i64* %23, align 8
  %157 = load i64, i64* @_PTEIDX_SECONDARY, align 8
  %158 = and i64 %156, %157
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %148
  %161 = load i64, i64* %29, align 8
  %162 = xor i64 %161, -1
  store i64 %162, i64* %29, align 8
  br label %163

163:                                              ; preds = %160, %148
  %164 = load i64, i64* %29, align 8
  %165 = load i64, i64* @htab_hash_mask, align 8
  %166 = and i64 %164, %165
  %167 = load i64, i64* @HPTES_PER_GROUP, align 8
  %168 = mul i64 %166, %167
  store i64 %168, i64* %31, align 8
  %169 = load i64, i64* %23, align 8
  %170 = load i64, i64* @_PTEIDX_GROUP_IX, align 8
  %171 = and i64 %169, %170
  %172 = load i64, i64* %31, align 8
  %173 = add i64 %172, %171
  store i64 %173, i64* %31, align 8
  %174 = load i32 (i64, i64, i64, i32, i32, i32, i64)*, i32 (i64, i64, i64, i32, i32, i32, i64)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mmu_hash_ops, i32 0, i32 0), align 8
  %175 = load i64, i64* %31, align 8
  %176 = load i64, i64* %21, align 8
  %177 = load i64, i64* %28, align 8
  %178 = load i32, i32* %17, align 4
  %179 = load i32, i32* %27, align 4
  %180 = load i32, i32* %16, align 4
  %181 = load i64, i64* %15, align 8
  %182 = call i32 %174(i64 %175, i64 %176, i64 %177, i32 %178, i32 %179, i32 %180, i64 %181)
  store i32 %182, i32* %26, align 4
  %183 = load i32, i32* %26, align 4
  %184 = icmp eq i32 %183, -1
  br i1 %184, label %185, label %190

185:                                              ; preds = %163
  store i32 0, i32* %19, align 4
  %186 = load i8*, i8** %20, align 8
  %187 = load i32, i32* %18, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  store i8 0, i8* %189, align 1
  br label %190

190:                                              ; preds = %185, %163
  br label %191

191:                                              ; preds = %190, %142
  %192 = load i32, i32* %19, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %285, label %194

194:                                              ; preds = %191
  %195 = load i64, i64* %28, align 8
  %196 = load i64, i64* %30, align 8
  %197 = load i32, i32* %16, align 4
  %198 = call i64 @hpt_hash(i64 %195, i64 %196, i32 %197)
  store i64 %198, i64* %29, align 8
  %199 = load i64, i64* %24, align 8
  %200 = call i32 @__pmd(i64 %199)
  %201 = call i64 @pmd_pfn(i32 %200)
  %202 = load i64, i64* @PAGE_SHIFT, align 8
  %203 = shl i64 %201, %202
  store i64 %203, i64* %22, align 8
  %204 = load i64, i64* @H_PAGE_HASHPTE, align 8
  %205 = load i64, i64* %25, align 8
  %206 = or i64 %205, %204
  store i64 %206, i64* %25, align 8
  br label %207

207:                                              ; preds = %256, %194
  %208 = load i64, i64* %29, align 8
  %209 = load i64, i64* @htab_hash_mask, align 8
  %210 = and i64 %208, %209
  %211 = load i64, i64* @HPTES_PER_GROUP, align 8
  %212 = mul i64 %210, %211
  store i64 %212, i64* %33, align 8
  %213 = load i64 (i64, i64, i64, i64, i32, i32, i32, i32)*, i64 (i64, i64, i64, i64, i32, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mmu_hash_ops, i32 0, i32 1), align 8
  %214 = load i64, i64* %33, align 8
  %215 = load i64, i64* %28, align 8
  %216 = load i64, i64* %22, align 8
  %217 = load i64, i64* %21, align 8
  %218 = load i32, i32* %17, align 4
  %219 = load i32, i32* %27, align 4
  %220 = load i32, i32* %16, align 4
  %221 = call i64 %213(i64 %214, i64 %215, i64 %216, i64 %217, i32 0, i32 %218, i32 %219, i32 %220)
  store i64 %221, i64* %31, align 8
  %222 = load i64, i64* %31, align 8
  %223 = icmp eq i64 %222, -1
  %224 = zext i1 %223 to i32
  %225 = call i64 @unlikely(i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %261

227:                                              ; preds = %207
  %228 = load i64, i64* %29, align 8
  %229 = xor i64 %228, -1
  %230 = load i64, i64* @htab_hash_mask, align 8
  %231 = and i64 %229, %230
  %232 = load i64, i64* @HPTES_PER_GROUP, align 8
  %233 = mul i64 %231, %232
  store i64 %233, i64* %33, align 8
  %234 = load i64 (i64, i64, i64, i64, i32, i32, i32, i32)*, i64 (i64, i64, i64, i64, i32, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mmu_hash_ops, i32 0, i32 1), align 8
  %235 = load i64, i64* %33, align 8
  %236 = load i64, i64* %28, align 8
  %237 = load i64, i64* %22, align 8
  %238 = load i64, i64* %21, align 8
  %239 = load i32, i32* @HPTE_V_SECONDARY, align 4
  %240 = load i32, i32* %17, align 4
  %241 = load i32, i32* %27, align 4
  %242 = load i32, i32* %16, align 4
  %243 = call i64 %234(i64 %235, i64 %236, i64 %237, i64 %238, i32 %239, i32 %240, i32 %241, i32 %242)
  store i64 %243, i64* %31, align 8
  %244 = load i64, i64* %31, align 8
  %245 = icmp eq i64 %244, -1
  br i1 %245, label %246, label %260

246:                                              ; preds = %227
  %247 = call i32 (...) @mftb()
  %248 = and i32 %247, 1
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %256

250:                                              ; preds = %246
  %251 = load i64, i64* %29, align 8
  %252 = load i64, i64* @htab_hash_mask, align 8
  %253 = and i64 %251, %252
  %254 = load i64, i64* @HPTES_PER_GROUP, align 8
  %255 = mul i64 %253, %254
  store i64 %255, i64* %33, align 8
  br label %256

256:                                              ; preds = %250, %246
  %257 = load i32 (i64)*, i32 (i64)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mmu_hash_ops, i32 0, i32 2), align 8
  %258 = load i64, i64* %33, align 8
  %259 = call i32 %257(i64 %258)
  br label %207

260:                                              ; preds = %227
  br label %261

261:                                              ; preds = %260, %207
  %262 = load i64, i64* %31, align 8
  %263 = icmp eq i64 %262, -2
  %264 = zext i1 %263 to i32
  %265 = call i64 @unlikely(i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %280

267:                                              ; preds = %261
  %268 = load i64, i64* %24, align 8
  %269 = call i32 @__pmd(i64 %268)
  %270 = load i32*, i32** %13, align 8
  store i32 %269, i32* %270, align 4
  %271 = load i64, i64* %10, align 8
  %272 = load i64, i64* %11, align 8
  %273 = load i64, i64* %12, align 8
  %274 = load i64, i64* %14, align 8
  %275 = load i32, i32* %16, align 4
  %276 = load i32, i32* %17, align 4
  %277 = load i32, i32* %27, align 4
  %278 = load i64, i64* %24, align 8
  %279 = call i32 @hash_failure_debug(i64 %271, i64 %272, i64 %273, i64 %274, i32 %275, i32 %276, i32 %277, i64 %278)
  store i32 -1, i32* %9, align 4
  br label %301

280:                                              ; preds = %261
  %281 = load i8*, i8** %20, align 8
  %282 = load i32, i32* %18, align 4
  %283 = load i64, i64* %31, align 8
  %284 = call i32 @mark_hpte_slot_valid(i8* %281, i32 %282, i64 %283)
  br label %285

285:                                              ; preds = %280, %191
  %286 = load i32, i32* %17, align 4
  %287 = load i32, i32* @MMU_PAGE_4K, align 4
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %289, label %293

289:                                              ; preds = %285
  %290 = load i64, i64* @H_PAGE_COMBO, align 8
  %291 = load i64, i64* %25, align 8
  %292 = or i64 %291, %290
  store i64 %292, i64* %25, align 8
  br label %293

293:                                              ; preds = %289, %285
  %294 = call i32 (...) @smp_wmb()
  %295 = load i64, i64* %25, align 8
  %296 = load i64, i64* @H_PAGE_BUSY, align 8
  %297 = xor i64 %296, -1
  %298 = and i64 %295, %297
  %299 = call i32 @__pmd(i64 %298)
  %300 = load i32*, i32** %13, align 8
  store i32 %299, i32* %300, align 4
  store i32 0, i32* %9, align 4
  br label %301

301:                                              ; preds = %293, %267, %89, %57, %47
  %302 = load i32, i32* %9, align 4
  ret i32 %302
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @pmd_val(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @check_pte_access(i64, i64) #1

declare dso_local i32 @pmd_xchg(i32*, i32, i32) #1

declare dso_local i32 @__pmd(i64) #1

declare dso_local i64 @htab_convert_pte_flags(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @hpt_vpn(i64, i64, i32) #1

declare dso_local i8* @get_hpte_slot_array(i32*) #1

declare dso_local i32 @flush_hash_hugepage(i64, i64, i32*, i32, i32, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @hpte_valid(i8*, i32) #1

declare dso_local i64 @hpt_hash(i64, i64, i32) #1

declare dso_local i64 @hpte_hash_index(i8*, i32) #1

declare dso_local i64 @pmd_pfn(i32) #1

declare dso_local i32 @mftb(...) #1

declare dso_local i32 @hash_failure_debug(i64, i64, i64, i64, i32, i32, i32, i64) #1

declare dso_local i32 @mark_hpte_slot_valid(i8*, i32, i64) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
