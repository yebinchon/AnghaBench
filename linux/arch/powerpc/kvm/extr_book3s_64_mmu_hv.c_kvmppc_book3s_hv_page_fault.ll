; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvmppc_book3s_hv_page_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvmppc_book3s_hv_page_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.kvm_run = type { i32 }
%struct.kvm_vcpu = type { %struct.kvm*, %struct.TYPE_10__ }
%struct.kvm = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.revmap_entry*, i64 }
%struct.revmap_entry = type { i64 }
%struct.TYPE_10__ = type { i64, i64*, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64 }
%struct.kvm_memory_slot = type { i32, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64* }
%struct.page = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32, i64, i32 }

@RESUME_GUEST = common dso_local global i32 0, align 4
@HPTE_R_RPN = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@DSISR_ISSTORE = common dso_local global i64 0, align 8
@HPTE_V_HVLOCK = common dso_local global i64 0, align 8
@CPU_FTR_ARCH_300 = common dso_local global i32 0, align 4
@KVM_MEMSLOT_INVALID = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@FOLL_WRITE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_14__* null, align 8
@VM_PFNMAP = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@HPTE_R_W = common dso_local global i64 0, align 8
@HPTE_R_I = common dso_local global i64 0, align 8
@HPTE_R_G = common dso_local global i64 0, align 8
@HPTE_R_M = common dso_local global i64 0, align 8
@HPTE_R_KEY_HI = common dso_local global i64 0, align 8
@HPTE_R_PP0 = common dso_local global i64 0, align 8
@HPTE_V_ABSENT = common dso_local global i64 0, align 8
@HPTE_V_VALID = common dso_local global i64 0, align 8
@KVMPPC_RMAP_RC_SHIFT = common dso_local global i64 0, align 8
@HPTE_R_R = common dso_local global i64 0, align 8
@HPTE_R_C = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_book3s_hv_page_fault(%struct.kvm_run* %0, %struct.kvm_vcpu* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_run*, align 8
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.kvm*, align 8
  %11 = alloca [3 x i64], align 16
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.kvm_memory_slot*, align 8
  %26 = alloca i64*, align 8
  %27 = alloca %struct.revmap_entry*, align 8
  %28 = alloca %struct.page*, align 8
  %29 = alloca [1 x %struct.page*], align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca %struct.vm_area_struct*, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i64, align 8
  store %struct.kvm_run* %0, %struct.kvm_run** %6, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %43 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %42, i32 0, i32 0
  %44 = load %struct.kvm*, %struct.kvm** %43, align 8
  store %struct.kvm* %44, %struct.kvm** %10, align 8
  %45 = load %struct.kvm*, %struct.kvm** %10, align 8
  %46 = call i64 @kvm_is_radix(%struct.kvm* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %4
  %49 = load %struct.kvm_run*, %struct.kvm_run** %6, align 8
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @kvmppc_book3s_radix_page_fault(%struct.kvm_run* %49, %struct.kvm_vcpu* %50, i64 %51, i64 %52)
  store i32 %53, i32* %5, align 4
  br label %669

54:                                               ; preds = %4
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %57 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %55, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %62, i32* %5, align 4
  br label %669

63:                                               ; preds = %54
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %65 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = icmp ne %struct.TYPE_9__* %67, null
  br i1 %68, label %69, label %122

69:                                               ; preds = %63
  %70 = load %struct.kvm*, %struct.kvm** %10, align 8
  %71 = getelementptr inbounds %struct.kvm, %struct.kvm* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 2
  %73 = call i64 @atomic64_read(i32* %72)
  store i64 %73, i64* %38, align 8
  %74 = load i64, i64* %38, align 8
  %75 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %76 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %74, %80
  br i1 %81, label %82, label %121

82:                                               ; preds = %69
  %83 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %84 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %12, align 8
  %89 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %90 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %12, align 8
  %96 = call i64 @kvmppc_actual_pgsz(i64 %94, i64 %95)
  store i64 %96, i64* %17, align 8
  %97 = load i64, i64* %12, align 8
  %98 = load i64, i64* @HPTE_R_RPN, align 8
  %99 = and i64 %97, %98
  %100 = load i64, i64* %17, align 8
  %101 = sub i64 %100, 1
  %102 = xor i64 %101, -1
  %103 = and i64 %99, %102
  store i64 %103, i64* %19, align 8
  %104 = load i64, i64* %19, align 8
  %105 = load i64, i64* @PAGE_SHIFT, align 8
  %106 = lshr i64 %104, %105
  store i64 %106, i64* %20, align 8
  %107 = load i64, i64* %19, align 8
  %108 = load i64, i64* %8, align 8
  %109 = load i64, i64* %17, align 8
  %110 = sub i64 %109, 1
  %111 = and i64 %108, %110
  %112 = or i64 %107, %111
  store i64 %112, i64* %21, align 8
  %113 = load %struct.kvm_run*, %struct.kvm_run** %6, align 8
  %114 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %115 = load i64, i64* %21, align 8
  %116 = load i64, i64* %8, align 8
  %117 = load i64, i64* %9, align 8
  %118 = load i64, i64* @DSISR_ISSTORE, align 8
  %119 = and i64 %117, %118
  %120 = call i32 @kvmppc_hv_emulate_mmio(%struct.kvm_run* %113, %struct.kvm_vcpu* %114, i64 %115, i64 %116, i64 %119)
  store i32 %120, i32* %5, align 4
  br label %669

121:                                              ; preds = %69
  br label %122

122:                                              ; preds = %121, %63
  %123 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %124 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %30, align 8
  %127 = load %struct.kvm*, %struct.kvm** %10, align 8
  %128 = getelementptr inbounds %struct.kvm, %struct.kvm* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %30, align 8
  %133 = shl i64 %132, 4
  %134 = add nsw i64 %131, %133
  %135 = inttoptr i64 %134 to i32*
  store i32* %135, i32** %15, align 8
  %136 = load %struct.kvm*, %struct.kvm** %10, align 8
  %137 = getelementptr inbounds %struct.kvm, %struct.kvm* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load %struct.revmap_entry*, %struct.revmap_entry** %139, align 8
  %141 = load i64, i64* %30, align 8
  %142 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %140, i64 %141
  store %struct.revmap_entry* %142, %struct.revmap_entry** %27, align 8
  %143 = call i32 (...) @preempt_disable()
  br label %144

144:                                              ; preds = %150, %122
  %145 = load i32*, i32** %15, align 8
  %146 = load i64, i64* @HPTE_V_HVLOCK, align 8
  %147 = call i32 @try_lock_hpte(i32* %145, i64 %146)
  %148 = icmp ne i32 %147, 0
  %149 = xor i1 %148, true
  br i1 %149, label %150, label %152

150:                                              ; preds = %144
  %151 = call i32 (...) @cpu_relax()
  br label %144

152:                                              ; preds = %144
  %153 = load i32*, i32** %15, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @be64_to_cpu(i32 %155)
  %157 = load i64, i64* @HPTE_V_HVLOCK, align 8
  %158 = xor i64 %157, -1
  %159 = and i64 %156, %158
  %160 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  store i64 %159, i64* %160, align 16
  %161 = load i32*, i32** %15, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = call i64 @be64_to_cpu(i32 %163)
  %165 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 1
  store i64 %164, i64* %165, align 8
  %166 = load %struct.revmap_entry*, %struct.revmap_entry** %27, align 8
  %167 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  store i64 %168, i64* %12, align 8
  %169 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 2
  store i64 %168, i64* %169, align 16
  %170 = load i32*, i32** %15, align 8
  %171 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  %172 = load i64, i64* %171, align 16
  %173 = call i32 @unlock_hpte(i32* %170, i64 %172)
  %174 = call i32 (...) @preempt_enable()
  %175 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %176 = call i64 @cpu_has_feature(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %189

178:                                              ; preds = %152
  %179 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  %180 = load i64, i64* %179, align 16
  %181 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 1
  %182 = load i64, i64* %181, align 8
  %183 = call i64 @hpte_new_to_old_v(i64 %180, i64 %182)
  %184 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  store i64 %183, i64* %184, align 16
  %185 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 1
  %186 = load i64, i64* %185, align 8
  %187 = call i64 @hpte_new_to_old_r(i64 %186)
  %188 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 1
  store i64 %187, i64* %188, align 8
  br label %189

189:                                              ; preds = %178, %152
  %190 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  %191 = load i64, i64* %190, align 16
  %192 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %193 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 1
  %195 = load i64*, i64** %194, align 8
  %196 = getelementptr inbounds i64, i64* %195, i64 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %191, %197
  br i1 %198, label %209, label %199

199:                                              ; preds = %189
  %200 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 1
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %203 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 1
  %205 = load i64*, i64** %204, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 1
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %201, %207
  br i1 %208, label %209, label %211

209:                                              ; preds = %199, %189
  %210 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %210, i32* %5, align 4
  br label %669

211:                                              ; preds = %199
  %212 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  %213 = load i64, i64* %212, align 16
  %214 = load i64, i64* %12, align 8
  %215 = call i64 @kvmppc_actual_pgsz(i64 %213, i64 %214)
  store i64 %215, i64* %17, align 8
  %216 = load i64, i64* %12, align 8
  %217 = load i64, i64* @HPTE_R_RPN, align 8
  %218 = and i64 %216, %217
  %219 = load i64, i64* %17, align 8
  %220 = sub i64 %219, 1
  %221 = xor i64 %220, -1
  %222 = and i64 %218, %221
  store i64 %222, i64* %19, align 8
  %223 = load i64, i64* %19, align 8
  %224 = load i64, i64* @PAGE_SHIFT, align 8
  %225 = lshr i64 %223, %224
  store i64 %225, i64* %20, align 8
  %226 = load i64, i64* %19, align 8
  %227 = load i64, i64* %8, align 8
  %228 = load i64, i64* %17, align 8
  %229 = sub i64 %228, 1
  %230 = and i64 %227, %229
  %231 = or i64 %226, %230
  store i64 %231, i64* %21, align 8
  %232 = load i64, i64* %21, align 8
  %233 = load i64, i64* @PAGE_SHIFT, align 8
  %234 = lshr i64 %232, %233
  store i64 %234, i64* %22, align 8
  %235 = load %struct.kvm*, %struct.kvm** %10, align 8
  %236 = load i64, i64* %22, align 8
  %237 = call %struct.kvm_memory_slot* @gfn_to_memslot(%struct.kvm* %235, i64 %236)
  store %struct.kvm_memory_slot* %237, %struct.kvm_memory_slot** %25, align 8
  %238 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %239 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  %240 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %25, align 8
  %241 = load i64, i64* %8, align 8
  %242 = load i64, i64* %9, align 8
  %243 = call i32 @trace_kvm_page_fault_enter(%struct.kvm_vcpu* %238, i64* %239, %struct.kvm_memory_slot* %240, i64 %241, i64 %242)
  %244 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %25, align 8
  %245 = icmp ne %struct.kvm_memory_slot* %244, null
  br i1 %245, label %246, label %253

246:                                              ; preds = %211
  %247 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %25, align 8
  %248 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @KVM_MEMSLOT_INVALID, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %262

253:                                              ; preds = %246, %211
  %254 = load %struct.kvm_run*, %struct.kvm_run** %6, align 8
  %255 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %256 = load i64, i64* %21, align 8
  %257 = load i64, i64* %8, align 8
  %258 = load i64, i64* %9, align 8
  %259 = load i64, i64* @DSISR_ISSTORE, align 8
  %260 = and i64 %258, %259
  %261 = call i32 @kvmppc_hv_emulate_mmio(%struct.kvm_run* %254, %struct.kvm_vcpu* %255, i64 %256, i64 %257, i64 %260)
  store i32 %261, i32* %5, align 4
  br label %669

262:                                              ; preds = %246
  %263 = load i64, i64* %20, align 8
  %264 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %25, align 8
  %265 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = icmp ult i64 %263, %266
  br i1 %267, label %268, label %271

268:                                              ; preds = %262
  %269 = load i32, i32* @EFAULT, align 4
  %270 = sub nsw i32 0, %269
  store i32 %270, i32* %5, align 4
  br label %669

271:                                              ; preds = %262
  %272 = load %struct.kvm*, %struct.kvm** %10, align 8
  %273 = getelementptr inbounds %struct.kvm, %struct.kvm* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  store i64 %274, i64* %16, align 8
  %275 = call i32 (...) @smp_rmb()
  %276 = load i32, i32* @EFAULT, align 4
  %277 = sub nsw i32 0, %276
  %278 = sext i32 %277 to i64
  store i64 %278, i64* %31, align 8
  store i32 0, i32* %33, align 4
  store i64 0, i64* %24, align 8
  store %struct.page* null, %struct.page** %28, align 8
  %279 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %279, i64* %18, align 8
  %280 = load i64, i64* %9, align 8
  %281 = load i64, i64* @DSISR_ISSTORE, align 8
  %282 = and i64 %280, %281
  %283 = icmp ne i64 %282, 0
  %284 = zext i1 %283 to i32
  store i32 %284, i32* %34, align 4
  %285 = load i32, i32* %34, align 4
  store i32 %285, i32* %35, align 4
  %286 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %25, align 8
  %287 = load i64, i64* %22, align 8
  %288 = call i64 @gfn_to_hva_memslot(%struct.kvm_memory_slot* %286, i64 %287)
  store i64 %288, i64* %23, align 8
  %289 = load i64, i64* %23, align 8
  %290 = load i32, i32* %34, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %271
  %293 = load i32, i32* @FOLL_WRITE, align 4
  br label %295

294:                                              ; preds = %271
  br label %295

295:                                              ; preds = %294, %292
  %296 = phi i32 [ %293, %292 ], [ 0, %294 ]
  %297 = getelementptr inbounds [1 x %struct.page*], [1 x %struct.page*]* %29, i64 0, i64 0
  %298 = call i64 @get_user_pages_fast(i64 %289, i32 1, i32 %296, %struct.page** %297)
  store i64 %298, i64* %32, align 8
  %299 = load i64, i64* %32, align 8
  %300 = icmp slt i64 %299, 1
  br i1 %300, label %301, label %369

301:                                              ; preds = %295
  %302 = load %struct.TYPE_14__*, %struct.TYPE_14__** @current, align 8
  %303 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %302, i32 0, i32 0
  %304 = load %struct.TYPE_13__*, %struct.TYPE_13__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i32 0, i32 1
  %306 = call i32 @down_read(i32* %305)
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** @current, align 8
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 0
  %309 = load %struct.TYPE_13__*, %struct.TYPE_13__** %308, align 8
  %310 = load i64, i64* %23, align 8
  %311 = call %struct.vm_area_struct* @find_vma(%struct.TYPE_13__* %309, i64 %310)
  store %struct.vm_area_struct* %311, %struct.vm_area_struct** %36, align 8
  %312 = load %struct.vm_area_struct*, %struct.vm_area_struct** %36, align 8
  %313 = icmp ne %struct.vm_area_struct* %312, null
  br i1 %313, label %314, label %359

314:                                              ; preds = %301
  %315 = load %struct.vm_area_struct*, %struct.vm_area_struct** %36, align 8
  %316 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* %23, align 8
  %319 = icmp ule i64 %317, %318
  br i1 %319, label %320, label %359

320:                                              ; preds = %314
  %321 = load i64, i64* %23, align 8
  %322 = load i64, i64* %17, align 8
  %323 = add i64 %321, %322
  %324 = load %struct.vm_area_struct*, %struct.vm_area_struct** %36, align 8
  %325 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %324, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  %327 = icmp ule i64 %323, %326
  br i1 %327, label %328, label %359

328:                                              ; preds = %320
  %329 = load %struct.vm_area_struct*, %struct.vm_area_struct** %36, align 8
  %330 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* @VM_PFNMAP, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %359

335:                                              ; preds = %328
  %336 = load %struct.vm_area_struct*, %struct.vm_area_struct** %36, align 8
  %337 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %336, i32 0, i32 3
  %338 = load i64, i64* %337, align 8
  %339 = load i64, i64* %23, align 8
  %340 = load %struct.vm_area_struct*, %struct.vm_area_struct** %36, align 8
  %341 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = sub i64 %339, %342
  %344 = load i64, i64* @PAGE_SHIFT, align 8
  %345 = lshr i64 %343, %344
  %346 = add i64 %338, %345
  store i64 %346, i64* %24, align 8
  %347 = load i64, i64* %17, align 8
  store i64 %347, i64* %18, align 8
  %348 = load %struct.vm_area_struct*, %struct.vm_area_struct** %36, align 8
  %349 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %348, i32 0, i32 4
  %350 = load i32, i32* %349, align 8
  %351 = call i32 @pgprot_val(i32 %350)
  %352 = call i32 @__pte(i32 %351)
  %353 = call i32 @pte_ci(i32 %352)
  store i32 %353, i32* %33, align 4
  %354 = load %struct.vm_area_struct*, %struct.vm_area_struct** %36, align 8
  %355 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %354, i32 0, i32 2
  %356 = load i32, i32* %355, align 8
  %357 = load i32, i32* @VM_WRITE, align 4
  %358 = and i32 %356, %357
  store i32 %358, i32* %35, align 4
  br label %359

359:                                              ; preds = %335, %328, %320, %314, %301
  %360 = load %struct.TYPE_14__*, %struct.TYPE_14__** @current, align 8
  %361 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %360, i32 0, i32 0
  %362 = load %struct.TYPE_13__*, %struct.TYPE_13__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %362, i32 0, i32 1
  %364 = call i32 @up_read(i32* %363)
  %365 = load i64, i64* %24, align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %368, label %367

367:                                              ; preds = %359
  br label %647

368:                                              ; preds = %359
  br label %415

369:                                              ; preds = %295
  %370 = getelementptr inbounds [1 x %struct.page*], [1 x %struct.page*]* %29, i64 0, i64 0
  %371 = load %struct.page*, %struct.page** %370, align 8
  store %struct.page* %371, %struct.page** %28, align 8
  %372 = load %struct.page*, %struct.page** %28, align 8
  %373 = call i64 @page_to_pfn(%struct.page* %372)
  store i64 %373, i64* %24, align 8
  %374 = load %struct.page*, %struct.page** %28, align 8
  %375 = call i64 @PageHuge(%struct.page* %374)
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %384

377:                                              ; preds = %369
  %378 = load %struct.page*, %struct.page** %28, align 8
  %379 = call %struct.page* @compound_head(%struct.page* %378)
  store %struct.page* %379, %struct.page** %28, align 8
  %380 = load %struct.page*, %struct.page** %28, align 8
  %381 = call i64 @compound_order(%struct.page* %380)
  %382 = load i64, i64* %18, align 8
  %383 = shl i64 %382, %381
  store i64 %383, i64* %18, align 8
  br label %384

384:                                              ; preds = %377, %369
  %385 = load i32, i32* %34, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %414, label %387

387:                                              ; preds = %384
  %388 = load i64, i64* %12, align 8
  %389 = call i64 @hpte_is_writable(i64 %388)
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %414

391:                                              ; preds = %387
  %392 = load i64, i64* %41, align 8
  %393 = call i32 @local_irq_save(i64 %392)
  %394 = load %struct.TYPE_14__*, %struct.TYPE_14__** @current, align 8
  %395 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %394, i32 0, i32 0
  %396 = load %struct.TYPE_13__*, %struct.TYPE_13__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = load i64, i64* %23, align 8
  %400 = call i32* @find_current_mm_pte(i32 %398, i64 %399, i32* null, i32* null)
  store i32* %400, i32** %39, align 8
  %401 = load i32*, i32** %39, align 8
  %402 = icmp ne i32* %401, null
  br i1 %402, label %403, label %411

403:                                              ; preds = %391
  %404 = load i32*, i32** %39, align 8
  %405 = call i32 @kvmppc_read_update_linux_pte(i32* %404, i32 1)
  store i32 %405, i32* %40, align 4
  %406 = load i32, i32* %40, align 4
  %407 = call i64 @__pte_write(i32 %406)
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %410

409:                                              ; preds = %403
  store i32 1, i32* %35, align 4
  br label %410

410:                                              ; preds = %409, %403
  br label %411

411:                                              ; preds = %410, %391
  %412 = load i64, i64* %41, align 8
  %413 = call i32 @local_irq_restore(i64 %412)
  br label %414

414:                                              ; preds = %411, %387, %384
  br label %415

415:                                              ; preds = %414, %368
  %416 = load i64, i64* %17, align 8
  %417 = load i64, i64* %18, align 8
  %418 = icmp ugt i64 %416, %417
  br i1 %418, label %419, label %420

419:                                              ; preds = %415
  br label %647

420:                                              ; preds = %415
  %421 = load i64, i64* %12, align 8
  %422 = load i32, i32* %33, align 4
  %423 = call i32 @hpte_cache_flags_ok(i64 %421, i32 %422)
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %440, label %425

425:                                              ; preds = %420
  %426 = load i32, i32* %33, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %429

428:                                              ; preds = %425
  br label %647

429:                                              ; preds = %425
  %430 = load i64, i64* %12, align 8
  %431 = load i64, i64* @HPTE_R_W, align 8
  %432 = load i64, i64* @HPTE_R_I, align 8
  %433 = or i64 %431, %432
  %434 = load i64, i64* @HPTE_R_G, align 8
  %435 = or i64 %433, %434
  %436 = xor i64 %435, -1
  %437 = and i64 %430, %436
  %438 = load i64, i64* @HPTE_R_M, align 8
  %439 = or i64 %437, %438
  store i64 %439, i64* %12, align 8
  br label %440

440:                                              ; preds = %429, %420
  %441 = load i64, i64* %17, align 8
  %442 = load i64, i64* @PAGE_SIZE, align 8
  %443 = icmp ult i64 %441, %442
  br i1 %443, label %444, label %446

444:                                              ; preds = %440
  %445 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %445, i64* %17, align 8
  br label %446

446:                                              ; preds = %444, %440
  %447 = load i64, i64* %12, align 8
  %448 = load i64, i64* @HPTE_R_KEY_HI, align 8
  %449 = and i64 %447, %448
  %450 = load i64, i64* %12, align 8
  %451 = load i64, i64* @HPTE_R_PP0, align 8
  %452 = load i64, i64* %17, align 8
  %453 = sub i64 %451, %452
  %454 = xor i64 %453, -1
  %455 = and i64 %450, %454
  %456 = or i64 %449, %455
  %457 = load i64, i64* %24, align 8
  %458 = load i64, i64* @PAGE_SHIFT, align 8
  %459 = shl i64 %457, %458
  %460 = load i64, i64* %17, align 8
  %461 = sub i64 %460, 1
  %462 = xor i64 %461, -1
  %463 = and i64 %459, %462
  %464 = or i64 %456, %463
  store i64 %464, i64* %12, align 8
  %465 = load i64, i64* %12, align 8
  %466 = call i64 @hpte_is_writable(i64 %465)
  %467 = icmp ne i64 %466, 0
  br i1 %467, label %468, label %474

468:                                              ; preds = %446
  %469 = load i32, i32* %35, align 4
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %474, label %471

471:                                              ; preds = %468
  %472 = load i64, i64* %12, align 8
  %473 = call i64 @hpte_make_readonly(i64 %472)
  store i64 %473, i64* %12, align 8
  br label %474

474:                                              ; preds = %471, %468, %446
  %475 = load i32, i32* @RESUME_GUEST, align 4
  %476 = sext i32 %475 to i64
  store i64 %476, i64* %31, align 8
  %477 = call i32 (...) @preempt_disable()
  br label %478

478:                                              ; preds = %484, %474
  %479 = load i32*, i32** %15, align 8
  %480 = load i64, i64* @HPTE_V_HVLOCK, align 8
  %481 = call i32 @try_lock_hpte(i32* %479, i64 %480)
  %482 = icmp ne i32 %481, 0
  %483 = xor i1 %482, true
  br i1 %483, label %484, label %486

484:                                              ; preds = %478
  %485 = call i32 (...) @cpu_relax()
  br label %478

486:                                              ; preds = %478
  %487 = load i32*, i32** %15, align 8
  %488 = getelementptr inbounds i32, i32* %487, i64 0
  %489 = load i32, i32* %488, align 4
  %490 = call i64 @be64_to_cpu(i32 %489)
  store i64 %490, i64* %13, align 8
  %491 = load i32*, i32** %15, align 8
  %492 = getelementptr inbounds i32, i32* %491, i64 1
  %493 = load i32, i32* %492, align 4
  %494 = call i64 @be64_to_cpu(i32 %493)
  store i64 %494, i64* %14, align 8
  %495 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %496 = call i64 @cpu_has_feature(i32 %495)
  %497 = icmp ne i64 %496, 0
  br i1 %497, label %498, label %504

498:                                              ; preds = %486
  %499 = load i64, i64* %13, align 8
  %500 = load i64, i64* %14, align 8
  %501 = call i64 @hpte_new_to_old_v(i64 %499, i64 %500)
  store i64 %501, i64* %13, align 8
  %502 = load i64, i64* %14, align 8
  %503 = call i64 @hpte_new_to_old_r(i64 %502)
  store i64 %503, i64* %14, align 8
  br label %504

504:                                              ; preds = %498, %486
  %505 = load %struct.kvm*, %struct.kvm** %10, align 8
  %506 = getelementptr inbounds %struct.kvm, %struct.kvm* %505, i32 0, i32 1
  %507 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 8
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %511, label %510

510:                                              ; preds = %504
  br label %661

511:                                              ; preds = %504
  %512 = load i64, i64* %13, align 8
  %513 = load i64, i64* @HPTE_V_HVLOCK, align 8
  %514 = xor i64 %513, -1
  %515 = and i64 %512, %514
  %516 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  %517 = load i64, i64* %516, align 16
  %518 = icmp ne i64 %515, %517
  br i1 %518, label %531, label %519

519:                                              ; preds = %511
  %520 = load i64, i64* %14, align 8
  %521 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 1
  %522 = load i64, i64* %521, align 8
  %523 = icmp ne i64 %520, %522
  br i1 %523, label %531, label %524

524:                                              ; preds = %519
  %525 = load %struct.revmap_entry*, %struct.revmap_entry** %27, align 8
  %526 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %525, i32 0, i32 0
  %527 = load i64, i64* %526, align 8
  %528 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 2
  %529 = load i64, i64* %528, align 16
  %530 = icmp ne i64 %527, %529
  br i1 %530, label %531, label %532

531:                                              ; preds = %524, %519, %511
  br label %661

532:                                              ; preds = %524
  %533 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  %534 = load i64, i64* %533, align 16
  %535 = load i64, i64* @HPTE_V_ABSENT, align 8
  %536 = xor i64 %535, -1
  %537 = and i64 %534, %536
  %538 = load i64, i64* @HPTE_V_VALID, align 8
  %539 = or i64 %537, %538
  %540 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  store i64 %539, i64* %540, align 16
  %541 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %25, align 8
  %542 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %541, i32 0, i32 2
  %543 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %542, i32 0, i32 0
  %544 = load i64*, i64** %543, align 8
  %545 = load i64, i64* %20, align 8
  %546 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %25, align 8
  %547 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %546, i32 0, i32 1
  %548 = load i64, i64* %547, align 8
  %549 = sub i64 %545, %548
  %550 = getelementptr inbounds i64, i64* %544, i64 %549
  store i64* %550, i64** %26, align 8
  %551 = load i64*, i64** %26, align 8
  %552 = call i32 @lock_rmap(i64* %551)
  %553 = load i32, i32* @RESUME_GUEST, align 4
  %554 = sext i32 %553 to i64
  store i64 %554, i64* %31, align 8
  %555 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %556 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %555, i32 0, i32 0
  %557 = load %struct.kvm*, %struct.kvm** %556, align 8
  %558 = load i64, i64* %16, align 8
  %559 = call i64 @mmu_notifier_retry(%struct.kvm* %557, i64 %558)
  %560 = icmp ne i64 %559, 0
  br i1 %560, label %561, label %564

561:                                              ; preds = %532
  %562 = load i64*, i64** %26, align 8
  %563 = call i32 @unlock_rmap(i64* %562)
  br label %661

564:                                              ; preds = %532
  %565 = load i64*, i64** %26, align 8
  %566 = load i64, i64* %565, align 8
  %567 = load i64, i64* @KVMPPC_RMAP_RC_SHIFT, align 8
  %568 = lshr i64 %566, %567
  store i64 %568, i64* %37, align 8
  %569 = load i64, i64* %37, align 8
  %570 = load i64, i64* @HPTE_R_R, align 8
  %571 = load i64, i64* @HPTE_R_C, align 8
  %572 = or i64 %570, %571
  %573 = xor i64 %572, -1
  %574 = or i64 %569, %573
  %575 = load i64, i64* %12, align 8
  %576 = and i64 %575, %574
  store i64 %576, i64* %12, align 8
  %577 = load i32*, i32** %15, align 8
  %578 = getelementptr inbounds i32, i32* %577, i64 0
  %579 = load i32, i32* %578, align 4
  %580 = call i64 @be64_to_cpu(i32 %579)
  %581 = load i64, i64* @HPTE_V_VALID, align 8
  %582 = and i64 %580, %581
  %583 = icmp ne i64 %582, 0
  br i1 %583, label %584, label %607

584:                                              ; preds = %564
  %585 = load i64*, i64** %26, align 8
  %586 = call i32 @unlock_rmap(i64* %585)
  %587 = load i64, i64* @HPTE_V_ABSENT, align 8
  %588 = call i32 @cpu_to_be64(i64 %587)
  %589 = load i32*, i32** %15, align 8
  %590 = getelementptr inbounds i32, i32* %589, i64 0
  %591 = load i32, i32* %590, align 4
  %592 = or i32 %591, %588
  store i32 %592, i32* %590, align 4
  %593 = load %struct.kvm*, %struct.kvm** %10, align 8
  %594 = load i32*, i32** %15, align 8
  %595 = load i64, i64* %30, align 8
  %596 = call i32 @kvmppc_invalidate_hpte(%struct.kvm* %593, i32* %594, i64 %595)
  %597 = load i32*, i32** %15, align 8
  %598 = getelementptr inbounds i32, i32* %597, i64 1
  %599 = load i32, i32* %598, align 4
  %600 = call i64 @be64_to_cpu(i32 %599)
  %601 = load i64, i64* @HPTE_R_R, align 8
  %602 = load i64, i64* @HPTE_R_C, align 8
  %603 = or i64 %601, %602
  %604 = and i64 %600, %603
  %605 = load i64, i64* %12, align 8
  %606 = or i64 %605, %604
  store i64 %606, i64* %12, align 8
  br label %613

607:                                              ; preds = %564
  %608 = load %struct.kvm*, %struct.kvm** %10, align 8
  %609 = load %struct.revmap_entry*, %struct.revmap_entry** %27, align 8
  %610 = load i64*, i64** %26, align 8
  %611 = load i64, i64* %30, align 8
  %612 = call i32 @kvmppc_add_revmap_chain(%struct.kvm* %608, %struct.revmap_entry* %609, i64* %610, i64 %611, i32 0)
  br label %613

613:                                              ; preds = %607, %584
  %614 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %615 = call i64 @cpu_has_feature(i32 %614)
  %616 = icmp ne i64 %615, 0
  br i1 %616, label %617, label %626

617:                                              ; preds = %613
  %618 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  %619 = load i64, i64* %618, align 16
  %620 = load i64, i64* %12, align 8
  %621 = call i64 @hpte_old_to_new_r(i64 %619, i64 %620)
  store i64 %621, i64* %12, align 8
  %622 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  %623 = load i64, i64* %622, align 16
  %624 = call i64 @hpte_old_to_new_v(i64 %623)
  %625 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  store i64 %624, i64* %625, align 16
  br label %626

626:                                              ; preds = %617, %613
  %627 = load i64, i64* %12, align 8
  %628 = call i32 @cpu_to_be64(i64 %627)
  %629 = load i32*, i32** %15, align 8
  %630 = getelementptr inbounds i32, i32* %629, i64 1
  store i32 %628, i32* %630, align 4
  %631 = call i32 (...) @eieio()
  %632 = load i32*, i32** %15, align 8
  %633 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  %634 = load i64, i64* %633, align 16
  %635 = call i32 @__unlock_hpte(i32* %632, i64 %634)
  call void asm sideeffect "ptesync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %636 = call i32 (...) @preempt_enable()
  %637 = load %struct.page*, %struct.page** %28, align 8
  %638 = icmp ne %struct.page* %637, null
  br i1 %638, label %639, label %646

639:                                              ; preds = %626
  %640 = load i64, i64* %12, align 8
  %641 = call i64 @hpte_is_writable(i64 %640)
  %642 = icmp ne i64 %641, 0
  br i1 %642, label %643, label %646

643:                                              ; preds = %639
  %644 = load %struct.page*, %struct.page** %28, align 8
  %645 = call i32 @SetPageDirty(%struct.page* %644)
  br label %646

646:                                              ; preds = %643, %639, %626
  br label %647

647:                                              ; preds = %661, %646, %428, %419, %367
  %648 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %649 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  %650 = load i64, i64* %31, align 8
  %651 = call i32 @trace_kvm_page_fault_exit(%struct.kvm_vcpu* %648, i64* %649, i64 %650)
  %652 = load %struct.page*, %struct.page** %28, align 8
  %653 = icmp ne %struct.page* %652, null
  br i1 %653, label %654, label %658

654:                                              ; preds = %647
  %655 = getelementptr inbounds [1 x %struct.page*], [1 x %struct.page*]* %29, i64 0, i64 0
  %656 = load %struct.page*, %struct.page** %655, align 8
  %657 = call i32 @put_page(%struct.page* %656)
  br label %658

658:                                              ; preds = %654, %647
  %659 = load i64, i64* %31, align 8
  %660 = trunc i64 %659 to i32
  store i32 %660, i32* %5, align 4
  br label %669

661:                                              ; preds = %561, %531, %510
  %662 = load i32*, i32** %15, align 8
  %663 = load i32*, i32** %15, align 8
  %664 = getelementptr inbounds i32, i32* %663, i64 0
  %665 = load i32, i32* %664, align 4
  %666 = call i64 @be64_to_cpu(i32 %665)
  %667 = call i32 @__unlock_hpte(i32* %662, i64 %666)
  %668 = call i32 (...) @preempt_enable()
  br label %647

669:                                              ; preds = %658, %268, %253, %209, %82, %61, %48
  %670 = load i32, i32* %5, align 4
  ret i32 %670
}

declare dso_local i64 @kvm_is_radix(%struct.kvm*) #1

declare dso_local i32 @kvmppc_book3s_radix_page_fault(%struct.kvm_run*, %struct.kvm_vcpu*, i64, i64) #1

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local i64 @kvmppc_actual_pgsz(i64, i64) #1

declare dso_local i32 @kvmppc_hv_emulate_mmio(%struct.kvm_run*, %struct.kvm_vcpu*, i64, i64, i64) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @try_lock_hpte(i32*, i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @unlock_hpte(i32*, i64) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i64 @hpte_new_to_old_v(i64, i64) #1

declare dso_local i64 @hpte_new_to_old_r(i64) #1

declare dso_local %struct.kvm_memory_slot* @gfn_to_memslot(%struct.kvm*, i64) #1

declare dso_local i32 @trace_kvm_page_fault_enter(%struct.kvm_vcpu*, i64*, %struct.kvm_memory_slot*, i64, i64) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @gfn_to_hva_memslot(%struct.kvm_memory_slot*, i64) #1

declare dso_local i64 @get_user_pages_fast(i64, i32, i32, %struct.page**) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @pte_ci(i32) #1

declare dso_local i32 @__pte(i32) #1

declare dso_local i32 @pgprot_val(i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i64 @page_to_pfn(%struct.page*) #1

declare dso_local i64 @PageHuge(%struct.page*) #1

declare dso_local %struct.page* @compound_head(%struct.page*) #1

declare dso_local i64 @compound_order(%struct.page*) #1

declare dso_local i64 @hpte_is_writable(i64) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32* @find_current_mm_pte(i32, i64, i32*, i32*) #1

declare dso_local i32 @kvmppc_read_update_linux_pte(i32*, i32) #1

declare dso_local i64 @__pte_write(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @hpte_cache_flags_ok(i64, i32) #1

declare dso_local i64 @hpte_make_readonly(i64) #1

declare dso_local i32 @lock_rmap(i64*) #1

declare dso_local i64 @mmu_notifier_retry(%struct.kvm*, i64) #1

declare dso_local i32 @unlock_rmap(i64*) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @kvmppc_invalidate_hpte(%struct.kvm*, i32*, i64) #1

declare dso_local i32 @kvmppc_add_revmap_chain(%struct.kvm*, %struct.revmap_entry*, i64*, i64, i32) #1

declare dso_local i64 @hpte_old_to_new_r(i64, i64) #1

declare dso_local i64 @hpte_old_to_new_v(i64) #1

declare dso_local i32 @eieio(...) #1

declare dso_local i32 @__unlock_hpte(i32*, i64) #1

declare dso_local i32 @SetPageDirty(%struct.page*) #1

declare dso_local i32 @trace_kvm_page_fault_exit(%struct.kvm_vcpu*, i64*, i64) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 9580}
