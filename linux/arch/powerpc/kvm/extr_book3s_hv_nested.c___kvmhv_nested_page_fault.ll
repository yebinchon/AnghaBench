; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c___kvmhv_nested_page_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c___kvmhv_nested_page_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_run = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_4__, %struct.kvm* }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.kvm = type { i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.kvm_nested_guest = type { i32, i32, i64, i32 }
%struct.kvm_memory_slot = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64* }
%struct.rmap_nested = type { i64 }
%struct.kvmppc_pte = type { i32, i64, i32, i64, i64, i64 }

@DSISR_ISSTORE = common dso_local global i64 0, align 8
@RESUME_HOST = common dso_local global i64 0, align 8
@DSISR_PRTABLE_FAULT = common dso_local global i64 0, align 8
@DSISR_PROTFAULT = common dso_local global i64 0, align 8
@DSISR_BADACCESS = common dso_local global i64 0, align 8
@DSISR_NOEXEC_OR_G = common dso_local global i64 0, align 8
@DSISR_BAD_COPYPASTE = common dso_local global i64 0, align 8
@DSISR_SET_RC = common dso_local global i64 0, align 8
@DSISR_BAD_FAULT_64S = common dso_local global i64 0, align 8
@DSISR_NOHPTE = common dso_local global i64 0, align 8
@RESUME_GUEST = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"KVM: L1 guest page shift (%d) less than our own (%d)\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@KVM_MEMSLOT_INVALID = common dso_local global i32 0, align 4
@KVM_MEM_READONLY = common dso_local global i32 0, align 4
@_PAGE_WRITE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@_PAGE_READ = common dso_local global i64 0, align 8
@_PAGE_EXEC = common dso_local global i64 0, align 8
@_PAGE_ACCESSED = common dso_local global i32 0, align 4
@_PAGE_DIRTY = common dso_local global i64 0, align 8
@PMD_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RMAP_NESTED_GPA_MASK = common dso_local global i64 0, align 8
@RMAP_NESTED_LPID_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm_run*, %struct.kvm_vcpu*, %struct.kvm_nested_guest*)* @__kvmhv_nested_page_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__kvmhv_nested_page_fault(%struct.kvm_run* %0, %struct.kvm_vcpu* %1, %struct.kvm_nested_guest* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.kvm_run*, align 8
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca %struct.kvm_nested_guest*, align 8
  %8 = alloca %struct.kvm*, align 8
  %9 = alloca %struct.kvm_memory_slot*, align 8
  %10 = alloca %struct.rmap_nested*, align 8
  %11 = alloca %struct.kvmppc_pte, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  store %struct.kvm_run* %0, %struct.kvm_run** %5, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %6, align 8
  store %struct.kvm_nested_guest* %2, %struct.kvm_nested_guest** %7, align 8
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %31 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %30, i32 0, i32 1
  %32 = load %struct.kvm*, %struct.kvm** %31, align 8
  store %struct.kvm* %32, %struct.kvm** %8, align 8
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %34 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %15, align 8
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %38 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %16, align 8
  store i64 0, i64* %21, align 8
  %41 = load i64, i64* %15, align 8
  %42 = load i64, i64* @DSISR_ISSTORE, align 8
  %43 = and i64 %41, %42
  %44 = icmp ne i64 %43, 0
  %45 = xor i1 %44, true
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %48 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %7, align 8
  %49 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %3
  %53 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %7, align 8
  %54 = call i32 @kvmhv_update_ptbl_cache(%struct.kvm_nested_guest* %53)
  %55 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %7, align 8
  %56 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %52
  %60 = load i64, i64* @RESUME_HOST, align 8
  store i64 %60, i64* %4, align 8
  br label %446

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %3
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %64 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = and i64 %67, 1152921504606842880
  store i64 %68, i64* %18, align 8
  %69 = load i64, i64* %15, align 8
  %70 = load i64, i64* @DSISR_PRTABLE_FAULT, align 8
  %71 = and i64 %69, %70
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %62
  %74 = load i64, i64* %16, align 8
  %75 = and i64 %74, 4095
  %76 = load i64, i64* %18, align 8
  %77 = or i64 %76, %75
  store i64 %77, i64* %18, align 8
  br label %78

78:                                               ; preds = %73, %62
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %80 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %7, align 8
  %81 = load i64, i64* %18, align 8
  %82 = load i64, i64* %15, align 8
  %83 = call i64 @kvmhv_translate_addr_nested(%struct.kvm_vcpu* %79, %struct.kvm_nested_guest* %80, i64 %81, i64 %82, %struct.kvmppc_pte* %11)
  store i64 %83, i64* %27, align 8
  %84 = load i64, i64* %27, align 8
  %85 = load i64, i64* @RESUME_HOST, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %78
  %88 = load i64, i64* %15, align 8
  %89 = load i64, i64* @DSISR_PROTFAULT, align 8
  %90 = load i64, i64* @DSISR_BADACCESS, align 8
  %91 = or i64 %89, %90
  %92 = load i64, i64* @DSISR_NOEXEC_OR_G, align 8
  %93 = or i64 %91, %92
  %94 = load i64, i64* @DSISR_BAD_COPYPASTE, align 8
  %95 = or i64 %93, %94
  %96 = and i64 %88, %95
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %87
  br label %440

99:                                               ; preds = %87, %78
  %100 = load i64, i64* %27, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i64, i64* %27, align 8
  store i64 %103, i64* %4, align 8
  br label %446

104:                                              ; preds = %99
  %105 = load i64, i64* %15, align 8
  %106 = load i64, i64* @DSISR_SET_RC, align 8
  %107 = and i64 %105, %106
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %140

109:                                              ; preds = %104
  %110 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %111 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %7, align 8
  %112 = load i64, i64* %18, align 8
  %113 = load i64, i64* %15, align 8
  %114 = call i64 @kvmhv_handle_nested_set_rc(%struct.kvm_vcpu* %110, %struct.kvm_nested_guest* %111, i64 %112, %struct.kvmppc_pte* byval(%struct.kvmppc_pte) align 8 %11, i64 %113)
  store i64 %114, i64* %27, align 8
  %115 = load i64, i64* %27, align 8
  %116 = load i64, i64* @RESUME_HOST, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = load i64, i64* %27, align 8
  store i64 %119, i64* %4, align 8
  br label %446

120:                                              ; preds = %109
  %121 = load i64, i64* %27, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %440

124:                                              ; preds = %120
  %125 = load i64, i64* @DSISR_SET_RC, align 8
  %126 = xor i64 %125, -1
  %127 = load i64, i64* %15, align 8
  %128 = and i64 %127, %126
  store i64 %128, i64* %15, align 8
  %129 = load i64, i64* %15, align 8
  %130 = load i64, i64* @DSISR_BAD_FAULT_64S, align 8
  %131 = load i64, i64* @DSISR_NOHPTE, align 8
  %132 = or i64 %130, %131
  %133 = load i64, i64* @DSISR_PROTFAULT, align 8
  %134 = or i64 %132, %133
  %135 = and i64 %129, %134
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %124
  %138 = load i64, i64* @RESUME_GUEST, align 8
  store i64 %138, i64* %4, align 8
  br label %446

139:                                              ; preds = %124
  br label %140

140:                                              ; preds = %139, %104
  %141 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %11, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  store i32 %142, i32* %23, align 4
  %143 = load i32, i32* %23, align 4
  %144 = load i32, i32* @PAGE_SHIFT, align 4
  %145 = icmp ult i32 %143, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %140
  %147 = load i32, i32* %23, align 4
  %148 = load i32, i32* @PAGE_SHIFT, align 4
  %149 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %147, i32 %148)
  %150 = load i64, i64* @EINVAL, align 8
  %151 = sub nsw i64 0, %150
  store i64 %151, i64* %4, align 8
  br label %446

