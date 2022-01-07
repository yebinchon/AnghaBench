; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_vcpu_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_vcpu_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.vcpu_vmx = type { i32, i32, i32, %struct.TYPE_20__, i32, %struct.TYPE_11__, %struct.TYPE_16__*, %struct.TYPE_15__, i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_20__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32, i64, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32* }

@nested = common dso_local global i64 0, align 8
@MSR_BITMAP = common dso_local global i32 0, align 4
@VMCS_LINK_POINTER = common dso_local global i32 0, align 4
@EOI_EXIT_BITMAP0 = common dso_local global i32 0, align 4
@EOI_EXIT_BITMAP1 = common dso_local global i32 0, align 4
@EOI_EXIT_BITMAP2 = common dso_local global i32 0, align 4
@EOI_EXIT_BITMAP3 = common dso_local global i32 0, align 4
@GUEST_INTR_STATUS = common dso_local global i32 0, align 4
@POSTED_INTR_NV = common dso_local global i32 0, align 4
@POSTED_INTR_VECTOR = common dso_local global i64 0, align 8
@POSTED_INTR_DESC_ADDR = common dso_local global i32 0, align 4
@PLE_GAP = common dso_local global i32 0, align 4
@ple_gap = common dso_local global i32 0, align 4
@ple_window = common dso_local global i32 0, align 4
@PAGE_FAULT_ERROR_CODE_MASK = common dso_local global i32 0, align 4
@PAGE_FAULT_ERROR_CODE_MATCH = common dso_local global i32 0, align 4
@CR3_TARGET_COUNT = common dso_local global i32 0, align 4
@HOST_FS_SELECTOR = common dso_local global i32 0, align 4
@HOST_GS_SELECTOR = common dso_local global i32 0, align 4
@HOST_FS_BASE = common dso_local global i32 0, align 4
@HOST_GS_BASE = common dso_local global i32 0, align 4
@VM_FUNCTION_CONTROL = common dso_local global i32 0, align 4
@VM_EXIT_MSR_STORE_COUNT = common dso_local global i32 0, align 4
@VM_EXIT_MSR_LOAD_COUNT = common dso_local global i32 0, align 4
@VM_EXIT_MSR_LOAD_ADDR = common dso_local global i32 0, align 4
@VM_ENTRY_MSR_LOAD_COUNT = common dso_local global i32 0, align 4
@VM_ENTRY_MSR_LOAD_ADDR = common dso_local global i32 0, align 4
@vmcs_config = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@VM_ENTRY_LOAD_IA32_PAT = common dso_local global i32 0, align 4
@GUEST_IA32_PAT = common dso_local global i32 0, align 4
@vmx_msr_index = common dso_local global i32* null, align 8
@X86_CR0_TS = common dso_local global i32 0, align 4
@CR0_GUEST_HOST_MASK = common dso_local global i32 0, align 4
@XSS_EXIT_BITMAP = common dso_local global i32 0, align 4
@VMX_XSS_EXIT_BITMAP = common dso_local global i64 0, align 8
@enable_pml = common dso_local global i64 0, align 8
@PML_ADDRESS = common dso_local global i32 0, align 4
@GUEST_PML_INDEX = common dso_local global i32 0, align 4
@PML_ENTITY_NUM = common dso_local global i64 0, align 8
@ENCLS_EXITING_BITMAP = common dso_local global i32 0, align 4
@pt_mode = common dso_local global i64 0, align 8
@PT_MODE_HOST_GUEST = common dso_local global i64 0, align 8
@GUEST_IA32_RTIT_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_vmx*)* @vmx_vcpu_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_vcpu_setup(%struct.vcpu_vmx* %0) #0 {
  %2 = alloca %struct.vcpu_vmx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %2, align 8
  %8 = load i64, i64* @nested, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 (...) @nested_vmx_vcpu_setup()
  br label %12

12:                                               ; preds = %10, %1
  %13 = call i64 (...) @cpu_has_vmx_msr_bitmap()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load i32, i32* @MSR_BITMAP, align 4
  %17 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %18 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %17, i32 0, i32 11
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i64 @__pa(i32* %20)
  %22 = call i32 @vmcs_write64(i32 %16, i64 %21)
  br label %23

