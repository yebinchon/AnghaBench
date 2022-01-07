; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_vmexit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_vmexit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.vcpu_vmx = type { i64, %struct.TYPE_9__, %struct.TYPE_8__, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i64, i32*, i32, i32, i32*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.vmcs12 = type { i32, i32, i32, i32, i32, i32, i64 }

@CPU_BASED_USE_TSC_OFFSETING = common dso_local global i32 0, align 4
@VM_INSTRUCTION_ERROR = common dso_local global i32 0, align 4
@VMXERR_ENTRY_INVALID_CONTROL_FIELD = common dso_local global i64 0, align 8
@nested_early_check = common dso_local global i32 0, align 4
@VM_EXIT_MSR_LOAD_COUNT = common dso_local global i32 0, align 4
@VM_ENTRY_MSR_LOAD_COUNT = common dso_local global i32 0, align 4
@TSC_OFFSET = common dso_local global i32 0, align 4
@kvm_has_tsc_control = common dso_local global i64 0, align 8
@SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES = common dso_local global i32 0, align 4
@KVM_REQ_APIC_PAGE_RELOAD = common dso_local global i32 0, align 4
@enable_shadow_vmcs = common dso_local global i64 0, align 8
@KVM_MP_STATE_RUNNABLE = common dso_local global i32 0, align 4
@EXIT_REASON_EXTERNAL_INTERRUPT = common dso_local global i32 0, align 4
@INTR_INFO_VALID_MASK = common dso_local global i32 0, align 4
@INTR_TYPE_EXT_INTR = common dso_local global i32 0, align 4
@KVM_ISA_VMX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nested_vmx_vmexit(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.vcpu_vmx*, align 8
  %10 = alloca %struct.vmcs12*, align 8
  %11 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %13 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %12)
  store %struct.vcpu_vmx* %13, %struct.vcpu_vmx** %9, align 8
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %15 = call %struct.vmcs12* @get_vmcs12(%struct.kvm_vcpu* %14)
  store %struct.vmcs12* %15, %struct.vmcs12** %10, align 8
  %16 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %9, align 8
  %17 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @WARN_ON_ONCE(i32 %19)
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %22 = call i32 @leave_guest_mode(%struct.kvm_vcpu* %21)
  %23 = load %struct.vmcs12*, %struct.vmcs12** %10, align 8
  %24 = call i64 @nested_cpu_has_preemption_timer(%struct.vmcs12* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %4
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %28 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %27)
  %29 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 8
  %31 = call i32 @hrtimer_cancel(i32* %30)
  br label %32

32:                                               ; preds = %26, %4
  %33 = load %struct.vmcs12*, %struct.vmcs12** %10, align 8
  %34 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CPU_BASED_USE_TSC_OFFSETING, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %32
  %40 = load %struct.vmcs12*, %struct.vmcs12** %10, align 8
  %41 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %44 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %47, %42
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 4
  br label %50

50:                                               ; preds = %39, %32
  %51 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %9, align 8
  %52 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @likely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %50
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %61 = load %struct.vmcs12*, %struct.vmcs12** %10, align 8
  %62 = call i32 @sync_vmcs02_to_vmcs12(%struct.kvm_vcpu* %60, %struct.vmcs12* %61)
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, -1
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %67 = load %struct.vmcs12*, %struct.vmcs12** %10, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @prepare_vmcs12(%struct.kvm_vcpu* %66, %struct.vmcs12* %67, i32 %68, i32 %69, i64 %70)
  br label %72

72:                                               ; preds = %65, %59
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %74 = load %struct.vmcs12*, %struct.vmcs12** %10, align 8
  %75 = call i32 @nested_flush_cached_shadow_vmcs12(%struct.kvm_vcpu* %73, %struct.vmcs12* %74)
  br label %85

76:                                               ; preds = %50
  %77 = load i32, i32* @VM_INSTRUCTION_ERROR, align 4
  %78 = call i64 @vmcs_read32(i32 %77)
  %79 = load i64, i64* @VMXERR_ENTRY_INVALID_CONTROL_FIELD, align 8
  %80 = icmp ne i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @WARN_ON_ONCE(i32 %81)
  %83 = load i32, i32* @nested_early_check, align 4
  %84 = call i32 @WARN_ON_ONCE(i32 %83)
  br label %85

85:                                               ; preds = %76, %72
  %86 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %87 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %9, align 8
  %88 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %87, i32 0, i32 3
  %89 = call i32 @vmx_switch_vmcs(%struct.kvm_vcpu* %86, i32* %88)
  %90 = load i32, i32* @VM_EXIT_MSR_LOAD_COUNT, align 4
  %91 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %9, align 8
  %92 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @vmcs_write32(i32 %90, i32 %95)
  %97 = load i32, i32* @VM_ENTRY_MSR_LOAD_COUNT, align 4
  %98 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %9, align 8
  %99 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @vmcs_write32(i32 %97, i32 %102)
  %104 = load i32, i32* @TSC_OFFSET, align 4
  %105 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %106 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @vmcs_write64(i32 %104, i32 %108)
  %110 = load i64, i64* @kvm_has_tsc_control, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %85
  %113 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %9, align 8
  %114 = call i32 @decache_tsc_multiplier(%struct.vcpu_vmx* %113)
  br label %115

115:                                              ; preds = %112, %85
  %116 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %9, align 8
  %117 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %9, align 8
  %123 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  store i32 0, i32* %124, align 4
  %125 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %126 = call i32 @vmx_set_virtual_apic_mode(%struct.kvm_vcpu* %125)
  br label %140

127:                                              ; preds = %115
  %128 = load %struct.vmcs12*, %struct.vmcs12** %10, align 8
  %129 = call i32 @nested_cpu_has_ept(%struct.vmcs12* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %127
  %132 = load %struct.vmcs12*, %struct.vmcs12** %10, align 8
  %133 = load i32, i32* @SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES, align 4
  %134 = call i64 @nested_cpu_has2(%struct.vmcs12* %132, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %138 = call i32 @vmx_flush_tlb(%struct.kvm_vcpu* %137, i32 1)
  br label %139

139:                                              ; preds = %136, %131, %127
  br label %140

140:                                              ; preds = %139, %121
  %141 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %9, align 8
  %142 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 7
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %155

146:                                              ; preds = %140
  %147 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %9, align 8
  %148 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 7
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @kvm_release_page_dirty(i32* %150)
  %152 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %9, align 8
  %153 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 7
  store i32* null, i32** %154, align 8
  br label %155

155:                                              ; preds = %146, %140
  %156 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %157 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %9, align 8
  %158 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 6
  %160 = call i32 @kvm_vcpu_unmap(%struct.kvm_vcpu* %156, i32* %159, i32 1)
  %161 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %162 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %9, align 8
  %163 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 5
  %165 = call i32 @kvm_vcpu_unmap(%struct.kvm_vcpu* %161, i32* %164, i32 1)
  %166 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %9, align 8
  %167 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 4
  store i32* null, i32** %168, align 8
  %169 = load i32, i32* @KVM_REQ_APIC_PAGE_RELOAD, align 4
  %170 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %171 = call i32 @kvm_make_request(i32 %169, %struct.kvm_vcpu* %170)
  %172 = load i32, i32* %6, align 4
  %173 = icmp ne i32 %172, -1
  br i1 %173, label %174, label %187

174:                                              ; preds = %155
  %175 = load i64, i64* @enable_shadow_vmcs, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %174
  %178 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %9, align 8
  %179 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %177, %174
  %184 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %9, align 8
  %185 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 2
  store i32 1, i32* %186, align 8
  br label %187

187:                                              ; preds = %183, %177, %155
  %188 = load i32, i32* @KVM_MP_STATE_RUNNABLE, align 4
  %189 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %190 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  store i32 %188, i32* %191, align 4
  %192 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %9, align 8
  %193 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  %196 = xor i1 %195, true
  %197 = zext i1 %196 to i32
  %198 = call i64 @likely(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %251

200:                                              ; preds = %187
  %201 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %202 = call i64 @nested_exit_intr_ack_set(%struct.kvm_vcpu* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %226

204:                                              ; preds = %200
  %205 = load i32, i32* %6, align 4
  %206 = load i32, i32* @EXIT_REASON_EXTERNAL_INTERRUPT, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %226

208:                                              ; preds = %204
  %209 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %210 = call i64 @kvm_cpu_has_interrupt(%struct.kvm_vcpu* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %226

212:                                              ; preds = %208
  %213 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %214 = call i32 @kvm_cpu_get_interrupt(%struct.kvm_vcpu* %213)
  store i32 %214, i32* %11, align 4
  %215 = load i32, i32* %11, align 4
  %216 = icmp slt i32 %215, 0
  %217 = zext i1 %216 to i32
  %218 = call i32 @WARN_ON(i32 %217)
  %219 = load i32, i32* %11, align 4
  %220 = load i32, i32* @INTR_INFO_VALID_MASK, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* @INTR_TYPE_EXT_INTR, align 4
  %223 = or i32 %221, %222
  %224 = load %struct.vmcs12*, %struct.vmcs12** %10, align 8
  %225 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %224, i32 0, i32 1
  store i32 %223, i32* %225, align 4
  br label %226

226:                                              ; preds = %212, %208, %204, %200
  %227 = load i32, i32* %6, align 4
  %228 = icmp ne i32 %227, -1
  br i1 %228, label %229, label %247

229:                                              ; preds = %226
  %230 = load %struct.vmcs12*, %struct.vmcs12** %10, align 8
  %231 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.vmcs12*, %struct.vmcs12** %10, align 8
  %234 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.vmcs12*, %struct.vmcs12** %10, align 8
  %237 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.vmcs12*, %struct.vmcs12** %10, align 8
  %240 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.vmcs12*, %struct.vmcs12** %10, align 8
  %243 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @KVM_ISA_VMX, align 4
  %246 = call i32 @trace_kvm_nested_vmexit_inject(i32 %232, i32 %235, i32 %238, i32 %241, i32 %244, i32 %245)
  br label %247

247:                                              ; preds = %229, %226
  %248 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %249 = load %struct.vmcs12*, %struct.vmcs12** %10, align 8
  %250 = call i32 @load_vmcs12_host_state(%struct.kvm_vcpu* %248, %struct.vmcs12* %249)
  br label %259

251:                                              ; preds = %187
  %252 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %253 = load i64, i64* @VMXERR_ENTRY_INVALID_CONTROL_FIELD, align 8
  %254 = call i32 @nested_vmx_failValid(%struct.kvm_vcpu* %252, i64 %253)
  %255 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %256 = call i32 @nested_vmx_restore_host_state(%struct.kvm_vcpu* %255)
  %257 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %9, align 8
  %258 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %257, i32 0, i32 0
  store i64 0, i64* %258, align 8
  br label %259

259:                                              ; preds = %251, %247
  ret void
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local %struct.vmcs12* @get_vmcs12(%struct.kvm_vcpu*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @leave_guest_mode(%struct.kvm_vcpu*) #1

declare dso_local i64 @nested_cpu_has_preemption_timer(%struct.vmcs12*) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @sync_vmcs02_to_vmcs12(%struct.kvm_vcpu*, %struct.vmcs12*) #1

declare dso_local i32 @prepare_vmcs12(%struct.kvm_vcpu*, %struct.vmcs12*, i32, i32, i64) #1

declare dso_local i32 @nested_flush_cached_shadow_vmcs12(%struct.kvm_vcpu*, %struct.vmcs12*) #1

declare dso_local i64 @vmcs_read32(i32) #1

declare dso_local i32 @vmx_switch_vmcs(%struct.kvm_vcpu*, i32*) #1

declare dso_local i32 @vmcs_write32(i32, i32) #1

declare dso_local i32 @vmcs_write64(i32, i32) #1

declare dso_local i32 @decache_tsc_multiplier(%struct.vcpu_vmx*) #1

declare dso_local i32 @vmx_set_virtual_apic_mode(%struct.kvm_vcpu*) #1

declare dso_local i32 @nested_cpu_has_ept(%struct.vmcs12*) #1

declare dso_local i64 @nested_cpu_has2(%struct.vmcs12*, i32) #1

declare dso_local i32 @vmx_flush_tlb(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_release_page_dirty(i32*) #1

declare dso_local i32 @kvm_vcpu_unmap(%struct.kvm_vcpu*, i32*, i32) #1

declare dso_local i32 @kvm_make_request(i32, %struct.kvm_vcpu*) #1

declare dso_local i64 @nested_exit_intr_ack_set(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_cpu_has_interrupt(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_cpu_get_interrupt(%struct.kvm_vcpu*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @trace_kvm_nested_vmexit_inject(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @load_vmcs12_host_state(%struct.kvm_vcpu*, %struct.vmcs12*) #1

declare dso_local i32 @nested_vmx_failValid(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @nested_vmx_restore_host_state(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