152:                                              ; preds = %140
  %153 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %11, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %19, align 8
  %155 = load i64, i64* %19, align 8
  %156 = load i32, i32* @PAGE_SHIFT, align 4
  %157 = zext i32 %156 to i64
  %158 = lshr i64 %155, %157
  store i64 %158, i64* %20, align 8
  %159 = load %struct.kvm*, %struct.kvm** %8, align 8
  %160 = load i64, i64* %20, align 8
  %161 = call %struct.kvm_memory_slot* @gfn_to_memslot(%struct.kvm* %159, i64 %160)
  store %struct.kvm_memory_slot* %161, %struct.kvm_memory_slot** %9, align 8
  %162 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %163 = icmp ne %struct.kvm_memory_slot* %162, null
  br i1 %163, label %164, label %171

164:                                              ; preds = %152
  %165 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %166 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @KVM_MEMSLOT_INVALID, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %191

171:                                              ; preds = %164, %152
  %172 = load i64, i64* %15, align 8
  %173 = load i64, i64* @DSISR_PRTABLE_FAULT, align 8
  %174 = load i64, i64* @DSISR_BADACCESS, align 8
  %175 = or i64 %173, %174
  %176 = and i64 %172, %175
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %171
  %179 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %180 = load i64, i64* %16, align 8
  %181 = load i64, i64* %15, align 8
  %182 = call i32 @kvmppc_core_queue_data_storage(%struct.kvm_vcpu* %179, i64 %180, i64 %181)
  %183 = load i64, i64* @RESUME_GUEST, align 8
  store i64 %183, i64* %4, align 8
  br label %446