23:                                               ; preds = %15, %12
  %24 = load i32, i32* @VMCS_LINK_POINTER, align 4
  %25 = call i32 @vmcs_write64(i32 %24, i64 -1)
  %26 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %27 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %28 = call i32 @vmx_pin_based_exec_ctrl(%struct.vcpu_vmx* %27)
  %29 = call i32 @pin_controls_set(%struct.vcpu_vmx* %26, i32 %28)
  %30 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %31 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %30, i32 0, i32 0
  store i32 -1, i32* %31, align 8
  %32 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %33 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %34 = call i32 @vmx_exec_control(%struct.vcpu_vmx* %33)
  %35 = call i32 @exec_controls_set(%struct.vcpu_vmx* %32, i32 %34)
  %36 = call i64 (...) @cpu_has_secondary_exec_ctrls()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %23
  %39 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %40 = call i32 @vmx_compute_secondary_exec_control(%struct.vcpu_vmx* %39)
  %41 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %42 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %43 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %42, i32 0, i32 10
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @secondary_exec_controls_set(%struct.vcpu_vmx* %41, i32 %44)
  br label %46

46:                                               ; preds = %38, %23
  %47 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %48 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %47, i32 0, i32 5
  %49 = call i64 @kvm_vcpu_apicv_active(%struct.TYPE_11__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %46
  %52 = load i32, i32* @EOI_EXIT_BITMAP0, align 4
  %53 = call i32 @vmcs_write64(i32 %52, i64 0)
  %54 = load i32, i32* @EOI_EXIT_BITMAP1, align 4
  %55 = call i32 @vmcs_write64(i32 %54, i64 0)
  %56 = load i32, i32* @EOI_EXIT_BITMAP2, align 4
  %57 = call i32 @vmcs_write64(i32 %56, i64 0)
  %58 = load i32, i32* @EOI_EXIT_BITMAP3, align 4
  %59 = call i32 @vmcs_write64(i32 %58, i64 0)
  %60 = load i32, i32* @GUEST_INTR_STATUS, align 4
  %61 = call i32 @vmcs_write16(i32 %60, i64 0)
  %62 = load i32, i32* @POSTED_INTR_NV, align 4
  %63 = load i64, i64* @POSTED_INTR_VECTOR, align 8
  %64 = call i32 @vmcs_write16(i32 %62, i64 %63)
  %65 = load i32, i32* @POSTED_INTR_DESC_ADDR, align 4
  %66 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %67 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %66, i32 0, i32 9
  %68 = call i64 @__pa(i32* %67)
  %69 = call i32 @vmcs_write64(i32 %65, i64 %68)
  br label %70

70:                                               ; preds = %51, %46
  %71 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %72 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @kvm_pause_in_guest(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %70
  %78 = load i32, i32* @PLE_GAP, align 4
  %79 = load i32, i32* @ple_gap, align 4
  %80 = call i32 @vmcs_write32(i32 %78, i32 %79)
  %81 = load i32, i32* @ple_window, align 4
  %82 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %83 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %82, i32 0, i32 8
  store i32 %81, i32* %83, align 8
  %84 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %85 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %84, i32 0, i32 1
  store i32 1, i32* %85, align 4
  br label %86

86:                                               ; preds = %77, %70
  %87 = load i32, i32* @PAGE_FAULT_ERROR_CODE_MASK, align 4
  %88 = call i32 @vmcs_write32(i32 %87, i32 0)
  %89 = load i32, i32* @PAGE_FAULT_ERROR_CODE_MATCH, align 4
  %90 = call i32 @vmcs_write32(i32 %89, i32 0)
  %91 = load i32, i32* @CR3_TARGET_COUNT, align 4
  %92 = call i32 @vmcs_write32(i32 %91, i32 0)
  %93 = load i32, i32* @HOST_FS_SELECTOR, align 4
  %94 = call i32 @vmcs_write16(i32 %93, i64 0)
  %95 = load i32, i32* @HOST_GS_SELECTOR, align 4
  %96 = call i32 @vmcs_write16(i32 %95, i64 0)
  %97 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %98 = call i32 @vmx_set_constant_host_state(%struct.vcpu_vmx* %97)
  %99 = load i32, i32* @HOST_FS_BASE, align 4
  %100 = call i32 @vmcs_writel(i32 %99, i32 0)
  %101 = load i32, i32* @HOST_GS_BASE, align 4
  %102 = call i32 @vmcs_writel(i32 %101, i32 0)
  %103 = call i64 (...) @cpu_has_vmx_vmfunc()
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %86
  %106 = load i32, i32* @VM_FUNCTION_CONTROL, align 4
  %107 = call i32 @vmcs_write64(i32 %106, i64 0)
  br label %108

108:                                              ; preds = %105, %86
  %109 = load i32, i32* @VM_EXIT_MSR_STORE_COUNT, align 4
  %110 = call i32 @vmcs_write32(i32 %109, i32 0)
  %111 = load i32, i32* @VM_EXIT_MSR_LOAD_COUNT, align 4
  %112 = call i32 @vmcs_write32(i32 %111, i32 0)
  %113 = load i32, i32* @VM_EXIT_MSR_LOAD_ADDR, align 4
  %114 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %115 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %114, i32 0, i32 7
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = call i64 @__pa(i32* %118)
  %120 = call i32 @vmcs_write64(i32 %113, i64 %119)
  %121 = load i32, i32* @VM_ENTRY_MSR_LOAD_COUNT, align 4
  %122 = call i32 @vmcs_write32(i32 %121, i32 0)
  %123 = load i32, i32* @VM_ENTRY_MSR_LOAD_ADDR, align 4
  %124 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %125 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %124, i32 0, i32 7
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = call i64 @__pa(i32* %128)
  %130 = call i32 @vmcs_write64(i32 %123, i64 %129)
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @vmcs_config, i32 0, i32 0), align 4
  %132 = load i32, i32* @VM_ENTRY_LOAD_IA32_PAT, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %108
  %136 = load i32, i32* @GUEST_IA32_PAT, align 4
  %137 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %138 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @vmcs_write64(i32 %136, i64 %141)
  br label %143

143:                                              ; preds = %135, %108
  store i32 0, i32* %3, align 4
  br label %144

144:                                              ; preds = %196, %143
  %145 = load i32, i32* %3, align 4
  %146 = load i32*, i32** @vmx_msr_index, align 8
  %147 = call i32 @ARRAY_SIZE(i32* %146)
  %148 = icmp slt i32 %145, %147
  br i1 %148, label %149, label %199

149:                                              ; preds = %144
  %150 = load i32*, i32** @vmx_msr_index, align 8
  %151 = load i32, i32* %3, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %4, align 4
  %155 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %156 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* %4, align 4
  %159 = call i64 @rdmsr_safe(i32 %158, i32* %5, i32* %6)
  %160 = icmp slt i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %149
  br label %196

162:                                              ; preds = %149
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* %5, align 4
  %165 = load i32, i32* %6, align 4
  %166 = call i64 @wrmsr_safe(i32 %163, i32 %164, i32 %165)
  %167 = icmp slt i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %162
  br label %196

169:                                              ; preds = %162
  %170 = load i32, i32* %3, align 4
  %171 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %172 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %171, i32 0, i32 6
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %172, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  store i32 %170, i32* %177, align 8
  %178 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %179 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %178, i32 0, i32 6
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %179, align 8
  %181 = load i32, i32* %7, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 2
  store i64 0, i64* %184, align 8
  %185 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %186 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %185, i32 0, i32 6
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %186, align 8
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 1
  store i64 -1, i64* %191, align 8
  %192 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %193 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 8
  br label %196

196:                                              ; preds = %169, %168, %161
  %197 = load i32, i32* %3, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %3, align 4
  br label %144

199:                                              ; preds = %144
  %200 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %201 = call i32 (...) @vmx_vmexit_ctrl()
  %202 = call i32 @vm_exit_controls_set(%struct.vcpu_vmx* %200, i32 %201)
  %203 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %204 = call i32 (...) @vmx_vmentry_ctrl()
  %205 = call i32 @vm_entry_controls_set(%struct.vcpu_vmx* %203, i32 %204)
  %206 = load i32, i32* @X86_CR0_TS, align 4
  %207 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %208 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %207, i32 0, i32 5
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 1
  store i32 %206, i32* %210, align 8
  %211 = load i32, i32* @CR0_GUEST_HOST_MASK, align 4
  %212 = load i32, i32* @X86_CR0_TS, align 4
  %213 = xor i32 %212, -1
  %214 = call i32 @vmcs_writel(i32 %211, i32 %213)
  %215 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %216 = call i32 @set_cr4_guest_host_mask(%struct.vcpu_vmx* %215)
  %217 = call i64 (...) @vmx_xsaves_supported()
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %199
  %220 = load i32, i32* @XSS_EXIT_BITMAP, align 4
  %221 = load i64, i64* @VMX_XSS_EXIT_BITMAP, align 8
  %222 = call i32 @vmcs_write64(i32 %220, i64 %221)
  br label %223

223:                                              ; preds = %219, %199
  %224 = load i64, i64* @enable_pml, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %237

226:                                              ; preds = %223
  %227 = load i32, i32* @PML_ADDRESS, align 4
  %228 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %229 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = call i64 @page_to_phys(i32 %230)
  %232 = call i32 @vmcs_write64(i32 %227, i64 %231)
  %233 = load i32, i32* @GUEST_PML_INDEX, align 4
  %234 = load i64, i64* @PML_ENTITY_NUM, align 8
  %235 = sub nsw i64 %234, 1
  %236 = call i32 @vmcs_write16(i32 %233, i64 %235)
  br label %237

237:                                              ; preds = %226, %223
  %238 = call i64 (...) @cpu_has_vmx_encls_vmexit()
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %237
  %241 = load i32, i32* @ENCLS_EXITING_BITMAP, align 4
  %242 = call i32 @vmcs_write64(i32 %241, i64 -1)
  br label %243

243:                                              ; preds = %240, %237
  %244 = load i64, i64* @pt_mode, align 8
  %245 = load i64, i64* @PT_MODE_HOST_GUEST, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %257

247:                                              ; preds = %243
  %248 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %249 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %248, i32 0, i32 3
  %250 = call i32 @memset(%struct.TYPE_20__* %249, i32 0, i32 4)
  %251 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %252 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %251, i32 0, i32 3
  %253 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 0
  store i32 127, i32* %254, align 4
  %255 = load i32, i32* @GUEST_IA32_RTIT_CTL, align 4
  %256 = call i32 @vmcs_write64(i32 %255, i64 0)
  br label %257

257:                                              ; preds = %247, %243
  ret void
}

