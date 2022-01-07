; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_resize_hpt_rehash_hpte.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_resize_hpt_rehash_hpte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_resize_hpt = type { %struct.kvm_hpt_info, %struct.kvm* }
%struct.kvm_hpt_info = type { i32, %struct.revmap_entry*, i64 }
%struct.revmap_entry = type { i64 }
%struct.kvm = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.kvm_hpt_info }
%struct.kvm_memory_slot = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }

@HPTE_V_VALID = common dso_local global i64 0, align 8
@HPTE_V_ABSENT = common dso_local global i64 0, align 8
@HPTE_V_HVLOCK = common dso_local global i32 0, align 4
@CPU_FTR_ARCH_300 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@HPTE_V_BOLTED = common dso_local global i64 0, align 8
@HPTES_PER_GROUP = common dso_local global i64 0, align 8
@HPTE_V_SECONDARY = common dso_local global i64 0, align 8
@HPTE_V_1TB_SEG = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm_resize_hpt*, i64)* @resize_hpt_rehash_hpte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @resize_hpt_rehash_hpte(%struct.kvm_resize_hpt* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kvm_resize_hpt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.kvm*, align 8
  %7 = alloca %struct.kvm_hpt_info*, align 8
  %8 = alloca %struct.kvm_hpt_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.revmap_entry*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.kvm_memory_slot*, align 8
  %29 = alloca i64*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  store %struct.kvm_resize_hpt* %0, %struct.kvm_resize_hpt** %4, align 8
  store i64 %1, i64* %5, align 8
  %35 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %4, align 8
  %36 = getelementptr inbounds %struct.kvm_resize_hpt, %struct.kvm_resize_hpt* %35, i32 0, i32 1
  %37 = load %struct.kvm*, %struct.kvm** %36, align 8
  store %struct.kvm* %37, %struct.kvm** %6, align 8
  %38 = load %struct.kvm*, %struct.kvm** %6, align 8
  %39 = getelementptr inbounds %struct.kvm, %struct.kvm* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store %struct.kvm_hpt_info* %40, %struct.kvm_hpt_info** %7, align 8
  %41 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %4, align 8
  %42 = getelementptr inbounds %struct.kvm_resize_hpt, %struct.kvm_resize_hpt* %41, i32 0, i32 0
  store %struct.kvm_hpt_info* %42, %struct.kvm_hpt_info** %8, align 8
  %43 = load %struct.kvm_hpt_info*, %struct.kvm_hpt_info** %7, align 8
  %44 = getelementptr inbounds %struct.kvm_hpt_info, %struct.kvm_hpt_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 7
  %47 = zext i32 %46 to i64
  %48 = shl i64 1, %47
  %49 = sub i64 %48, 1
  store i64 %49, i64* %9, align 8
  %50 = load %struct.kvm_hpt_info*, %struct.kvm_hpt_info** %8, align 8
  %51 = getelementptr inbounds %struct.kvm_hpt_info, %struct.kvm_hpt_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, 7
  %54 = zext i32 %53 to i64
  %55 = shl i64 1, %54
  %56 = sub i64 %55, 1
  store i64 %56, i64* %10, align 8
  %57 = load %struct.kvm_hpt_info*, %struct.kvm_hpt_info** %7, align 8
  %58 = getelementptr inbounds %struct.kvm_hpt_info, %struct.kvm_hpt_info* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = shl i64 %60, 4
  %62 = add i64 %59, %61
  %63 = inttoptr i64 %62 to i32*
  store i32* %63, i32** %11, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @be64_to_cpu(i32 %66)
  store i64 %67, i64* %13, align 8
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* @HPTE_V_VALID, align 8
  %70 = and i64 %68, %69
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %2
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* @HPTE_V_ABSENT, align 8
  %75 = and i64 %73, %74
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  store i64 0, i64* %3, align 8
  br label %406

78:                                               ; preds = %72, %2
  br label %79

79:                                               ; preds = %85, %78
  %80 = load i32*, i32** %11, align 8
  %81 = load i32, i32* @HPTE_V_HVLOCK, align 4
  %82 = call i32 @try_lock_hpte(i32* %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = call i32 (...) @cpu_relax()
  br label %79

87:                                               ; preds = %79
  %88 = load i32*, i32** %11, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @be64_to_cpu(i32 %90)
  store i64 %91, i64* %13, align 8
  store i32 0, i32* %16, align 4
  %92 = load i64, i64* %13, align 8
  %93 = load i64, i64* @HPTE_V_VALID, align 8
  %94 = and i64 %92, %93
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %87
  %97 = load i64, i64* %13, align 8
  %98 = load i64, i64* @HPTE_V_ABSENT, align 8
  %99 = and i64 %97, %98
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  br label %400

102:                                              ; preds = %96, %87
  %103 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %104 = call i64 @cpu_has_feature(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %102
  %107 = load i32*, i32** %11, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @be64_to_cpu(i32 %109)
  store i64 %110, i64* %14, align 8
  %111 = load i64, i64* %13, align 8
  %112 = load i64, i64* %14, align 8
  %113 = call i64 @hpte_new_to_old_v(i64 %111, i64 %112)
  store i64 %113, i64* %13, align 8
  br label %114

114:                                              ; preds = %106, %102
  %115 = load %struct.kvm_hpt_info*, %struct.kvm_hpt_info** %7, align 8
  %116 = getelementptr inbounds %struct.kvm_hpt_info, %struct.kvm_hpt_info* %115, i32 0, i32 1
  %117 = load %struct.revmap_entry*, %struct.revmap_entry** %116, align 8
  %118 = load i64, i64* %5, align 8
  %119 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %117, i64 %118
  store %struct.revmap_entry* %119, %struct.revmap_entry** %17, align 8
  %120 = load %struct.revmap_entry*, %struct.revmap_entry** %17, align 8
  %121 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %15, align 8
  %123 = load i32, i32* @EIO, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %16, align 4
  %125 = load i64, i64* %13, align 8
  %126 = load i64, i64* %15, align 8
  %127 = call i64 @kvmppc_actual_pgsz(i64 %125, i64 %126)
  store i64 %127, i64* %18, align 8
  %128 = load i64, i64* %18, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %114
  br label %400

131:                                              ; preds = %114
  %132 = load i64, i64* %13, align 8
  %133 = load i64, i64* @HPTE_V_VALID, align 8
  %134 = and i64 %132, %133
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %175

136:                                              ; preds = %131
  %137 = load i64, i64* %15, align 8
  %138 = load i64, i64* %18, align 8
  %139 = call i64 @hpte_rpn(i64 %137, i64 %138)
  store i64 %139, i64* %26, align 8
  %140 = load %struct.kvm*, %struct.kvm** %6, align 8
  %141 = getelementptr inbounds %struct.kvm, %struct.kvm* %140, i32 0, i32 0
  %142 = call i32 @srcu_read_lock(i32* %141)
  store i32 %142, i32* %27, align 4
  %143 = load %struct.kvm*, %struct.kvm** %6, align 8
  %144 = call i32 @kvm_memslots(%struct.kvm* %143)
  %145 = load i64, i64* %26, align 8
  %146 = call %struct.kvm_memory_slot* @__gfn_to_memslot(i32 %144, i64 %145)
  store %struct.kvm_memory_slot* %146, %struct.kvm_memory_slot** %28, align 8
  %147 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %28, align 8
  %148 = icmp ne %struct.kvm_memory_slot* %147, null
  br i1 %148, label %149, label %170

149:                                              ; preds = %136
  %150 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %28, align 8
  %151 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i64*, i64** %152, align 8
  %154 = load i64, i64* %26, align 8
  %155 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %28, align 8
  %156 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = sub i64 %154, %157
  %159 = getelementptr inbounds i64, i64* %153, i64 %158
  store i64* %159, i64** %29, align 8
  %160 = load i64*, i64** %29, align 8
  %161 = call i32 @lock_rmap(i64* %160)
  %162 = load %struct.kvm*, %struct.kvm** %6, align 8
  %163 = load i64, i64* %5, align 8
  %164 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %28, align 8
  %165 = load i64*, i64** %29, align 8
  %166 = load i64, i64* %26, align 8
  %167 = call i32 @kvmppc_unmap_hpte(%struct.kvm* %162, i64 %163, %struct.kvm_memory_slot* %164, i64* %165, i64 %166)
  %168 = load i64*, i64** %29, align 8
  %169 = call i32 @unlock_rmap(i64* %168)
  br label %170

170:                                              ; preds = %149, %136
  %171 = load %struct.kvm*, %struct.kvm** %6, align 8
  %172 = getelementptr inbounds %struct.kvm, %struct.kvm* %171, i32 0, i32 0
  %173 = load i32, i32* %27, align 4
  %174 = call i32 @srcu_read_unlock(i32* %172, i32 %173)
  br label %175

175:                                              ; preds = %170, %131
  %176 = load i32*, i32** %11, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @be64_to_cpu(i32 %178)
  store i64 %179, i64* %13, align 8
  %180 = load i64, i64* %13, align 8
  %181 = load i64, i64* @HPTE_V_VALID, align 8
  %182 = and i64 %180, %181
  %183 = trunc i64 %182 to i32
  %184 = call i32 @BUG_ON(i32 %183)
  %185 = load i64, i64* %13, align 8
  %186 = load i64, i64* @HPTE_V_ABSENT, align 8
  %187 = and i64 %185, %186
  %188 = icmp ne i64 %187, 0
  %189 = xor i1 %188, true
  %190 = zext i1 %189 to i32
  %191 = call i32 @BUG_ON(i32 %190)
  store i32 0, i32* %16, align 4
  %192 = load i64, i64* %13, align 8
  %193 = load i64, i64* @HPTE_V_BOLTED, align 8
  %194 = and i64 %192, %193
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %175
  br label %400

197:                                              ; preds = %175
  %198 = load i32*, i32** %11, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 1
  %200 = load i32, i32* %199, align 4
  %201 = call i64 @be64_to_cpu(i32 %200)
  store i64 %201, i64* %14, align 8
  %202 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %203 = call i64 @cpu_has_feature(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %197
  %206 = load i64, i64* %13, align 8
  %207 = load i64, i64* %14, align 8
  %208 = call i64 @hpte_new_to_old_v(i64 %206, i64 %207)
  store i64 %208, i64* %13, align 8
  %209 = load i64, i64* %14, align 8
  %210 = call i64 @hpte_new_to_old_r(i64 %209)
  store i64 %210, i64* %14, align 8
  br label %211

211:                                              ; preds = %205, %197
  %212 = load i64, i64* %13, align 8
  %213 = load i64, i64* %14, align 8
  %214 = call i32 @kvmppc_hpte_base_page_shift(i64 %212, i64 %213)
  store i32 %214, i32* %25, align 4
  %215 = load i64, i64* %13, align 8
  %216 = call i64 @HPTE_V_AVPN_VAL(i64 %215)
  %217 = load i32, i32* %25, align 4
  %218 = zext i32 %217 to i64
  %219 = shl i64 1, %218
  %220 = sub i64 %219, 1
  %221 = lshr i64 %220, 23
  %222 = xor i64 %221, -1
  %223 = and i64 %216, %222
  store i64 %223, i64* %19, align 8
  %224 = load i64, i64* %5, align 8
  %225 = load i64, i64* @HPTES_PER_GROUP, align 8
  %226 = udiv i64 %224, %225
  store i64 %226, i64* %20, align 8
  %227 = load i64, i64* %13, align 8
  %228 = load i64, i64* @HPTE_V_SECONDARY, align 8
  %229 = and i64 %227, %228
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %211
  %232 = load i64, i64* %20, align 8
  %233 = xor i64 %232, -1
  store i64 %233, i64* %20, align 8
  br label %234

234:                                              ; preds = %231, %211
  %235 = load i64, i64* %13, align 8
  %236 = load i64, i64* @HPTE_V_1TB_SEG, align 8
  %237 = and i64 %235, %236
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %265, label %239

239:                                              ; preds = %234
  %240 = load i64, i64* %19, align 8
  %241 = and i64 %240, 31
  %242 = shl i64 %241, 23
  store i64 %242, i64* %30, align 8
  %243 = load i64, i64* %19, align 8
  %244 = lshr i64 %243, 5
  store i64 %244, i64* %31, align 8
  %245 = load i32, i32* %25, align 4
  %246 = icmp slt i32 %245, 23
  br i1 %246, label %247, label %258

247:                                              ; preds = %239
  %248 = load i64, i64* %31, align 8
  %249 = load i64, i64* %20, align 8
  %250 = xor i64 %248, %249
  %251 = load i64, i64* %9, align 8
  %252 = and i64 %250, %251
  %253 = load i32, i32* %25, align 4
  %254 = zext i32 %253 to i64
  %255 = shl i64 %252, %254
  %256 = load i64, i64* %30, align 8
  %257 = or i64 %256, %255
  store i64 %257, i64* %30, align 8
  br label %258

258:                                              ; preds = %247, %239
  %259 = load i64, i64* %31, align 8
  %260 = load i64, i64* %30, align 8
  %261 = load i32, i32* %25, align 4
  %262 = zext i32 %261 to i64
  %263 = lshr i64 %260, %262
  %264 = xor i64 %259, %263
  store i64 %264, i64* %21, align 8
  br label %297

265:                                              ; preds = %234
  %266 = load i64, i64* %19, align 8
  %267 = and i64 %266, 131071
  %268 = shl i64 %267, 23
  store i64 %268, i64* %32, align 8
  %269 = load i64, i64* %19, align 8
  %270 = lshr i64 %269, 17
  store i64 %270, i64* %33, align 8
  %271 = load i32, i32* %25, align 4
  %272 = icmp slt i32 %271, 23
  br i1 %272, label %273, label %287

273:                                              ; preds = %265
  %274 = load i64, i64* %33, align 8
  %275 = load i64, i64* %33, align 8
  %276 = shl i64 %275, 25
  %277 = xor i64 %274, %276
  %278 = load i64, i64* %20, align 8
  %279 = xor i64 %277, %278
  %280 = load i64, i64* %9, align 8
  %281 = and i64 %279, %280
  %282 = load i32, i32* %25, align 4
  %283 = zext i32 %282 to i64
  %284 = shl i64 %281, %283
  %285 = load i64, i64* %32, align 8
  %286 = or i64 %285, %284
  store i64 %286, i64* %32, align 8
  br label %287

287:                                              ; preds = %273, %265
  %288 = load i64, i64* %33, align 8
  %289 = load i64, i64* %33, align 8
  %290 = shl i64 %289, 25
  %291 = xor i64 %288, %290
  %292 = load i64, i64* %32, align 8
  %293 = load i32, i32* %25, align 4
  %294 = zext i32 %293 to i64
  %295 = lshr i64 %292, %294
  %296 = xor i64 %291, %295
  store i64 %296, i64* %21, align 8
  br label %297

297:                                              ; preds = %287, %258
  %298 = load i64, i64* %21, align 8
  %299 = load i64, i64* %10, align 8
  %300 = and i64 %298, %299
  store i64 %300, i64* %23, align 8
  %301 = load i64, i64* %13, align 8
  %302 = load i64, i64* @HPTE_V_SECONDARY, align 8
  %303 = and i64 %301, %302
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %310

305:                                              ; preds = %297
  %306 = load i64, i64* %21, align 8
  %307 = xor i64 %306, -1
  %308 = load i64, i64* %10, align 8
  %309 = and i64 %307, %308
  store i64 %309, i64* %23, align 8
  br label %310

310:                                              ; preds = %305, %297
  %311 = load i64, i64* %23, align 8
  %312 = load i64, i64* @HPTES_PER_GROUP, align 8
  %313 = mul i64 %311, %312
  %314 = load i64, i64* %5, align 8
  %315 = load i64, i64* @HPTES_PER_GROUP, align 8
  %316 = urem i64 %314, %315
  %317 = add i64 %313, %316
  store i64 %317, i64* %22, align 8
  %318 = load %struct.kvm_hpt_info*, %struct.kvm_hpt_info** %8, align 8
  %319 = getelementptr inbounds %struct.kvm_hpt_info, %struct.kvm_hpt_info* %318, i32 0, i32 2
  %320 = load i64, i64* %319, align 8
  %321 = load i64, i64* %22, align 8
  %322 = shl i64 %321, 4
  %323 = add i64 %320, %322
  %324 = inttoptr i64 %323 to i32*
  store i32* %324, i32** %12, align 8
  %325 = load i32*, i32** %12, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 0
  %327 = load i32, i32* %326, align 4
  %328 = call i64 @be64_to_cpu(i32 %327)
  store i64 %328, i64* %24, align 8
  %329 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %330 = call i64 @cpu_has_feature(i32 %329)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %340

332:                                              ; preds = %310
  %333 = load i32*, i32** %12, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 1
  %335 = load i32, i32* %334, align 4
  %336 = call i64 @be64_to_cpu(i32 %335)
  store i64 %336, i64* %34, align 8
  %337 = load i64, i64* %24, align 8
  %338 = load i64, i64* %34, align 8
  %339 = call i64 @hpte_new_to_old_v(i64 %337, i64 %338)
  store i64 %339, i64* %24, align 8
  br label %340

340:                                              ; preds = %332, %310
  %341 = load i64, i64* %24, align 8
  %342 = load i64, i64* @HPTE_V_VALID, align 8
  %343 = load i64, i64* @HPTE_V_ABSENT, align 8
  %344 = or i64 %342, %343
  %345 = and i64 %341, %344
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %371

347:                                              ; preds = %340
  %348 = load %struct.kvm_hpt_info*, %struct.kvm_hpt_info** %8, align 8
  %349 = getelementptr inbounds %struct.kvm_hpt_info, %struct.kvm_hpt_info* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = load %struct.kvm_hpt_info*, %struct.kvm_hpt_info** %7, align 8
  %352 = getelementptr inbounds %struct.kvm_hpt_info, %struct.kvm_hpt_info* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = icmp sge i32 %350, %353
  %355 = zext i1 %354 to i32
  %356 = call i32 @BUG_ON(i32 %355)
  %357 = load i64, i64* %24, align 8
  %358 = load i64, i64* @HPTE_V_BOLTED, align 8
  %359 = and i64 %357, %358
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %370

361:                                              ; preds = %347
  %362 = load i64, i64* %13, align 8
  %363 = load i64, i64* @HPTE_V_BOLTED, align 8
  %364 = and i64 %362, %363
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %369

366:                                              ; preds = %361
  %367 = load i32, i32* @ENOSPC, align 4
  %368 = sub nsw i32 0, %367
  store i32 %368, i32* %16, align 4
  br label %369

369:                                              ; preds = %366, %361
  br label %400

370:                                              ; preds = %347
  br label %371

371:                                              ; preds = %370, %340
  %372 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %373 = call i64 @cpu_has_feature(i32 %372)
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %381

375:                                              ; preds = %371
  %376 = load i64, i64* %13, align 8
  %377 = load i64, i64* %14, align 8
  %378 = call i64 @hpte_old_to_new_r(i64 %376, i64 %377)
  store i64 %378, i64* %14, align 8
  %379 = load i64, i64* %13, align 8
  %380 = call i64 @hpte_old_to_new_v(i64 %379)
  store i64 %380, i64* %13, align 8
  br label %381

381:                                              ; preds = %375, %371
  %382 = load i64, i64* %14, align 8
  %383 = call i32 @cpu_to_be64(i64 %382)
  %384 = load i32*, i32** %12, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 1
  store i32 %383, i32* %385, align 4
  %386 = load i64, i64* %15, align 8
  %387 = load %struct.kvm_hpt_info*, %struct.kvm_hpt_info** %8, align 8
  %388 = getelementptr inbounds %struct.kvm_hpt_info, %struct.kvm_hpt_info* %387, i32 0, i32 1
  %389 = load %struct.revmap_entry*, %struct.revmap_entry** %388, align 8
  %390 = load i64, i64* %22, align 8
  %391 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %389, i64 %390
  %392 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %391, i32 0, i32 0
  store i64 %386, i64* %392, align 8
  %393 = load i64, i64* %13, align 8
  %394 = call i32 @cpu_to_be64(i64 %393)
  %395 = load i32*, i32** %12, align 8
  %396 = getelementptr inbounds i32, i32* %395, i64 0
  store i32 %394, i32* %396, align 4
  %397 = load i32*, i32** %12, align 8
  %398 = load i64, i64* %13, align 8
  %399 = call i32 @unlock_hpte(i32* %397, i64 %398)
  br label %400

400:                                              ; preds = %381, %369, %196, %130, %101
  %401 = load i32*, i32** %11, align 8
  %402 = load i64, i64* %13, align 8
  %403 = call i32 @unlock_hpte(i32* %401, i64 %402)
  %404 = load i32, i32* %16, align 4
  %405 = sext i32 %404 to i64
  store i64 %405, i64* %3, align 8
  br label %406

406:                                              ; preds = %400, %77
  %407 = load i64, i64* %3, align 8
  ret i64 %407
}

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @try_lock_hpte(i32*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i64 @hpte_new_to_old_v(i64, i64) #1

declare dso_local i64 @kvmppc_actual_pgsz(i64, i64) #1

declare dso_local i64 @hpte_rpn(i64, i64) #1

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local %struct.kvm_memory_slot* @__gfn_to_memslot(i32, i64) #1

declare dso_local i32 @kvm_memslots(%struct.kvm*) #1

declare dso_local i32 @lock_rmap(i64*) #1

declare dso_local i32 @kvmppc_unmap_hpte(%struct.kvm*, i64, %struct.kvm_memory_slot*, i64*, i64) #1

declare dso_local i32 @unlock_rmap(i64*) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @hpte_new_to_old_r(i64) #1

declare dso_local i32 @kvmppc_hpte_base_page_shift(i64, i64) #1

declare dso_local i64 @HPTE_V_AVPN_VAL(i64) #1

declare dso_local i64 @hpte_old_to_new_r(i64, i64) #1

declare dso_local i64 @hpte_old_to_new_v(i64) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @unlock_hpte(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
