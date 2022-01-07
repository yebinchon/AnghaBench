; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_kvmppc_create_pte.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_kvmppc_create_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, i32 }
%struct.rmap_nested = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PUD_MASK = common dso_local global i64 0, align 8
@PTE_BITS_MUST_MATCH = common dso_local global i32 0, align 4
@PUD_SHIFT = common dso_local global i32 0, align 4
@PMD_MASK = common dso_local global i64 0, align 8
@PMD_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_create_pte(%struct.kvm* %0, i32* %1, i32 %2, i64 %3, i32 %4, i64 %5, i32 %6, i64* %7, %struct.rmap_nested** %8) #0 {
  %10 = alloca %struct.kvm*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca %struct.rmap_nested**, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store i64* %7, i64** %17, align 8
  store %struct.rmap_nested** %8, %struct.rmap_nested*** %18, align 8
  store i32* null, i32** %21, align 8
  store i32* null, i32** %23, align 8
  store i32* null, i32** %25, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load i64, i64* %13, align 8
  %31 = call i32 @pgd_index(i64 %30)
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  store i32* %33, i32** %19, align 8
  store i32* null, i32** %20, align 8
  %34 = load i32*, i32** %19, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @pgd_present(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %9
  %39 = load i32*, i32** %19, align 8
  %40 = load i64, i64* %13, align 8
  %41 = call i32* @pud_offset(i32* %39, i64 %40)
  store i32* %41, i32** %20, align 8
  br label %48

42:                                               ; preds = %9
  %43 = load %struct.kvm*, %struct.kvm** %10, align 8
  %44 = getelementptr inbounds %struct.kvm, %struct.kvm* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %13, align 8
  %47 = call i32* @pud_alloc_one(i32 %45, i64 %46)
  store i32* %47, i32** %21, align 8
  br label %48

48:                                               ; preds = %42, %38
  store i32* null, i32** %22, align 8
  %49 = load i32*, i32** %20, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %65

51:                                               ; preds = %48
  %52 = load i32*, i32** %20, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @pud_present(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load i32*, i32** %20, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @pud_is_leaf(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load i32*, i32** %20, align 8
  %63 = load i64, i64* %13, align 8
  %64 = call i32* @pmd_offset(i32* %62, i64 %63)
  store i32* %64, i32** %22, align 8
  br label %71

65:                                               ; preds = %56, %51, %48
  %66 = load i32, i32* %14, align 4
  %67 = icmp ule i32 %66, 1
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i32* (...) @kvmppc_pmd_alloc()
  store i32* %69, i32** %23, align 8
  br label %70

70:                                               ; preds = %68, %65
  br label %71

71:                                               ; preds = %70, %61
  %72 = load i32, i32* %14, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %71
  %75 = load i32*, i32** %22, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  %78 = load i32*, i32** %22, align 8
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @pmd_present(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load i32*, i32** %22, align 8
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @pmd_is_leaf(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82, %77, %74
  %88 = call i32* (...) @kvmppc_pte_alloc()
  store i32* %88, i32** %25, align 8
  br label %89

89:                                               ; preds = %87, %82, %71
  %90 = load %struct.kvm*, %struct.kvm** %10, align 8
  %91 = getelementptr inbounds %struct.kvm, %struct.kvm* %90, i32 0, i32 1
  %92 = call i32 @spin_lock(i32* %91)
  %93 = load i32, i32* @EAGAIN, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %26, align 4
  %95 = load %struct.kvm*, %struct.kvm** %10, align 8
  %96 = load i64, i64* %15, align 8
  %97 = call i64 @mmu_notifier_retry(%struct.kvm* %95, i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  br label %368

100:                                              ; preds = %89
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %26, align 4
  %103 = load i32*, i32** %19, align 8
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @pgd_none(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %100
  %108 = load i32*, i32** %21, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  br label %368

111:                                              ; preds = %107
  %112 = load %struct.kvm*, %struct.kvm** %10, align 8
  %113 = getelementptr inbounds %struct.kvm, %struct.kvm* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %19, align 8
  %116 = load i32*, i32** %21, align 8
  %117 = call i32 @pgd_populate(i32 %114, i32* %115, i32* %116)
  store i32* null, i32** %21, align 8
  br label %118

118:                                              ; preds = %111, %100
  %119 = load i32*, i32** %19, align 8
  %120 = load i64, i64* %13, align 8
  %121 = call i32* @pud_offset(i32* %119, i64 %120)
  store i32* %121, i32** %20, align 8
  %122 = load i32*, i32** %20, align 8
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @pud_is_leaf(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %170

126:                                              ; preds = %118
  %127 = load i64, i64* %13, align 8
  %128 = load i64, i64* @PUD_MASK, align 8
  %129 = and i64 %127, %128
  store i64 %129, i64* %27, align 8
  %130 = load i32, i32* %14, align 4
  %131 = icmp eq i32 %130, 2
  br i1 %131, label %132, label %157

132:                                              ; preds = %126
  %133 = load i32*, i32** %20, align 8
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @pud_raw(i32 %134)
  %136 = load i32, i32* %12, align 4
  %137 = call i64 @pte_raw(i32 %136)
  %138 = icmp eq i64 %135, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  store i32 0, i32* %26, align 4
  br label %368

140:                                              ; preds = %132
  %141 = load i32*, i32** %20, align 8
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @pud_val(i32 %142)
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @pte_val(i32 %144)
  %146 = xor i32 %143, %145
  %147 = load i32, i32* @PTE_BITS_MUST_MATCH, align 4
  %148 = and i32 %146, %147
  %149 = call i32 @WARN_ON_ONCE(i32 %148)
  %150 = load %struct.kvm*, %struct.kvm** %10, align 8
  %151 = load i32*, i32** %20, align 8
  %152 = load i32, i32* %12, align 4
  %153 = call i32 @pte_val(i32 %152)
  %154 = load i64, i64* %27, align 8
  %155 = load i32, i32* @PUD_SHIFT, align 4
  %156 = call i32 @kvmppc_radix_update_pte(%struct.kvm* %150, i32* %151, i32 0, i32 %153, i64 %154, i32 %155)
  store i32 0, i32* %26, align 4
  br label %368

157:                                              ; preds = %126
  %158 = load i32*, i32** %23, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %163, label %160

160:                                              ; preds = %157
  %161 = load i32, i32* @EAGAIN, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %26, align 4
  br label %368

163:                                              ; preds = %157
  %164 = load %struct.kvm*, %struct.kvm** %10, align 8
  %165 = load i32*, i32** %20, align 8
  %166 = load i64, i64* %27, align 8
  %167 = load i32, i32* @PUD_SHIFT, align 4
  %168 = load i32, i32* %16, align 4
  %169 = call i32 @kvmppc_unmap_pte(%struct.kvm* %164, i32* %165, i64 %166, i32 %167, i32* null, i32 %168)
  br label %170

170:                                              ; preds = %163, %118
  %171 = load i32, i32* %14, align 4
  %172 = icmp eq i32 %171, 2
  br i1 %172, label %173, label %201

173:                                              ; preds = %170
  %174 = load i32*, i32** %20, align 8
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @pud_none(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %184, label %178

178:                                              ; preds = %173
  %179 = load %struct.kvm*, %struct.kvm** %10, align 8
  %180 = load i32*, i32** %20, align 8
  %181 = load i64, i64* %13, align 8
  %182 = load i32, i32* %16, align 4
  %183 = call i32 @kvmppc_unmap_free_pud_entry_table(%struct.kvm* %179, i32* %180, i64 %181, i32 %182)
  br label %184

184:                                              ; preds = %178, %173
  %185 = load %struct.kvm*, %struct.kvm** %10, align 8
  %186 = load i64, i64* %13, align 8
  %187 = load i32*, i32** %20, align 8
  %188 = load i32, i32* %12, align 4
  %189 = call i32 @kvmppc_radix_set_pte_at(%struct.kvm* %185, i64 %186, i32* %187, i32 %188)
  %190 = load i64*, i64** %17, align 8
  %191 = icmp ne i64* %190, null
  br i1 %191, label %192, label %200

192:                                              ; preds = %184
  %193 = load %struct.rmap_nested**, %struct.rmap_nested*** %18, align 8
  %194 = icmp ne %struct.rmap_nested** %193, null
  br i1 %194, label %195, label %200

195:                                              ; preds = %192
  %196 = load %struct.kvm*, %struct.kvm** %10, align 8
  %197 = load i64*, i64** %17, align 8
  %198 = load %struct.rmap_nested**, %struct.rmap_nested*** %18, align 8
  %199 = call i32 @kvmhv_insert_nest_rmap(%struct.kvm* %196, i64* %197, %struct.rmap_nested** %198)
  br label %200

200:                                              ; preds = %195, %192, %184
  store i32 0, i32* %26, align 4
  br label %368

201:                                              ; preds = %170
  %202 = load i32*, i32** %20, align 8
  %203 = load i32, i32* %202, align 4
  %204 = call i64 @pud_none(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %217

206:                                              ; preds = %201
  %207 = load i32*, i32** %23, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %210, label %209

209:                                              ; preds = %206
  br label %368

210:                                              ; preds = %206
  %211 = load %struct.kvm*, %struct.kvm** %10, align 8
  %212 = getelementptr inbounds %struct.kvm, %struct.kvm* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32*, i32** %20, align 8
  %215 = load i32*, i32** %23, align 8
  %216 = call i32 @pud_populate(i32 %213, i32* %214, i32* %215)
  store i32* null, i32** %23, align 8
  br label %217

217:                                              ; preds = %210, %201
  %218 = load i32*, i32** %20, align 8
  %219 = load i64, i64* %13, align 8
  %220 = call i32* @pmd_offset(i32* %218, i64 %219)
  store i32* %220, i32** %22, align 8
  %221 = load i32*, i32** %22, align 8
  %222 = load i32, i32* %221, align 4
  %223 = call i64 @pmd_is_leaf(i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %271

225:                                              ; preds = %217
  %226 = load i64, i64* %13, align 8
  %227 = load i64, i64* @PMD_MASK, align 8
  %228 = and i64 %226, %227
  store i64 %228, i64* %28, align 8
  %229 = load i32, i32* %14, align 4
  %230 = icmp eq i32 %229, 1
  br i1 %230, label %231, label %257

231:                                              ; preds = %225
  %232 = load i32*, i32** %22, align 8
  %233 = load i32, i32* %232, align 4
  %234 = call i64 @pmd_raw(i32 %233)
  %235 = load i32, i32* %12, align 4
  %236 = call i64 @pte_raw(i32 %235)
  %237 = icmp eq i64 %234, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %231
  store i32 0, i32* %26, align 4
  br label %368

239:                                              ; preds = %231
  %240 = load i32*, i32** %22, align 8
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @pmd_val(i32 %241)
  %243 = load i32, i32* %12, align 4
  %244 = call i32 @pte_val(i32 %243)
  %245 = xor i32 %242, %244
  %246 = load i32, i32* @PTE_BITS_MUST_MATCH, align 4
  %247 = and i32 %245, %246
  %248 = call i32 @WARN_ON_ONCE(i32 %247)
  %249 = load %struct.kvm*, %struct.kvm** %10, align 8
  %250 = load i32*, i32** %22, align 8
  %251 = call i32* @pmdp_ptep(i32* %250)
  %252 = load i32, i32* %12, align 4
  %253 = call i32 @pte_val(i32 %252)
  %254 = load i64, i64* %28, align 8
  %255 = load i32, i32* @PMD_SHIFT, align 4
  %256 = call i32 @kvmppc_radix_update_pte(%struct.kvm* %249, i32* %251, i32 0, i32 %253, i64 %254, i32 %255)
  store i32 0, i32* %26, align 4
  br label %368

257:                                              ; preds = %225
  %258 = load i32*, i32** %25, align 8
  %259 = icmp ne i32* %258, null
  br i1 %259, label %263, label %260

260:                                              ; preds = %257
  %261 = load i32, i32* @EAGAIN, align 4
  %262 = sub nsw i32 0, %261
  store i32 %262, i32* %26, align 4
  br label %368

263:                                              ; preds = %257
  %264 = load %struct.kvm*, %struct.kvm** %10, align 8
  %265 = load i32*, i32** %22, align 8
  %266 = call i32* @pmdp_ptep(i32* %265)
  %267 = load i64, i64* %28, align 8
  %268 = load i32, i32* @PMD_SHIFT, align 4
  %269 = load i32, i32* %16, align 4
  %270 = call i32 @kvmppc_unmap_pte(%struct.kvm* %264, i32* %266, i64 %267, i32 %268, i32* null, i32 %269)
  br label %271

271:                                              ; preds = %263, %217
  %272 = load i32, i32* %14, align 4
  %273 = icmp eq i32 %272, 1
  br i1 %273, label %274, label %303

274:                                              ; preds = %271
  %275 = load i32*, i32** %22, align 8
  %276 = load i32, i32* %275, align 4
  %277 = call i64 @pmd_none(i32 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %285, label %279

279:                                              ; preds = %274
  %280 = load %struct.kvm*, %struct.kvm** %10, align 8
  %281 = load i32*, i32** %22, align 8
  %282 = load i64, i64* %13, align 8
  %283 = load i32, i32* %16, align 4
  %284 = call i32 @kvmppc_unmap_free_pmd_entry_table(%struct.kvm* %280, i32* %281, i64 %282, i32 %283)
  br label %285

285:                                              ; preds = %279, %274
  %286 = load %struct.kvm*, %struct.kvm** %10, align 8
  %287 = load i64, i64* %13, align 8
  %288 = load i32*, i32** %22, align 8
  %289 = call i32* @pmdp_ptep(i32* %288)
  %290 = load i32, i32* %12, align 4
  %291 = call i32 @kvmppc_radix_set_pte_at(%struct.kvm* %286, i64 %287, i32* %289, i32 %290)
  %292 = load i64*, i64** %17, align 8
  %293 = icmp ne i64* %292, null
  br i1 %293, label %294, label %302

294:                                              ; preds = %285
  %295 = load %struct.rmap_nested**, %struct.rmap_nested*** %18, align 8
  %296 = icmp ne %struct.rmap_nested** %295, null
  br i1 %296, label %297, label %302

297:                                              ; preds = %294
  %298 = load %struct.kvm*, %struct.kvm** %10, align 8
  %299 = load i64*, i64** %17, align 8
  %300 = load %struct.rmap_nested**, %struct.rmap_nested*** %18, align 8
  %301 = call i32 @kvmhv_insert_nest_rmap(%struct.kvm* %298, i64* %299, %struct.rmap_nested** %300)
  br label %302

302:                                              ; preds = %297, %294, %285
  store i32 0, i32* %26, align 4
  br label %368

303:                                              ; preds = %271
  %304 = load i32*, i32** %22, align 8
  %305 = load i32, i32* %304, align 4
  %306 = call i64 @pmd_none(i32 %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %319

308:                                              ; preds = %303
  %309 = load i32*, i32** %25, align 8
  %310 = icmp ne i32* %309, null
  br i1 %310, label %312, label %311

311:                                              ; preds = %308
  br label %368

312:                                              ; preds = %308
  %313 = load %struct.kvm*, %struct.kvm** %10, align 8
  %314 = getelementptr inbounds %struct.kvm, %struct.kvm* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = load i32*, i32** %22, align 8
  %317 = load i32*, i32** %25, align 8
  %318 = call i32 @pmd_populate(i32 %315, i32* %316, i32* %317)
  store i32* null, i32** %25, align 8
  br label %319

319:                                              ; preds = %312, %303
  %320 = load i32*, i32** %22, align 8
  %321 = load i64, i64* %13, align 8
  %322 = call i32* @pte_offset_kernel(i32* %320, i64 %321)
  store i32* %322, i32** %24, align 8
  %323 = load i32*, i32** %24, align 8
  %324 = load i32, i32* %323, align 4
  %325 = call i64 @pte_present(i32 %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %351

327:                                              ; preds = %319
  %328 = load i32*, i32** %24, align 8
  %329 = load i32, i32* %328, align 4
  %330 = call i64 @pte_raw(i32 %329)
  %331 = load i32, i32* %12, align 4
  %332 = call i64 @pte_raw(i32 %331)
  %333 = icmp eq i64 %330, %332
  br i1 %333, label %334, label %335

334:                                              ; preds = %327
  store i32 0, i32* %26, align 4
  br label %368

335:                                              ; preds = %327
  %336 = load i32*, i32** %24, align 8
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @pte_val(i32 %337)
  %339 = load i32, i32* %12, align 4
  %340 = call i32 @pte_val(i32 %339)
  %341 = xor i32 %338, %340
  %342 = load i32, i32* @PTE_BITS_MUST_MATCH, align 4
  %343 = and i32 %341, %342
  %344 = call i32 @WARN_ON_ONCE(i32 %343)
  %345 = load %struct.kvm*, %struct.kvm** %10, align 8
  %346 = load i32*, i32** %24, align 8
  %347 = load i32, i32* %12, align 4
  %348 = call i32 @pte_val(i32 %347)
  %349 = load i64, i64* %13, align 8
  %350 = call i32 @kvmppc_radix_update_pte(%struct.kvm* %345, i32* %346, i32 0, i32 %348, i64 %349, i32 0)
  store i32 0, i32* %26, align 4
  br label %368

351:                                              ; preds = %319
  %352 = load %struct.kvm*, %struct.kvm** %10, align 8
  %353 = load i64, i64* %13, align 8
  %354 = load i32*, i32** %24, align 8
  %355 = load i32, i32* %12, align 4
  %356 = call i32 @kvmppc_radix_set_pte_at(%struct.kvm* %352, i64 %353, i32* %354, i32 %355)
  %357 = load i64*, i64** %17, align 8
  %358 = icmp ne i64* %357, null
  br i1 %358, label %359, label %367

359:                                              ; preds = %351
  %360 = load %struct.rmap_nested**, %struct.rmap_nested*** %18, align 8
  %361 = icmp ne %struct.rmap_nested** %360, null
  br i1 %361, label %362, label %367

362:                                              ; preds = %359
  %363 = load %struct.kvm*, %struct.kvm** %10, align 8
  %364 = load i64*, i64** %17, align 8
  %365 = load %struct.rmap_nested**, %struct.rmap_nested*** %18, align 8
  %366 = call i32 @kvmhv_insert_nest_rmap(%struct.kvm* %363, i64* %364, %struct.rmap_nested** %365)
  br label %367

367:                                              ; preds = %362, %359, %351
  store i32 0, i32* %26, align 4
  br label %368

368:                                              ; preds = %367, %335, %334, %311, %302, %260, %239, %238, %209, %200, %160, %140, %139, %110, %99
  %369 = load %struct.kvm*, %struct.kvm** %10, align 8
  %370 = getelementptr inbounds %struct.kvm, %struct.kvm* %369, i32 0, i32 1
  %371 = call i32 @spin_unlock(i32* %370)
  %372 = load i32*, i32** %21, align 8
  %373 = icmp ne i32* %372, null
  br i1 %373, label %374, label %380

374:                                              ; preds = %368
  %375 = load %struct.kvm*, %struct.kvm** %10, align 8
  %376 = getelementptr inbounds %struct.kvm, %struct.kvm* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 4
  %378 = load i32*, i32** %21, align 8
  %379 = call i32 @pud_free(i32 %377, i32* %378)
  br label %380

380:                                              ; preds = %374, %368
  %381 = load i32*, i32** %23, align 8
  %382 = icmp ne i32* %381, null
  br i1 %382, label %383, label %386

383:                                              ; preds = %380
  %384 = load i32*, i32** %23, align 8
  %385 = call i32 @kvmppc_pmd_free(i32* %384)
  br label %386

386:                                              ; preds = %383, %380
  %387 = load i32*, i32** %25, align 8
  %388 = icmp ne i32* %387, null
  br i1 %388, label %389, label %392

389:                                              ; preds = %386
  %390 = load i32*, i32** %25, align 8
  %391 = call i32 @kvmppc_pte_free(i32* %390)
  br label %392

392:                                              ; preds = %389, %386
  %393 = load i32, i32* %26, align 4
  ret i32 %393
}

declare dso_local i32 @pgd_index(i64) #1

declare dso_local i64 @pgd_present(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32* @pud_alloc_one(i32, i64) #1

declare dso_local i64 @pud_present(i32) #1

declare dso_local i64 @pud_is_leaf(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32* @kvmppc_pmd_alloc(...) #1

declare dso_local i64 @pmd_present(i32) #1

declare dso_local i64 @pmd_is_leaf(i32) #1

declare dso_local i32* @kvmppc_pte_alloc(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @mmu_notifier_retry(%struct.kvm*, i64) #1

declare dso_local i64 @pgd_none(i32) #1

declare dso_local i32 @pgd_populate(i32, i32*, i32*) #1

declare dso_local i64 @pud_raw(i32) #1

declare dso_local i64 @pte_raw(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @pud_val(i32) #1

declare dso_local i32 @pte_val(i32) #1

declare dso_local i32 @kvmppc_radix_update_pte(%struct.kvm*, i32*, i32, i32, i64, i32) #1

declare dso_local i32 @kvmppc_unmap_pte(%struct.kvm*, i32*, i64, i32, i32*, i32) #1

declare dso_local i64 @pud_none(i32) #1

declare dso_local i32 @kvmppc_unmap_free_pud_entry_table(%struct.kvm*, i32*, i64, i32) #1

declare dso_local i32 @kvmppc_radix_set_pte_at(%struct.kvm*, i64, i32*, i32) #1

declare dso_local i32 @kvmhv_insert_nest_rmap(%struct.kvm*, i64*, %struct.rmap_nested**) #1

declare dso_local i32 @pud_populate(i32, i32*, i32*) #1

declare dso_local i64 @pmd_raw(i32) #1

declare dso_local i32 @pmd_val(i32) #1

declare dso_local i32* @pmdp_ptep(i32*) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i32 @kvmppc_unmap_free_pmd_entry_table(%struct.kvm*, i32*, i64, i32) #1

declare dso_local i32 @pmd_populate(i32, i32*, i32*) #1

declare dso_local i32* @pte_offset_kernel(i32*, i64) #1

declare dso_local i64 @pte_present(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pud_free(i32, i32*) #1

declare dso_local i32 @kvmppc_pmd_free(i32*) #1

declare dso_local i32 @kvmppc_pte_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