declare dso_local i32 @nested_vmx_vcpu_setup(...) #1

declare dso_local i64 @cpu_has_vmx_msr_bitmap(...) #1

declare dso_local i32 @vmcs_write64(i32, i64) #1

declare dso_local i64 @__pa(i32*) #1

declare dso_local i32 @pin_controls_set(%struct.vcpu_vmx*, i32) #1

declare dso_local i32 @vmx_pin_based_exec_ctrl(%struct.vcpu_vmx*) #1

declare dso_local i32 @exec_controls_set(%struct.vcpu_vmx*, i32) #1

declare dso_local i32 @vmx_exec_control(%struct.vcpu_vmx*) #1

declare dso_local i64 @cpu_has_secondary_exec_ctrls(...) #1

declare dso_local i32 @vmx_compute_secondary_exec_control(%struct.vcpu_vmx*) #1

declare dso_local i32 @secondary_exec_controls_set(%struct.vcpu_vmx*, i32) #1

declare dso_local i64 @kvm_vcpu_apicv_active(%struct.TYPE_11__*) #1

declare dso_local i32 @vmcs_write16(i32, i64) #1

declare dso_local i32 @kvm_pause_in_guest(i32) #1

declare dso_local i32 @vmcs_write32(i32, i32) #1

declare dso_local i32 @vmx_set_constant_host_state(%struct.vcpu_vmx*) #1

declare dso_local i32 @vmcs_writel(i32, i32) #1

declare dso_local i64 @cpu_has_vmx_vmfunc(...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @rdmsr_safe(i32, i32*, i32*) #1

declare dso_local i64 @wrmsr_safe(i32, i32, i32) #1

declare dso_local i32 @vm_exit_controls_set(%struct.vcpu_vmx*, i32) #1

declare dso_local i32 @vmx_vmexit_ctrl(...) #1

declare dso_local i32 @vm_entry_controls_set(%struct.vcpu_vmx*, i32) #1

declare dso_local i32 @vmx_vmentry_ctrl(...) #1

declare dso_local i32 @set_cr4_guest_host_mask(%struct.vcpu_vmx*) #1

declare dso_local i64 @vmx_xsaves_supported(...) #1

declare dso_local i64 @page_to_phys(i32) #1

declare dso_local i64 @cpu_has_vmx_encls_vmexit(...) #1

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