184:                                              ; preds = %171
  %185 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %186 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %187 = load i64, i64* %19, align 8
  %188 = load i64, i64* %16, align 8
  %189 = load i32, i32* %25, align 4
  %190 = call i64 @kvmppc_hv_emulate_mmio(%struct.kvm_run* %185, %struct.kvm_vcpu* %186, i64 %187, i64 %188, i32 %189)
  store i64 %190, i64* %4, align 8
  br label %446

191:                                              ; preds = %164
  %192 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %193 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @KVM_MEM_READONLY, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %210

198:                                              ; preds = %191
  %199 = load i32, i32* %25, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %209

201:                                              ; preds = %198
  %202 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %203 = load i64, i64* %16, align 8
  %204 = load i64, i64* @DSISR_ISSTORE, align 8
  %205 = load i64, i64* @DSISR_PROTFAULT, align 8
  %206 = or i64 %204, %205
  %207 = call i32 @kvmppc_core_queue_data_storage(%struct.kvm_vcpu* %202, i64 %203, i64 %206)
  %208 = load i64, i64* @RESUME_GUEST, align 8
  store i64 %208, i64* %4, align 8
  br label %446

209:                                              ; preds = %198
  store i32 1, i32* %26, align 4
  br label %210

210:                                              ; preds = %209, %191
  %211 = load %struct.kvm*, %struct.kvm** %8, align 8
  %212 = getelementptr inbounds %struct.kvm, %struct.kvm* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  store i64 %213, i64* %14, align 8
  %214 = call i32 (...) @smp_rmb()
  %215 = call i32 @__pte(i64 0)
  store i32 %215, i32* %12, align 4
  %216 = load %struct.kvm*, %struct.kvm** %8, align 8
  %217 = getelementptr inbounds %struct.kvm, %struct.kvm* %216, i32 0, i32 1
  %218 = call i32 @spin_lock(i32* %217)
  %219 = load %struct.kvm*, %struct.kvm** %8, align 8
  %220 = getelementptr inbounds %struct.kvm, %struct.kvm* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i64, i64* %19, align 8
  %224 = call i32* @__find_linux_pte(i32 %222, i64 %223, i32* null, i32* %22)
  store i32* %224, i32** %13, align 8
  %225 = load i32, i32* %22, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %229, label %227

227:                                              ; preds = %210
  %228 = load i32, i32* @PAGE_SHIFT, align 4
  store i32 %228, i32* %22, align 4
  br label %229

229:                                              ; preds = %227, %210
  %230 = load i32*, i32** %13, align 8
  %231 = icmp ne i32* %230, null
  br i1 %231, label %232, label %235

232:                                              ; preds = %229
  %233 = load i32*, i32** %13, align 8
  %234 = load i32, i32* %233, align 4
  store i32 %234, i32* %12, align 4
  br label %235

