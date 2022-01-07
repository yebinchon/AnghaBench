; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_prepare_vmcs02.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_prepare_vmcs02.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.vmcs12 = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vcpu_vmx = type { i64, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i64, i64, i32, i32, %struct.hv_enlightened_vmcs* }
%struct.hv_enlightened_vmcs = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@HV_VMX_ENLIGHTENED_CLEAN_FIELD_GUEST_GRP1 = common dso_local global i32 0, align 4
@VM_ENTRY_LOAD_DEBUG_CONTROLS = common dso_local global i32 0, align 4
@GUEST_IA32_DEBUGCTL = common dso_local global i32 0, align 4
@VM_ENTRY_LOAD_BNDCFGS = common dso_local global i32 0, align 4
@GUEST_BNDCFGS = common dso_local global i32 0, align 4
@CR0_GUEST_HOST_MASK = common dso_local global i32 0, align 4
@VM_ENTRY_LOAD_IA32_PAT = common dso_local global i32 0, align 4
@GUEST_IA32_PAT = common dso_local global i32 0, align 4
@vmcs_config = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@TSC_OFFSET = common dso_local global i32 0, align 4
@kvm_has_tsc_control = common dso_local global i64 0, align 8
@enable_vpid = common dso_local global i64 0, align 8
@KVM_REQ_TLB_FLUSH = common dso_local global i32 0, align 4
@SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES = common dso_local global i32 0, align 4
@CR0_READ_SHADOW = common dso_local global i32 0, align 4
@CR4_READ_SHADOW = common dso_local global i32 0, align 4
@ENTRY_FAIL_DEFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GUEST_PDPTR0 = common dso_local global i32 0, align 4
@GUEST_PDPTR1 = common dso_local global i32 0, align 4
@GUEST_PDPTR2 = common dso_local global i32 0, align 4
@GUEST_PDPTR3 = common dso_local global i32 0, align 4
@enable_ept = common dso_local global i32 0, align 4
@vmx_inject_page_fault_nested = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.vmcs12*, i32*)* @prepare_vmcs02 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_vmcs02(%struct.kvm_vcpu* %0, %struct.vmcs12* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca %struct.vmcs12*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vcpu_vmx*, align 8
  %9 = alloca %struct.hv_enlightened_vmcs*, align 8
  %10 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store %struct.vmcs12* %1, %struct.vmcs12** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %12 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %11)
  store %struct.vcpu_vmx* %12, %struct.vcpu_vmx** %8, align 8
  %13 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %8, align 8
  %14 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 5
  %16 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %15, align 8
  store %struct.hv_enlightened_vmcs* %16, %struct.hv_enlightened_vmcs** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %8, align 8
  %18 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %9, align 8
  %24 = icmp ne %struct.hv_enlightened_vmcs* %23, null
  br i1 %24, label %25, label %45

25:                                               ; preds = %22, %3
  %26 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %8, align 8
  %27 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %28 = call i32 @prepare_vmcs02_rare(%struct.vcpu_vmx* %26, %struct.vmcs12* %27)
  %29 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %8, align 8
  %30 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %9, align 8
  %33 = icmp ne %struct.hv_enlightened_vmcs* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %25
  %35 = load %struct.hv_enlightened_vmcs*, %struct.hv_enlightened_vmcs** %9, align 8
  %36 = getelementptr inbounds %struct.hv_enlightened_vmcs, %struct.hv_enlightened_vmcs* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @HV_VMX_ENLIGHTENED_CLEAN_FIELD_GUEST_GRP1, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %34, %25
  %43 = phi i1 [ true, %25 ], [ %41, %34 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %42, %22
  %46 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %8, align 8
  %47 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %45
  %52 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %53 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @VM_ENTRY_LOAD_DEBUG_CONTROLS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %51
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %60 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %61 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %60, i32 0, i32 15
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @kvm_set_dr(%struct.kvm_vcpu* %59, i32 7, i32 %62)
  %64 = load i32, i32* @GUEST_IA32_DEBUGCTL, align 4
  %65 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %66 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %65, i32 0, i32 14
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @vmcs_write64(i32 %64, i32 %67)
  br label %82

69:                                               ; preds = %51, %45
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %72 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @kvm_set_dr(%struct.kvm_vcpu* %70, i32 7, i32 %74)
  %76 = load i32, i32* @GUEST_IA32_DEBUGCTL, align 4
  %77 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %8, align 8
  %78 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @vmcs_write64(i32 %76, i32 %80)
  br label %82

82:                                               ; preds = %69, %58
  %83 = call i64 (...) @kvm_mpx_supported()
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %105

85:                                               ; preds = %82
  %86 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %8, align 8
  %87 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %85
  %92 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %93 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @VM_ENTRY_LOAD_BNDCFGS, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %91, %85
  %99 = load i32, i32* @GUEST_BNDCFGS, align 4
  %100 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %8, align 8
  %101 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @vmcs_write64(i32 %99, i32 %103)
  br label %105

105:                                              ; preds = %98, %91, %82
  %106 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %107 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %108 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %107, i32 0, i32 13
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @vmx_set_rflags(%struct.kvm_vcpu* %106, i32 %109)
  %111 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %112 = call i32 @update_exception_bitmap(%struct.kvm_vcpu* %111)
  %113 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %114 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %113, i32 0, i32 12
  %115 = load i32, i32* %114, align 8
  %116 = xor i32 %115, -1
  %117 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %118 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, %116
  store i32 %121, i32* %119, align 4
  %122 = load i32, i32* @CR0_GUEST_HOST_MASK, align 4
  %123 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %124 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = xor i32 %126, -1
  %128 = call i32 @vmcs_writel(i32 %122, i32 %127)
  %129 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %8, align 8
  %130 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %153

134:                                              ; preds = %105
  %135 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %136 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @VM_ENTRY_LOAD_IA32_PAT, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %153

141:                                              ; preds = %134
  %142 = load i32, i32* @GUEST_IA32_PAT, align 4
  %143 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %144 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %143, i32 0, i32 11
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @vmcs_write64(i32 %142, i32 %145)
  %147 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %148 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %147, i32 0, i32 11
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %151 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 3
  store i32 %149, i32* %152, align 8
  br label %167

153:                                              ; preds = %134, %105
  %154 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @vmcs_config, i32 0, i32 0), align 4
  %155 = load i32, i32* @VM_ENTRY_LOAD_IA32_PAT, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %153
  %159 = load i32, i32* @GUEST_IA32_PAT, align 4
  %160 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %8, align 8
  %161 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @vmcs_write64(i32 %159, i32 %164)
  br label %166

