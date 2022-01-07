; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_prepare_vmcs02_early.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_prepare_vmcs02_early.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_vmx = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64, i32, i64, i64 }
%struct.vmcs12 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PIN_BASED_VMX_PREEMPTION_TIMER = common dso_local global i32 0, align 4
@PIN_BASED_POSTED_INTR = common dso_local global i32 0, align 4
@CPU_BASED_VIRTUAL_INTR_PENDING = common dso_local global i32 0, align 4
@CPU_BASED_VIRTUAL_NMI_PENDING = common dso_local global i32 0, align 4
@CPU_BASED_TPR_SHADOW = common dso_local global i32 0, align 4
@TPR_THRESHOLD = common dso_local global i32 0, align 4
@CPU_BASED_UNCOND_IO_EXITING = common dso_local global i32 0, align 4
@CPU_BASED_USE_IO_BITMAPS = common dso_local global i32 0, align 4
@CPU_BASED_USE_MSR_BITMAPS = common dso_local global i32 0, align 4
@SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES = common dso_local global i32 0, align 4
@SECONDARY_EXEC_ENABLE_INVPCID = common dso_local global i32 0, align 4
@SECONDARY_EXEC_RDTSCP = common dso_local global i32 0, align 4
@SECONDARY_EXEC_XSAVES = common dso_local global i32 0, align 4
@SECONDARY_EXEC_ENABLE_USR_WAIT_PAUSE = common dso_local global i32 0, align 4
@SECONDARY_EXEC_VIRTUAL_INTR_DELIVERY = common dso_local global i32 0, align 4
@SECONDARY_EXEC_APIC_REGISTER_VIRT = common dso_local global i32 0, align 4
@SECONDARY_EXEC_ENABLE_VMFUNC = common dso_local global i32 0, align 4
@CPU_BASED_ACTIVATE_SECONDARY_CONTROLS = common dso_local global i32 0, align 4
@SECONDARY_EXEC_ENABLE_PML = common dso_local global i32 0, align 4
@SECONDARY_EXEC_SHADOW_VMCS = common dso_local global i32 0, align 4
@X86_FEATURE_UMIP = common dso_local global i32 0, align 4
@X86_CR4_UMIP = common dso_local global i32 0, align 4
@SECONDARY_EXEC_DESC = common dso_local global i32 0, align 4
@GUEST_INTR_STATUS = common dso_local global i32 0, align 4
@VM_ENTRY_IA32E_MODE = common dso_local global i32 0, align 4
@VM_ENTRY_LOAD_IA32_EFER = common dso_local global i32 0, align 4
@EFER_LMA = common dso_local global i32 0, align 4
@host_efer = common dso_local global i32 0, align 4
@VM_EXIT_LOAD_IA32_EFER = common dso_local global i32 0, align 4
@VM_ENTRY_INTR_INFO_FIELD = common dso_local global i32 0, align 4
@VM_ENTRY_EXCEPTION_ERROR_CODE = common dso_local global i32 0, align 4
@VM_ENTRY_INSTRUCTION_LEN = common dso_local global i32 0, align 4
@GUEST_INTERRUPTIBILITY_INFO = common dso_local global i32 0, align 4
@GUEST_INTR_STATE_NMI = common dso_local global i32 0, align 4
@CPU_BASED_CR8_LOAD_EXITING = common dso_local global i32 0, align 4
@CPU_BASED_CR8_STORE_EXITING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_vmx*, %struct.vmcs12*)* @prepare_vmcs02_early to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_vmcs02_early(%struct.vcpu_vmx* %0, %struct.vmcs12* %1) #0 {
  %3 = alloca %struct.vcpu_vmx*, align 8
  %4 = alloca %struct.vmcs12*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %3, align 8
  store %struct.vmcs12* %1, %struct.vmcs12** %4, align 8
  %8 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %9 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %10 = call i32 @nested_vmx_calc_efer(%struct.vcpu_vmx* %8, %struct.vmcs12* %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %12 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %18 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16, %2
  %23 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %24 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %25 = call i32 @prepare_vmcs02_early_rare(%struct.vcpu_vmx* %23, %struct.vmcs12* %24)
  br label %26

26:                                               ; preds = %22, %16
  %27 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %28 = call i32 @vmx_pin_based_exec_ctrl(%struct.vcpu_vmx* %27)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %30 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PIN_BASED_VMX_PREEMPTION_TIMER, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %38 = call i64 @nested_cpu_has_posted_intr(%struct.vmcs12* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %26
  %41 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %42 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %41, i32 0, i32 11
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %45 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 8
  %47 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %48 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  br label %55

50:                                               ; preds = %26
  %51 = load i32, i32* @PIN_BASED_POSTED_INTR, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %50, %40
  %56 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @pin_controls_set(%struct.vcpu_vmx* %56, i32 %57)
  %59 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %60 = call i32 @vmx_exec_control(%struct.vcpu_vmx* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* @CPU_BASED_VIRTUAL_INTR_PENDING, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* @CPU_BASED_VIRTUAL_NMI_PENDING, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* @CPU_BASED_TPR_SHADOW, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %5, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %74 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @CPU_BASED_TPR_SHADOW, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %55
  %83 = load i32, i32* @TPR_THRESHOLD, align 4
  %84 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %85 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @vmcs_write32(i32 %83, i32 %86)
  br label %88

88:                                               ; preds = %82, %55
  %89 = load i32, i32* @CPU_BASED_UNCOND_IO_EXITING, align 4
  %90 = load i32, i32* %5, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* @CPU_BASED_USE_IO_BITMAPS, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %5, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* @CPU_BASED_USE_MSR_BITMAPS, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %5, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %5, align 4
  %100 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %101 = call i32 @exec_controls_get(%struct.vcpu_vmx* %100)
  %102 = load i32, i32* @CPU_BASED_USE_MSR_BITMAPS, align 4
  %103 = and i32 %101, %102
  %104 = load i32, i32* %5, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %5, align 4
  %106 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @exec_controls_set(%struct.vcpu_vmx* %106, i32 %107)
  %109 = call i64 (...) @cpu_has_secondary_exec_ctrls()
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %184

111:                                              ; preds = %88
  %112 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %113 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* @SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES, align 4
  %116 = load i32, i32* @SECONDARY_EXEC_ENABLE_INVPCID, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @SECONDARY_EXEC_RDTSCP, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @SECONDARY_EXEC_XSAVES, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @SECONDARY_EXEC_ENABLE_USR_WAIT_PAUSE, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @SECONDARY_EXEC_VIRTUAL_INTR_DELIVERY, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @SECONDARY_EXEC_APIC_REGISTER_VIRT, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @SECONDARY_EXEC_ENABLE_VMFUNC, align 4
  %129 = or i32 %127, %128
  %130 = xor i32 %129, -1
  %131 = load i32, i32* %5, align 4
  %132 = and i32 %131, %130
  store i32 %132, i32* %5, align 4
  %133 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %134 = load i32, i32* @CPU_BASED_ACTIVATE_SECONDARY_CONTROLS, align 4
  %135 = call i64 @nested_cpu_has(%struct.vmcs12* %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %111
  %138 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %139 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @SECONDARY_EXEC_ENABLE_PML, align 4
  %142 = xor i32 %141, -1
  %143 = and i32 %140, %142
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %5, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %137, %111
  %148 = load i32, i32* @SECONDARY_EXEC_SHADOW_VMCS, align 4
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %5, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %5, align 4
  %152 = load i32, i32* @X86_FEATURE_UMIP, align 4
  %153 = call i32 @boot_cpu_has(i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %169, label %155

155:                                              ; preds = %147
  %156 = call i64 (...) @vmx_umip_emulated()
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %155
  %159 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %160 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @X86_CR4_UMIP, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %158
  %166 = load i32, i32* @SECONDARY_EXEC_DESC, align 4
  %167 = load i32, i32* %5, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %5, align 4
  br label %169

169:                                              ; preds = %165, %158, %155, %147
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* @SECONDARY_EXEC_VIRTUAL_INTR_DELIVERY, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = load i32, i32* @GUEST_INTR_STATUS, align 4
  %176 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %177 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %176, i32 0, i32 10
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @vmcs_write16(i32 %175, i32 %178)
  br label %180

180:                                              ; preds = %174, %169
  %181 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %182 = load i32, i32* %5, align 4
  %183 = call i32 @secondary_exec_controls_set(%struct.vcpu_vmx* %181, i32 %182)
  br label %184

184:                                              ; preds = %180, %88
  %185 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %186 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 4
  %188 = call i32 (...) @vmx_vmentry_ctrl()
  %189 = or i32 %187, %188
  %190 = load i32, i32* @VM_ENTRY_IA32E_MODE, align 4
  %191 = xor i32 %190, -1
  %192 = and i32 %189, %191
  %193 = load i32, i32* @VM_ENTRY_LOAD_IA32_EFER, align 4
  %194 = xor i32 %193, -1
  %195 = and i32 %192, %194
  store i32 %195, i32* %5, align 4
  %196 = call i64 (...) @cpu_has_load_ia32_efer()
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %216

198:                                              ; preds = %184
  %199 = load i32, i32* %7, align 4
  %200 = load i32, i32* @EFER_LMA, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = load i32, i32* @VM_ENTRY_IA32E_MODE, align 4
  %205 = load i32, i32* %5, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %5, align 4
  br label %207

207:                                              ; preds = %203, %198
  %208 = load i32, i32* %7, align 4
  %209 = load i32, i32* @host_efer, align 4
  %210 = icmp ne i32 %208, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %207
  %212 = load i32, i32* @VM_ENTRY_LOAD_IA32_EFER, align 4
  %213 = load i32, i32* %5, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %5, align 4
  br label %215

215:                                              ; preds = %211, %207
  br label %216

216:                                              ; preds = %215, %184
  %217 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %218 = load i32, i32* %5, align 4
  %219 = call i32 @vm_entry_controls_set(%struct.vcpu_vmx* %217, i32 %218)
  %220 = call i32 (...) @vmx_vmexit_ctrl()
  store i32 %220, i32* %5, align 4
  %221 = call i64 (...) @cpu_has_load_ia32_efer()
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %231

223:                                              ; preds = %216
  %224 = load i32, i32* %7, align 4
  %225 = load i32, i32* @host_efer, align 4
  %226 = icmp ne i32 %224, %225
  br i1 %226, label %227, label %231

227:                                              ; preds = %223
  %228 = load i32, i32* @VM_EXIT_LOAD_IA32_EFER, align 4
  %229 = load i32, i32* %5, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %5, align 4
  br label %231

231:                                              ; preds = %227, %223, %216
  %232 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %233 = load i32, i32* %5, align 4
  %234 = call i32 @vm_exit_controls_set(%struct.vcpu_vmx* %232, i32 %233)
  %235 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %236 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %273

240:                                              ; preds = %231
  %241 = load i32, i32* @VM_ENTRY_INTR_INFO_FIELD, align 4
  %242 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %243 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %242, i32 0, i32 6
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @vmcs_write32(i32 %241, i32 %244)
  %246 = load i32, i32* @VM_ENTRY_EXCEPTION_ERROR_CODE, align 4
  %247 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %248 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %247, i32 0, i32 7
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @vmcs_write32(i32 %246, i32 %249)
  %251 = load i32, i32* @VM_ENTRY_INSTRUCTION_LEN, align 4
  %252 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %253 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %252, i32 0, i32 8
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @vmcs_write32(i32 %251, i32 %254)
  %256 = load i32, i32* @GUEST_INTERRUPTIBILITY_INFO, align 4
  %257 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %258 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %257, i32 0, i32 9
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @vmcs_write32(i32 %256, i32 %259)
  %261 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %262 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %261, i32 0, i32 9
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @GUEST_INTR_STATE_NMI, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  %267 = xor i1 %266, true
  %268 = zext i1 %267 to i32
  %269 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %270 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %269, i32 0, i32 1
  %271 = load %struct.TYPE_4__*, %struct.TYPE_4__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 0
  store i32 %268, i32* %272, align 4
  br label %276

273:                                              ; preds = %231
  %274 = load i32, i32* @VM_ENTRY_INTR_INFO_FIELD, align 4
  %275 = call i32 @vmcs_write32(i32 %274, i32 0)
  br label %276

276:                                              ; preds = %273, %240
  ret void
}

declare dso_local i32 @nested_vmx_calc_efer(%struct.vcpu_vmx*, %struct.vmcs12*) #1

declare dso_local i32 @prepare_vmcs02_early_rare(%struct.vcpu_vmx*, %struct.vmcs12*) #1

declare dso_local i32 @vmx_pin_based_exec_ctrl(%struct.vcpu_vmx*) #1

declare dso_local i64 @nested_cpu_has_posted_intr(%struct.vmcs12*) #1

declare dso_local i32 @pin_controls_set(%struct.vcpu_vmx*, i32) #1

declare dso_local i32 @vmx_exec_control(%struct.vcpu_vmx*) #1

declare dso_local i32 @vmcs_write32(i32, i32) #1

declare dso_local i32 @exec_controls_get(%struct.vcpu_vmx*) #1

declare dso_local i32 @exec_controls_set(%struct.vcpu_vmx*, i32) #1

declare dso_local i64 @cpu_has_secondary_exec_ctrls(...) #1

declare dso_local i64 @nested_cpu_has(%struct.vmcs12*, i32) #1

declare dso_local i32 @boot_cpu_has(i32) #1

declare dso_local i64 @vmx_umip_emulated(...) #1

declare dso_local i32 @vmcs_write16(i32, i32) #1

declare dso_local i32 @secondary_exec_controls_set(%struct.vcpu_vmx*, i32) #1

declare dso_local i32 @vmx_vmentry_ctrl(...) #1

declare dso_local i64 @cpu_has_load_ia32_efer(...) #1

declare dso_local i32 @vm_entry_controls_set(%struct.vcpu_vmx*, i32) #1

declare dso_local i32 @vmx_vmexit_ctrl(...) #1

declare dso_local i32 @vm_exit_controls_set(%struct.vcpu_vmx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
