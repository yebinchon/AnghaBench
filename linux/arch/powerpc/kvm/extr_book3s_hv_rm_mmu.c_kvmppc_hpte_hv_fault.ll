; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_kvmppc_hpte_hv_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_kvmppc_hpte_hv_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_8__, %struct.kvm* }
%struct.TYPE_8__ = type { i64, i64, i64*, %struct.TYPE_7__, %struct.mmio_hpte_cache_entry*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.mmio_hpte_cache_entry = type { i64, i64, i64, i64, i64, i32, i64, i64 }
%struct.kvm = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32*, i64 }
%struct.revmap_entry = type { i64 }

@HPTE_V_VALID = common dso_local global i64 0, align 8
@DSISR_NOHPTE = common dso_local global i32 0, align 4
@HPTE_V_ABSENT = common dso_local global i64 0, align 8
@HPTE_V_HVLOCK = common dso_local global i64 0, align 8
@CPU_FTR_ARCH_300 = common dso_local global i32 0, align 4
@HPTE_R_PP0 = common dso_local global i64 0, align 8
@HPTE_R_PP = common dso_local global i64 0, align 8
@MSR_PR = common dso_local global i32 0, align 4
@SLB_VSID_KP = common dso_local global i64 0, align 8
@SLB_VSID_KS = common dso_local global i64 0, align 8
@HPTE_R_N = common dso_local global i64 0, align 8
@HPTE_R_G = common dso_local global i64 0, align 8
@SRR1_ISI_N_OR_G = common dso_local global i32 0, align 4
@SRR1_ISI_PROT = common dso_local global i32 0, align 4
@DSISR_ISSTORE = common dso_local global i32 0, align 4
@DSISR_PROTFAULT = common dso_local global i32 0, align 4
@MSR_DR = common dso_local global i32 0, align 4
@DSISR_KEYFAULT = common dso_local global i32 0, align 4
@HPTE_R_KEY_HI = common dso_local global i64 0, align 8
@HPTE_R_KEY_LO = common dso_local global i64 0, align 8
@SLB_VSID_L = common dso_local global i64 0, align 8
@SLB_VSID_LP = common dso_local global i64 0, align 8
@slb_base_page_shift = common dso_local global i32* null, align 8
@MSR_IR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kvmppc_hpte_hv_fault(%struct.kvm_vcpu* %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.kvm*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.revmap_entry*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.mmio_hpte_cache_entry*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %29 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %28, i32 0, i32 1
  %30 = load %struct.kvm*, %struct.kvm** %29, align 8
  store %struct.kvm* %30, %struct.kvm** %12, align 8
  store %struct.mmio_hpte_cache_entry* null, %struct.mmio_hpte_cache_entry** %23, align 8
  store i64 0, i64* %24, align 8
  %31 = load i64, i64* @HPTE_V_VALID, align 8
  store i64 %31, i64* %19, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @DSISR_NOHPTE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %5
  %37 = load i64, i64* @HPTE_V_ABSENT, align 8
  %38 = load i64, i64* %19, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %19, align 8
  %40 = load %struct.kvm*, %struct.kvm** %12, align 8
  %41 = getelementptr inbounds %struct.kvm, %struct.kvm* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = call i64 @atomic64_read(i32* %42)
  store i64 %43, i64* %24, align 8
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %24, align 8
  %48 = call %struct.mmio_hpte_cache_entry* @mmio_cache_search(%struct.kvm_vcpu* %44, i64 %45, i64 %46, i64 %47)
  store %struct.mmio_hpte_cache_entry* %48, %struct.mmio_hpte_cache_entry** %23, align 8
  br label %49

49:                                               ; preds = %36, %5
  %50 = load %struct.mmio_hpte_cache_entry*, %struct.mmio_hpte_cache_entry** %23, align 8
  %51 = icmp ne %struct.mmio_hpte_cache_entry* %50, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %49
  %53 = load %struct.mmio_hpte_cache_entry*, %struct.mmio_hpte_cache_entry** %23, align 8
  %54 = getelementptr inbounds %struct.mmio_hpte_cache_entry, %struct.mmio_hpte_cache_entry* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %13, align 8
  %56 = load %struct.mmio_hpte_cache_entry*, %struct.mmio_hpte_cache_entry** %23, align 8
  %57 = getelementptr inbounds %struct.mmio_hpte_cache_entry, %struct.mmio_hpte_cache_entry* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %14, align 8
  %59 = load %struct.mmio_hpte_cache_entry*, %struct.mmio_hpte_cache_entry** %23, align 8
  %60 = getelementptr inbounds %struct.mmio_hpte_cache_entry, %struct.mmio_hpte_cache_entry* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %15, align 8
  %62 = load %struct.mmio_hpte_cache_entry*, %struct.mmio_hpte_cache_entry** %23, align 8
  %63 = getelementptr inbounds %struct.mmio_hpte_cache_entry, %struct.mmio_hpte_cache_entry* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %16, align 8
  br label %127

65:                                               ; preds = %49
  %66 = load %struct.kvm*, %struct.kvm** %12, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %19, align 8
  %70 = call i64 @kvmppc_hv_find_lock_hpte(%struct.kvm* %66, i64 %67, i64 %68, i64 %69)
  store i64 %70, i64* %13, align 8
  %71 = load i64, i64* %13, align 8
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %65
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @DSISR_NOHPTE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* %10, align 4
  %80 = zext i32 %79 to i64
  store i64 %80, i64* %6, align 8
  br label %352

81:                                               ; preds = %73
  store i64 0, i64* %6, align 8
  br label %352

82:                                               ; preds = %65
  %83 = load %struct.kvm*, %struct.kvm** %12, align 8
  %84 = getelementptr inbounds %struct.kvm, %struct.kvm* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %13, align 8
  %89 = shl i64 %88, 4
  %90 = add nsw i64 %87, %89
  %91 = inttoptr i64 %90 to i32*
  store i32* %91, i32** %18, align 8
  %92 = load i32*, i32** %18, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @be64_to_cpu(i32 %94)
  %96 = load i64, i64* @HPTE_V_HVLOCK, align 8
  %97 = xor i64 %96, -1
  %98 = and i64 %95, %97
  store i64 %98, i64* %17, align 8
  store i64 %98, i64* %14, align 8
  %99 = load i32*, i32** %18, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @be64_to_cpu(i32 %101)
  store i64 %102, i64* %15, align 8
  %103 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %104 = call i64 @cpu_has_feature(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %82
  %107 = load i64, i64* %14, align 8
  %108 = load i64, i64* %15, align 8
  %109 = call i64 @hpte_new_to_old_v(i64 %107, i64 %108)
  store i64 %109, i64* %14, align 8
  %110 = load i64, i64* %15, align 8
  %111 = call i64 @hpte_new_to_old_r(i64 %110)
  store i64 %111, i64* %15, align 8
  br label %112

112:                                              ; preds = %106, %82
  %113 = load %struct.kvm*, %struct.kvm** %12, align 8
  %114 = getelementptr inbounds %struct.kvm, %struct.kvm* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* %13, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = call %struct.revmap_entry* @real_vmalloc_addr(i32* %119)
  store %struct.revmap_entry* %120, %struct.revmap_entry** %20, align 8
  %121 = load %struct.revmap_entry*, %struct.revmap_entry** %20, align 8
  %122 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %16, align 8
  %124 = load i32*, i32** %18, align 8
  %125 = load i64, i64* %17, align 8
  %126 = call i32 @unlock_hpte(i32* %124, i64 %125)
  br label %127

127:                                              ; preds = %112, %52
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* @DSISR_NOHPTE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load i64, i64* %14, align 8
  %134 = load i64, i64* @HPTE_V_VALID, align 8
  %135 = and i64 %133, %134
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  store i64 0, i64* %6, align 8
  br label %352

138:                                              ; preds = %132, %127
  %139 = load i64, i64* %16, align 8
  %140 = load i64, i64* @HPTE_R_PP0, align 8
  %141 = load i64, i64* @HPTE_R_PP, align 8
  %142 = or i64 %140, %141
  %143 = and i64 %139, %142
  store i64 %143, i64* %21, align 8
  %144 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %145 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @MSR_PR, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %138
  %153 = load i64, i64* @SLB_VSID_KP, align 8
  br label %156

154:                                              ; preds = %138
  %155 = load i64, i64* @SLB_VSID_KS, align 8
  br label %156

156:                                              ; preds = %154, %152
  %157 = phi i64 [ %153, %152 ], [ %155, %154 ]
  store i64 %157, i64* %22, align 8
  %158 = load i32, i32* @DSISR_NOHPTE, align 4
  %159 = xor i32 %158, -1
  %160 = load i32, i32* %10, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %11, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %189, label %164

164:                                              ; preds = %156
  %165 = load i64, i64* %16, align 8
  %166 = load i64, i64* @HPTE_R_N, align 8
  %167 = load i64, i64* @HPTE_R_G, align 8
  %168 = or i64 %166, %167
  %169 = and i64 %165, %168
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %164
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* @SRR1_ISI_N_OR_G, align 4
  %174 = or i32 %172, %173
  %175 = zext i32 %174 to i64
  store i64 %175, i64* %6, align 8
  br label %352

176:                                              ; preds = %164
  %177 = load i64, i64* %21, align 8
  %178 = load i64, i64* %9, align 8
  %179 = load i64, i64* %22, align 8
  %180 = and i64 %178, %179
  %181 = call i32 @hpte_read_permission(i64 %177, i64 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %176
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* @SRR1_ISI_PROT, align 4
  %186 = or i32 %184, %185
  %187 = zext i32 %186 to i64
  store i64 %187, i64* %6, align 8
  br label %352

188:                                              ; preds = %176
  br label %221

189:                                              ; preds = %156
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* @DSISR_ISSTORE, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %207

194:                                              ; preds = %189
  %195 = load i64, i64* %21, align 8
  %196 = load i64, i64* %9, align 8
  %197 = load i64, i64* %22, align 8
  %198 = and i64 %196, %197
  %199 = call i32 @hpte_write_permission(i64 %195, i64 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %206, label %201

201:                                              ; preds = %194
  %202 = load i32, i32* %10, align 4
  %203 = load i32, i32* @DSISR_PROTFAULT, align 4
  %204 = or i32 %202, %203
  %205 = zext i32 %204 to i64
  store i64 %205, i64* %6, align 8
  br label %352

206:                                              ; preds = %194
  br label %220

207:                                              ; preds = %189
  %208 = load i64, i64* %21, align 8
  %209 = load i64, i64* %9, align 8
  %210 = load i64, i64* %22, align 8
  %211 = and i64 %209, %210
  %212 = call i32 @hpte_read_permission(i64 %208, i64 %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %219, label %214

214:                                              ; preds = %207
  %215 = load i32, i32* %10, align 4
  %216 = load i32, i32* @DSISR_PROTFAULT, align 4
  %217 = or i32 %215, %216
  %218 = zext i32 %217 to i64
  store i64 %218, i64* %6, align 8
  br label %352

219:                                              ; preds = %207
  br label %220

220:                                              ; preds = %219, %206
  br label %221

221:                                              ; preds = %220, %188
  %222 = load i32, i32* %11, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %257

224:                                              ; preds = %221
  %225 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %226 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @MSR_DR, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %257

233:                                              ; preds = %224
  %234 = load i64, i64* %16, align 8
  %235 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %236 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 5
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @hpte_get_skey_perm(i64 %234, i32 %238)
  store i32 %239, i32* %25, align 4
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* @DSISR_ISSTORE, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %233
  %245 = load i32, i32* %25, align 4
  %246 = lshr i32 %245, 1
  store i32 %246, i32* %25, align 4
  br label %247

247:                                              ; preds = %244, %233
  %248 = load i32, i32* %25, align 4
  %249 = and i32 %248, 1
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %247
  %252 = load i32, i32* %10, align 4
  %253 = load i32, i32* @DSISR_KEYFAULT, align 4
  %254 = or i32 %252, %253
  %255 = zext i32 %254 to i64
  store i64 %255, i64* %6, align 8
  br label %352

256:                                              ; preds = %247
  br label %257

257:                                              ; preds = %256, %224, %221
  %258 = load i64, i64* %8, align 8
  %259 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %260 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 0
  store i64 %258, i64* %261, align 8
  %262 = load i64, i64* %13, align 8
  %263 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %264 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 1
  store i64 %262, i64* %265, align 8
  %266 = load i64, i64* %14, align 8
  %267 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %268 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 2
  %270 = load i64*, i64** %269, align 8
  %271 = getelementptr inbounds i64, i64* %270, i64 0
  store i64 %266, i64* %271, align 8
  %272 = load i64, i64* %15, align 8
  %273 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %274 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 2
  %276 = load i64*, i64** %275, align 8
  %277 = getelementptr inbounds i64, i64* %276, i64 1
  store i64 %272, i64* %277, align 8
  %278 = load %struct.mmio_hpte_cache_entry*, %struct.mmio_hpte_cache_entry** %23, align 8
  %279 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %280 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 4
  store %struct.mmio_hpte_cache_entry* %278, %struct.mmio_hpte_cache_entry** %281, align 8
  %282 = load i64, i64* %15, align 8
  %283 = load i64, i64* @HPTE_R_KEY_HI, align 8
  %284 = load i64, i64* @HPTE_R_KEY_LO, align 8
  %285 = or i64 %283, %284
  %286 = and i64 %282, %285
  %287 = load i64, i64* @HPTE_R_KEY_HI, align 8
  %288 = load i64, i64* @HPTE_R_KEY_LO, align 8
  %289 = or i64 %287, %288
  %290 = icmp eq i64 %286, %289
  br i1 %290, label %291, label %351

291:                                              ; preds = %257
  %292 = load %struct.mmio_hpte_cache_entry*, %struct.mmio_hpte_cache_entry** %23, align 8
  %293 = icmp ne %struct.mmio_hpte_cache_entry* %292, null
  br i1 %293, label %337, label %294

294:                                              ; preds = %291
  store i32 12, i32* %26, align 4
  %295 = load i64, i64* %9, align 8
  %296 = load i64, i64* @SLB_VSID_L, align 8
  %297 = and i64 %295, %296
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %310

299:                                              ; preds = %294
  %300 = load i64, i64* %9, align 8
  %301 = load i64, i64* @SLB_VSID_LP, align 8
  %302 = and i64 %300, %301
  %303 = lshr i64 %302, 4
  %304 = trunc i64 %303 to i32
  store i32 %304, i32* %27, align 4
  %305 = load i32*, i32** @slb_base_page_shift, align 8
  %306 = load i32, i32* %27, align 4
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  %309 = load i32, i32* %308, align 4
  store i32 %309, i32* %26, align 4
  br label %310

310:                                              ; preds = %299, %294
  %311 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %312 = call %struct.mmio_hpte_cache_entry* @next_mmio_cache_entry(%struct.kvm_vcpu* %311)
  store %struct.mmio_hpte_cache_entry* %312, %struct.mmio_hpte_cache_entry** %23, align 8
  %313 = load i64, i64* %8, align 8
  %314 = load %struct.mmio_hpte_cache_entry*, %struct.mmio_hpte_cache_entry** %23, align 8
  %315 = getelementptr inbounds %struct.mmio_hpte_cache_entry, %struct.mmio_hpte_cache_entry* %314, i32 0, i32 4
  store i64 %313, i64* %315, align 8
  %316 = load i32, i32* %26, align 4
  %317 = load %struct.mmio_hpte_cache_entry*, %struct.mmio_hpte_cache_entry** %23, align 8
  %318 = getelementptr inbounds %struct.mmio_hpte_cache_entry, %struct.mmio_hpte_cache_entry* %317, i32 0, i32 5
  store i32 %316, i32* %318, align 8
  %319 = load i64, i64* %13, align 8
  %320 = load %struct.mmio_hpte_cache_entry*, %struct.mmio_hpte_cache_entry** %23, align 8
  %321 = getelementptr inbounds %struct.mmio_hpte_cache_entry, %struct.mmio_hpte_cache_entry* %320, i32 0, i32 0
  store i64 %319, i64* %321, align 8
  %322 = load i64, i64* %14, align 8
  %323 = load %struct.mmio_hpte_cache_entry*, %struct.mmio_hpte_cache_entry** %23, align 8
  %324 = getelementptr inbounds %struct.mmio_hpte_cache_entry, %struct.mmio_hpte_cache_entry* %323, i32 0, i32 1
  store i64 %322, i64* %324, align 8
  %325 = load i64, i64* %15, align 8
  %326 = load %struct.mmio_hpte_cache_entry*, %struct.mmio_hpte_cache_entry** %23, align 8
  %327 = getelementptr inbounds %struct.mmio_hpte_cache_entry, %struct.mmio_hpte_cache_entry* %326, i32 0, i32 2
  store i64 %325, i64* %327, align 8
  %328 = load i64, i64* %16, align 8
  %329 = load %struct.mmio_hpte_cache_entry*, %struct.mmio_hpte_cache_entry** %23, align 8
  %330 = getelementptr inbounds %struct.mmio_hpte_cache_entry, %struct.mmio_hpte_cache_entry* %329, i32 0, i32 3
  store i64 %328, i64* %330, align 8
  %331 = load i64, i64* %9, align 8
  %332 = load %struct.mmio_hpte_cache_entry*, %struct.mmio_hpte_cache_entry** %23, align 8
  %333 = getelementptr inbounds %struct.mmio_hpte_cache_entry, %struct.mmio_hpte_cache_entry* %332, i32 0, i32 6
  store i64 %331, i64* %333, align 8
  %334 = load i64, i64* %24, align 8
  %335 = load %struct.mmio_hpte_cache_entry*, %struct.mmio_hpte_cache_entry** %23, align 8
  %336 = getelementptr inbounds %struct.mmio_hpte_cache_entry, %struct.mmio_hpte_cache_entry* %335, i32 0, i32 7
  store i64 %334, i64* %336, align 8
  br label %337

337:                                              ; preds = %310, %291
  %338 = load i32, i32* %11, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %350

340:                                              ; preds = %337
  %341 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %342 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 3
  %344 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* @MSR_IR, align 4
  %347 = and i32 %345, %346
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %340
  store i64 -2, i64* %6, align 8
  br label %352

350:                                              ; preds = %340, %337
  br label %351

351:                                              ; preds = %350, %257
  store i64 -1, i64* %6, align 8
  br label %352

352:                                              ; preds = %351, %349, %251, %214, %201, %183, %171, %137, %81, %78
  %353 = load i64, i64* %6, align 8
  ret i64 %353
}

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local %struct.mmio_hpte_cache_entry* @mmio_cache_search(%struct.kvm_vcpu*, i64, i64, i64) #1

declare dso_local i64 @kvmppc_hv_find_lock_hpte(%struct.kvm*, i64, i64, i64) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i64 @hpte_new_to_old_v(i64, i64) #1

declare dso_local i64 @hpte_new_to_old_r(i64) #1

declare dso_local %struct.revmap_entry* @real_vmalloc_addr(i32*) #1

declare dso_local i32 @unlock_hpte(i32*, i64) #1

declare dso_local i32 @hpte_read_permission(i64, i64) #1

declare dso_local i32 @hpte_write_permission(i64, i64) #1

declare dso_local i32 @hpte_get_skey_perm(i64, i32) #1

declare dso_local %struct.mmio_hpte_cache_entry* @next_mmio_cache_entry(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