166:                                              ; preds = %158, %153
  br label %167

167:                                              ; preds = %166, %141
  %168 = load i32, i32* @TSC_OFFSET, align 4
  %169 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %170 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @vmcs_write64(i32 %168, i32 %172)
  %174 = load i64, i64* @kvm_has_tsc_control, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %167
  %177 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %8, align 8
  %178 = call i32 @decache_tsc_multiplier(%struct.vcpu_vmx* %177)
  br label %179

179:                                              ; preds = %176, %167
  %180 = load i64, i64* @enable_vpid, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %216

182:                                              ; preds = %179
  %183 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %184 = call i64 @nested_cpu_has_vpid(%struct.vmcs12* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %211

186:                                              ; preds = %182
  %187 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %188 = call i64 @nested_has_guest_tlb_tag(%struct.kvm_vcpu* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %211

190:                                              ; preds = %186
  %191 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %192 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %8, align 8
  %195 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %193, %197
  br i1 %198, label %199, label %210

199:                                              ; preds = %190
  %200 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %201 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %8, align 8
  %204 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 1
  store i64 %202, i64* %205, align 8
  %206 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %207 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %208 = call i32 @nested_get_vpid02(%struct.kvm_vcpu* %207)
  %209 = call i32 @__vmx_flush_tlb(%struct.kvm_vcpu* %206, i32 %208, i32 0)
  br label %210

210:                                              ; preds = %199, %190
  br label %215

211:                                              ; preds = %186, %182
  %212 = load i32, i32* @KVM_REQ_TLB_FLUSH, align 4
  %213 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %214 = call i32 @kvm_make_request(i32 %212, %struct.kvm_vcpu* %213)
  br label %215

215:                                              ; preds = %211, %210
  br label %216

216:                                              ; preds = %215, %179
  %217 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %218 = call i64 @nested_cpu_has_ept(%struct.vmcs12* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %216
  %221 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %222 = call i32 @nested_ept_init_mmu_context(%struct.kvm_vcpu* %221)
  br label %232

223:                                              ; preds = %216
  %224 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %225 = load i32, i32* @SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES, align 4
  %226 = call i64 @nested_cpu_has2(%struct.vmcs12* %224, i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %223
  %229 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %230 = call i32 @vmx_flush_tlb(%struct.kvm_vcpu* %229, i32 1)
  br label %231

231:                                              ; preds = %228, %223
  br label %232

232:                                              ; preds = %231, %220
  %233 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %234 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %235 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %234, i32 0, i32 10
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @vmx_set_cr0(%struct.kvm_vcpu* %233, i32 %236)
  %238 = load i32, i32* @CR0_READ_SHADOW, align 4
  %239 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %240 = call i32 @nested_read_cr0(%struct.vmcs12* %239)
  %241 = call i32 @vmcs_writel(i32 %238, i32 %240)
  %242 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %243 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %244 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %243, i32 0, i32 9
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @vmx_set_cr4(%struct.kvm_vcpu* %242, i32 %245)
  %247 = load i32, i32* @CR4_READ_SHADOW, align 4
  %248 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %249 = call i32 @nested_read_cr4(%struct.vmcs12* %248)
  %250 = call i32 @vmcs_writel(i32 %247, i32 %249)
  %251 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %8, align 8
  %252 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %253 = call i32 @nested_vmx_calc_efer(%struct.vcpu_vmx* %251, %struct.vmcs12* %252)
  %254 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %255 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 1
  store i32 %253, i32* %256, align 8
  %257 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %258 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %259 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @vmx_set_efer(%struct.kvm_vcpu* %257, i32 %261)
  %263 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %8, align 8
  %264 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %232
  %268 = load i32, i32* @ENTRY_FAIL_DEFAULT, align 4
  %269 = load i32*, i32** %7, align 8
  store i32 %268, i32* %269, align 4
  %270 = load i32, i32* @EINVAL, align 4
  %271 = sub nsw i32 0, %270
  store i32 %271, i32* %4, align 4
  br label %338

272:                                              ; preds = %232
  %273 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %274 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %275 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %274, i32 0, i32 8
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %278 = call i64 @nested_cpu_has_ept(%struct.vmcs12* %277)
  %279 = load i32*, i32** %7, align 8
  %280 = call i64 @nested_vmx_load_cr3(%struct.kvm_vcpu* %273, i32 %276, i64 %278, i32* %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %272
  %283 = load i32, i32* @EINVAL, align 4
  %284 = sub nsw i32 0, %283
  store i32 %284, i32* %4, align 4
  br label %338

285:                                              ; preds = %272
  %286 = load i32, i32* %10, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %317

288:                                              ; preds = %285
  %289 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %290 = call i64 @nested_cpu_has_ept(%struct.vmcs12* %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %317

292:                                              ; preds = %288
  %293 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %294 = call i64 @is_pae_paging(%struct.kvm_vcpu* %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %317

296:                                              ; preds = %292
  %297 = load i32, i32* @GUEST_PDPTR0, align 4
  %298 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %299 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %298, i32 0, i32 7
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @vmcs_write64(i32 %297, i32 %300)
  %302 = load i32, i32* @GUEST_PDPTR1, align 4
  %303 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %304 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %303, i32 0, i32 6
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @vmcs_write64(i32 %302, i32 %305)
  %307 = load i32, i32* @GUEST_PDPTR2, align 4
  %308 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %309 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %308, i32 0, i32 5
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @vmcs_write64(i32 %307, i32 %310)
  %312 = load i32, i32* @GUEST_PDPTR3, align 4
  %313 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %314 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %313, i32 0, i32 4
  %315 = load i32, i32* %314, align 8
  %316 = call i32 @vmcs_write64(i32 %312, i32 %315)
  br label %317

317:                                              ; preds = %296, %292, %288, %285
  %318 = load i32, i32* @enable_ept, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %327, label %320

320:                                              ; preds = %317
  %321 = load i32, i32* @vmx_inject_page_fault_nested, align 4
  %322 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %323 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 0
  %325 = load %struct.TYPE_10__*, %struct.TYPE_10__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %325, i32 0, i32 0
  store i32 %321, i32* %326, align 4
  br label %327

327:                                              ; preds = %320, %317
  %328 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %329 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %330 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @kvm_rsp_write(%struct.kvm_vcpu* %328, i32 %331)
  %333 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %334 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %335 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 8
  %337 = call i32 @kvm_rip_write(%struct.kvm_vcpu* %333, i32 %336)
  store i32 0, i32* %4, align 4
  br label %338

338:                                              ; preds = %327, %282, %267
  %339 = load i32, i32* %4, align 4
  ret i32 %339
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @prepare_vmcs02_rare(%struct.vcpu_vmx*, %struct.vmcs12*) #1

declare dso_local i32 @kvm_set_dr(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @vmcs_write64(i32, i32) #1

declare dso_local i64 @kvm_mpx_supported(...) #1

declare dso_local i32 @vmx_set_rflags(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @update_exception_bitmap(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmcs_writel(i32, i32) #1

declare dso_local i32 @decache_tsc_multiplier(%struct.vcpu_vmx*) #1

declare dso_local i64 @nested_cpu_has_vpid(%struct.vmcs12*) #1

declare dso_local i64 @nested_has_guest_tlb_tag(%struct.kvm_vcpu*) #1

declare dso_local i32 @__vmx_flush_tlb(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @nested_get_vpid02(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_make_request(i32, %struct.kvm_vcpu*) #1

declare dso_local i64 @nested_cpu_has_ept(%struct.vmcs12*) #1

declare dso_local i32 @nested_ept_init_mmu_context(%struct.kvm_vcpu*) #1

declare dso_local i64 @nested_cpu_has2(%struct.vmcs12*, i32) #1

declare dso_local i32 @vmx_flush_tlb(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @vmx_set_cr0(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @nested_read_cr0(%struct.vmcs12*) #1

declare dso_local i32 @vmx_set_cr4(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @nested_read_cr4(%struct.vmcs12*) #1

declare dso_local i32 @nested_vmx_calc_efer(%struct.vcpu_vmx*, %struct.vmcs12*) #1

declare dso_local i32 @vmx_set_efer(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @nested_vmx_load_cr3(%struct.kvm_vcpu*, i32, i64, i32*) #1

declare dso_local i64 @is_pae_paging(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_rsp_write(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_rip_write(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