235:                                              ; preds = %232, %229
  %236 = load %struct.kvm*, %struct.kvm** %8, align 8
  %237 = getelementptr inbounds %struct.kvm, %struct.kvm* %236, i32 0, i32 1
  %238 = call i32 @spin_unlock(i32* %237)
  %239 = load i32, i32* %12, align 4
  %240 = call i32 @pte_present(i32 %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %251

242:                                              ; preds = %235
  %243 = load i32, i32* %25, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %273

245:                                              ; preds = %242
  %246 = load i32, i32* %12, align 4
  %247 = call i64 @pte_val(i32 %246)
  %248 = load i64, i64* @_PAGE_WRITE, align 8
  %249 = and i64 %247, %248
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %273, label %251

251:                                              ; preds = %245, %235
  %252 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %253 = load i64, i64* %19, align 8
  %254 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %255 = load i32, i32* %25, align 4
  %256 = load i32, i32* %26, align 4
  %257 = call i64 @kvmppc_book3s_instantiate_page(%struct.kvm_vcpu* %252, i64 %253, %struct.kvm_memory_slot* %254, i32 %255, i32 %256, i32* %12, i32* %24)
  store i64 %257, i64* %27, align 8
  %258 = load i64, i64* %27, align 8
  %259 = load i64, i64* @EAGAIN, align 8
  %260 = sub nsw i64 0, %259
  %261 = icmp eq i64 %258, %260
  br i1 %261, label %262, label %264

262:                                              ; preds = %251
  %263 = load i64, i64* @RESUME_GUEST, align 8
  store i64 %263, i64* %4, align 8
  br label %446

264:                                              ; preds = %251
  %265 = load i64, i64* %27, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %264
  %268 = load i64, i64* %27, align 8
  store i64 %268, i64* %4, align 8
  br label %446

269:                                              ; preds = %264
  br label %270

270:                                              ; preds = %269
  %271 = load i32, i32* %24, align 4
  %272 = call i32 @kvmppc_radix_level_to_shift(i32 %271)
  store i32 %272, i32* %22, align 4
  br label %273

273:                                              ; preds = %270, %245, %242
  %274 = load i64, i64* %19, align 8
  %275 = load i32, i32* %22, align 4
  %276 = zext i32 %275 to i64
  %277 = shl i64 1, %276
  %278 = sub i64 %277, 1
  %279 = xor i64 %278, -1
  %280 = and i64 %274, %279
  %281 = load i32, i32* @PAGE_SHIFT, align 4
  %282 = zext i32 %281 to i64
  %283 = lshr i64 %280, %282
  store i64 %283, i64* %20, align 8
  %284 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %11, i32 0, i32 5
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %273
  br label %290

288:                                              ; preds = %273
  %289 = load i64, i64* @_PAGE_READ, align 8
  br label %290

290:                                              ; preds = %288, %287
  %291 = phi i64 [ 0, %287 ], [ %289, %288 ]
  %292 = load i64, i64* %21, align 8
  %293 = or i64 %292, %291
  store i64 %293, i64* %21, align 8
  %294 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %11, i32 0, i32 4
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %290
  br label %300

298:                                              ; preds = %290
  %299 = load i64, i64* @_PAGE_WRITE, align 8
  br label %300

300:                                              ; preds = %298, %297
  %301 = phi i64 [ 0, %297 ], [ %299, %298 ]
  %302 = load i64, i64* %21, align 8
  %303 = or i64 %302, %301
  store i64 %303, i64* %21, align 8
  %304 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %11, i32 0, i32 3
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %300
  br label %310

308:                                              ; preds = %300
  %309 = load i64, i64* @_PAGE_EXEC, align 8
  br label %310

310:                                              ; preds = %308, %307
  %311 = phi i64 [ 0, %307 ], [ %309, %308 ]
  %312 = load i64, i64* %21, align 8
  %313 = or i64 %312, %311
  store i64 %313, i64* %21, align 8
  %314 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %11, i32 0, i32 2
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* @_PAGE_ACCESSED, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %310
  br label %323

320:                                              ; preds = %310
  %321 = load i32, i32* @_PAGE_ACCESSED, align 4
  %322 = sext i32 %321 to i64
  br label %323

323:                                              ; preds = %320, %319
  %324 = phi i64 [ 0, %319 ], [ %322, %320 ]
  %325 = load i64, i64* %21, align 8
  %326 = or i64 %325, %324
  store i64 %326, i64* %21, align 8
  %327 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %11, i32 0, i32 2
  %328 = load i32, i32* %327, align 8
  %329 = sext i32 %328 to i64
  %330 = load i64, i64* @_PAGE_DIRTY, align 8
  %331 = and i64 %329, %330
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %337

333:                                              ; preds = %323
  %334 = load i32, i32* %25, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %333
  br label %339

337:                                              ; preds = %333, %323
  %338 = load i64, i64* @_PAGE_DIRTY, align 8
  br label %339

339:                                              ; preds = %337, %336
  %340 = phi i64 [ 0, %336 ], [ %338, %337 ]
  %341 = load i64, i64* %21, align 8
  %342 = or i64 %341, %340
  store i64 %342, i64* %21, align 8
  %343 = load i32, i32* %12, align 4
  %344 = call i64 @pte_val(i32 %343)
  %345 = load i64, i64* %21, align 8
  %346 = xor i64 %345, -1
  %347 = and i64 %344, %346
  %348 = call i32 @__pte(i64 %347)
  store i32 %348, i32* %12, align 4
  %349 = load i32, i32* %22, align 4
  %350 = load i32, i32* %23, align 4
  %351 = icmp ugt i32 %349, %350
  br i1 %351, label %352, label %375

352:                                              ; preds = %339
  %353 = load i32, i32* @PAGE_SHIFT, align 4
  store i32 %353, i32* %29, align 4
  %354 = load i32, i32* @PMD_SHIFT, align 4
  %355 = load i32, i32* %23, align 4
  %356 = icmp ult i32 %354, %355
  br i1 %356, label %357, label %359

357:                                              ; preds = %352
  %358 = load i32, i32* @PMD_SHIFT, align 4
  store i32 %358, i32* %29, align 4
  br label %359

359:                                              ; preds = %357, %352
  %360 = load i32, i32* %22, align 4
  %361 = zext i32 %360 to i64
  %362 = shl i64 1, %361
  %363 = load i32, i32* %29, align 4
  %364 = zext i32 %363 to i64
  %365 = shl i64 1, %364
  %366 = sub i64 %362, %365
  store i64 %366, i64* %28, align 8
  %367 = load i32, i32* %12, align 4
  %368 = call i64 @pte_val(i32 %367)
  %369 = load i64, i64* %19, align 8
  %370 = load i64, i64* %28, align 8
  %371 = and i64 %369, %370
  %372 = or i64 %368, %371
  %373 = call i32 @__pte(i64 %372)
  store i32 %373, i32* %12, align 4
  %374 = load i32, i32* %29, align 4
  store i32 %374, i32* %22, align 4
  br label %375

375:                                              ; preds = %359, %339
  %376 = load i32, i32* %22, align 4
  %377 = call i32 @kvmppc_radix_shift_to_level(i32 %376)
  store i32 %377, i32* %24, align 4
  %378 = load i32, i32* %22, align 4
  %379 = zext i32 %378 to i64
  %380 = shl i64 1, %379
  %381 = sub i64 %380, 1
  %382 = xor i64 %381, -1
  %383 = load i64, i64* %18, align 8
  %384 = and i64 %383, %382
  store i64 %384, i64* %18, align 8
  %385 = load i32, i32* @GFP_KERNEL, align 4
  %386 = call %struct.rmap_nested* @kzalloc(i32 8, i32 %385)
  store %struct.rmap_nested* %386, %struct.rmap_nested** %10, align 8
  %387 = load %struct.rmap_nested*, %struct.rmap_nested** %10, align 8
  %388 = icmp ne %struct.rmap_nested* %387, null
  br i1 %388, label %391, label %389

389:                                              ; preds = %375
  %390 = load i64, i64* @RESUME_GUEST, align 8
  store i64 %390, i64* %4, align 8
  br label %446

391:                                              ; preds = %375
  %392 = load i64, i64* %18, align 8
  %393 = load i64, i64* @RMAP_NESTED_GPA_MASK, align 8
  %394 = and i64 %392, %393
  %395 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %7, align 8
  %396 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %395, i32 0, i32 2
  %397 = load i64, i64* %396, align 8
  %398 = load i64, i64* @RMAP_NESTED_LPID_SHIFT, align 8
  %399 = shl i64 %397, %398
  %400 = or i64 %394, %399
  %401 = load %struct.rmap_nested*, %struct.rmap_nested** %10, align 8
  %402 = getelementptr inbounds %struct.rmap_nested, %struct.rmap_nested* %401, i32 0, i32 0
  store i64 %400, i64* %402, align 8
  %403 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %404 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %403, i32 0, i32 2
  %405 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %404, i32 0, i32 0
  %406 = load i64*, i64** %405, align 8
  %407 = load i64, i64* %20, align 8
  %408 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %409 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %408, i32 0, i32 1
  %410 = load i64, i64* %409, align 8
  %411 = sub i64 %407, %410
  %412 = getelementptr inbounds i64, i64* %406, i64 %411
  store i64* %412, i64** %17, align 8
  %413 = load %struct.kvm*, %struct.kvm** %8, align 8
  %414 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %7, align 8
  %415 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 4
  %417 = load i32, i32* %12, align 4
  %418 = load i64, i64* %18, align 8
  %419 = load i32, i32* %24, align 4
  %420 = load i64, i64* %14, align 8
  %421 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %7, align 8
  %422 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 8
  %424 = load i64*, i64** %17, align 8
  %425 = call i64 @kvmppc_create_pte(%struct.kvm* %413, i32 %416, i32 %417, i64 %418, i32 %419, i64 %420, i32 %423, i64* %424, %struct.rmap_nested** %10)
  store i64 %425, i64* %27, align 8
  %426 = load %struct.rmap_nested*, %struct.rmap_nested** %10, align 8
  %427 = icmp ne %struct.rmap_nested* %426, null
  br i1 %427, label %428, label %431

428:                                              ; preds = %391
  %429 = load %struct.rmap_nested*, %struct.rmap_nested** %10, align 8
  %430 = call i32 @kfree(%struct.rmap_nested* %429)
  br label %431

431:                                              ; preds = %428, %391
  %432 = load i64, i64* %27, align 8
  %433 = load i64, i64* @EAGAIN, align 8
  %434 = sub nsw i64 0, %433
  %435 = icmp eq i64 %432, %434
  br i1 %435, label %436, label %438

436:                                              ; preds = %431
  %437 = load i64, i64* @RESUME_GUEST, align 8
  store i64 %437, i64* %27, align 8
  br label %438

438:                                              ; preds = %436, %431
  %439 = load i64, i64* %27, align 8
  store i64 %439, i64* %4, align 8
  br label %446

440:                                              ; preds = %123, %98
  %441 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %442 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %7, align 8
  %443 = load i64, i64* %18, align 8
  %444 = call i32 @kvmhv_invalidate_shadow_pte(%struct.kvm_vcpu* %441, %struct.kvm_nested_guest* %442, i64 %443, i32* null)
  %445 = load i64, i64* @RESUME_GUEST, align 8
  store i64 %445, i64* %4, align 8
  br label %446

446:                                              ; preds = %440, %438, %389, %267, %262, %201, %184, %178, %146, %137, %118, %102, %59
  %447 = load i64, i64* %4, align 8
  ret i64 %447
}

declare dso_local i32 @kvmhv_update_ptbl_cache(%struct.kvm_nested_guest*) #1

declare dso_local i64 @kvmhv_translate_addr_nested(%struct.kvm_vcpu*, %struct.kvm_nested_guest*, i64, i64, %struct.kvmppc_pte*) #1

declare dso_local i64 @kvmhv_handle_nested_set_rc(%struct.kvm_vcpu*, %struct.kvm_nested_guest*, i64, %struct.kvmppc_pte* byval(%struct.kvmppc_pte) align 8, i64) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local %struct.kvm_memory_slot* @gfn_to_memslot(%struct.kvm*, i64) #1

declare dso_local i32 @kvmppc_core_queue_data_storage(%struct.kvm_vcpu*, i64, i64) #1

declare dso_local i64 @kvmppc_hv_emulate_mmio(%struct.kvm_run*, %struct.kvm_vcpu*, i64, i64, i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @__pte(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32* @__find_linux_pte(i32, i64, i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pte_present(i32) #1

declare dso_local i64 @pte_val(i32) #1

declare dso_local i64 @kvmppc_book3s_instantiate_page(%struct.kvm_vcpu*, i64, %struct.kvm_memory_slot*, i32, i32, i32*, i32*) #1

declare dso_local i32 @kvmppc_radix_level_to_shift(i32) #1

declare dso_local i32 @kvmppc_radix_shift_to_level(i32) #1

declare dso_local %struct.rmap_nested* @kzalloc(i32, i32) #1

declare dso_local i64 @kvmppc_create_pte(%struct.kvm*, i32, i32, i64, i32, i64, i32, i64*, %struct.rmap_nested**) #1

declare dso_local i32 @kfree(%struct.rmap_nested*) #1

declare dso_local i32 @kvmhv_invalidate_shadow_pte(%struct.kvm_vcpu*, %struct.kvm_nested_guest*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
