; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_vcpu_reset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_vcpu_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.vcpu_vmx = type { i32, i32, %struct.TYPE_10__, i64, i64, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_6__ = type { i64 }
%struct.msr_data = type { i32, i32 }

@VCPU_REGS_RDX = common dso_local global i64 0, align 8
@APIC_DEFAULT_PHYS_BASE = common dso_local global i32 0, align 4
@MSR_IA32_APICBASE_ENABLE = common dso_local global i32 0, align 4
@MSR_IA32_APICBASE_BSP = common dso_local global i32 0, align 4
@VCPU_SREG_CS = common dso_local global i32 0, align 4
@GUEST_CS_SELECTOR = common dso_local global i32 0, align 4
@GUEST_CS_BASE = common dso_local global i32 0, align 4
@VCPU_SREG_DS = common dso_local global i32 0, align 4
@VCPU_SREG_ES = common dso_local global i32 0, align 4
@VCPU_SREG_FS = common dso_local global i32 0, align 4
@VCPU_SREG_GS = common dso_local global i32 0, align 4
@VCPU_SREG_SS = common dso_local global i32 0, align 4
@GUEST_TR_SELECTOR = common dso_local global i32 0, align 4
@GUEST_TR_BASE = common dso_local global i32 0, align 4
@GUEST_TR_LIMIT = common dso_local global i32 0, align 4
@GUEST_TR_AR_BYTES = common dso_local global i32 0, align 4
@GUEST_LDTR_SELECTOR = common dso_local global i32 0, align 4
@GUEST_LDTR_BASE = common dso_local global i32 0, align 4
@GUEST_LDTR_LIMIT = common dso_local global i32 0, align 4
@GUEST_LDTR_AR_BYTES = common dso_local global i32 0, align 4
@GUEST_SYSENTER_CS = common dso_local global i32 0, align 4
@GUEST_SYSENTER_ESP = common dso_local global i32 0, align 4
@GUEST_SYSENTER_EIP = common dso_local global i32 0, align 4
@GUEST_IA32_DEBUGCTL = common dso_local global i32 0, align 4
@X86_EFLAGS_FIXED = common dso_local global i32 0, align 4
@GUEST_GDTR_BASE = common dso_local global i32 0, align 4
@GUEST_GDTR_LIMIT = common dso_local global i32 0, align 4
@GUEST_IDTR_BASE = common dso_local global i32 0, align 4
@GUEST_IDTR_LIMIT = common dso_local global i32 0, align 4
@GUEST_ACTIVITY_STATE = common dso_local global i32 0, align 4
@GUEST_ACTIVITY_ACTIVE = common dso_local global i32 0, align 4
@GUEST_INTERRUPTIBILITY_INFO = common dso_local global i32 0, align 4
@GUEST_PENDING_DBG_EXCEPTIONS = common dso_local global i32 0, align 4
@GUEST_BNDCFGS = common dso_local global i32 0, align 4
@VM_ENTRY_INTR_INFO_FIELD = common dso_local global i32 0, align 4
@VIRTUAL_APIC_PAGE_ADDR = common dso_local global i32 0, align 4
@TPR_THRESHOLD = common dso_local global i32 0, align 4
@KVM_REQ_APIC_PAGE_RELOAD = common dso_local global i32 0, align 4
@VIRTUAL_PROCESSOR_ID = common dso_local global i32 0, align 4
@X86_CR0_NW = common dso_local global i32 0, align 4
@X86_CR0_CD = common dso_local global i32 0, align 4
@X86_CR0_ET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32)* @vmx_vcpu_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_vcpu_reset(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vcpu_vmx*, align 8
  %6 = alloca %struct.msr_data, align 4
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %8)
  store %struct.vcpu_vmx* %9, %struct.vcpu_vmx** %5, align 8
  %10 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %11 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %14 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %13, i32 0, i32 4
  store i64 0, i64* %14, align 8
  %15 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %16 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %15, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = call i32 (...) @get_rdx_init_val()
  %21 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %22 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @VCPU_REGS_RDX, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 %20, i32* %27, align 4
  %28 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %29 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 8
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %31 = call i32 @kvm_set_cr8(%struct.kvm_vcpu* %30, i32 0)
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* @APIC_DEFAULT_PHYS_BASE, align 4
  %36 = load i32, i32* @MSR_IA32_APICBASE_ENABLE, align 4
  %37 = or i32 %35, %36
  %38 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %6, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %40 = call i64 @kvm_vcpu_is_reset_bsp(%struct.kvm_vcpu* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = load i32, i32* @MSR_IA32_APICBASE_BSP, align 4
  %44 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %6, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %42, %34
  %48 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %6, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %50 = call i32 @kvm_set_apic_base(%struct.kvm_vcpu* %49, %struct.msr_data* %6)
  br label %51

51:                                               ; preds = %47, %2
  %52 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %53 = call i32 @vmx_segment_cache_clear(%struct.vcpu_vmx* %52)
  %54 = load i32, i32* @VCPU_SREG_CS, align 4
  %55 = call i32 @seg_setup(i32 %54)
  %56 = load i32, i32* @GUEST_CS_SELECTOR, align 4
  %57 = call i32 @vmcs_write16(i32 %56, i32 61440)
  %58 = load i32, i32* @GUEST_CS_BASE, align 4
  %59 = call i32 @vmcs_writel(i32 %58, i32 -65536)
  %60 = load i32, i32* @VCPU_SREG_DS, align 4
  %61 = call i32 @seg_setup(i32 %60)
  %62 = load i32, i32* @VCPU_SREG_ES, align 4
  %63 = call i32 @seg_setup(i32 %62)
  %64 = load i32, i32* @VCPU_SREG_FS, align 4
  %65 = call i32 @seg_setup(i32 %64)
  %66 = load i32, i32* @VCPU_SREG_GS, align 4
  %67 = call i32 @seg_setup(i32 %66)
  %68 = load i32, i32* @VCPU_SREG_SS, align 4
  %69 = call i32 @seg_setup(i32 %68)
  %70 = load i32, i32* @GUEST_TR_SELECTOR, align 4
  %71 = call i32 @vmcs_write16(i32 %70, i32 0)
  %72 = load i32, i32* @GUEST_TR_BASE, align 4
  %73 = call i32 @vmcs_writel(i32 %72, i32 0)
  %74 = load i32, i32* @GUEST_TR_LIMIT, align 4
  %75 = call i32 @vmcs_write32(i32 %74, i32 65535)
  %76 = load i32, i32* @GUEST_TR_AR_BYTES, align 4
  %77 = call i32 @vmcs_write32(i32 %76, i32 139)
  %78 = load i32, i32* @GUEST_LDTR_SELECTOR, align 4
  %79 = call i32 @vmcs_write16(i32 %78, i32 0)
  %80 = load i32, i32* @GUEST_LDTR_BASE, align 4
  %81 = call i32 @vmcs_writel(i32 %80, i32 0)
  %82 = load i32, i32* @GUEST_LDTR_LIMIT, align 4
  %83 = call i32 @vmcs_write32(i32 %82, i32 65535)
  %84 = load i32, i32* @GUEST_LDTR_AR_BYTES, align 4
  %85 = call i32 @vmcs_write32(i32 %84, i32 130)
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %51
  %89 = load i32, i32* @GUEST_SYSENTER_CS, align 4
  %90 = call i32 @vmcs_write32(i32 %89, i32 0)
  %91 = load i32, i32* @GUEST_SYSENTER_ESP, align 4
  %92 = call i32 @vmcs_writel(i32 %91, i32 0)
  %93 = load i32, i32* @GUEST_SYSENTER_EIP, align 4
  %94 = call i32 @vmcs_writel(i32 %93, i32 0)
  %95 = load i32, i32* @GUEST_IA32_DEBUGCTL, align 4
  %96 = call i32 @vmcs_write64(i32 %95, i32 0)
  br label %97

97:                                               ; preds = %88, %51
  %98 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %99 = load i32, i32* @X86_EFLAGS_FIXED, align 4
  %100 = call i32 @kvm_set_rflags(%struct.kvm_vcpu* %98, i32 %99)
  %101 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %102 = call i32 @kvm_rip_write(%struct.kvm_vcpu* %101, i32 65520)
  %103 = load i32, i32* @GUEST_GDTR_BASE, align 4
  %104 = call i32 @vmcs_writel(i32 %103, i32 0)
  %105 = load i32, i32* @GUEST_GDTR_LIMIT, align 4
  %106 = call i32 @vmcs_write32(i32 %105, i32 65535)
  %107 = load i32, i32* @GUEST_IDTR_BASE, align 4
  %108 = call i32 @vmcs_writel(i32 %107, i32 0)
  %109 = load i32, i32* @GUEST_IDTR_LIMIT, align 4
  %110 = call i32 @vmcs_write32(i32 %109, i32 65535)
  %111 = load i32, i32* @GUEST_ACTIVITY_STATE, align 4
  %112 = load i32, i32* @GUEST_ACTIVITY_ACTIVE, align 4
  %113 = call i32 @vmcs_write32(i32 %111, i32 %112)
  %114 = load i32, i32* @GUEST_INTERRUPTIBILITY_INFO, align 4
  %115 = call i32 @vmcs_write32(i32 %114, i32 0)
  %116 = load i32, i32* @GUEST_PENDING_DBG_EXCEPTIONS, align 4
  %117 = call i32 @vmcs_writel(i32 %116, i32 0)
  %118 = call i64 (...) @kvm_mpx_supported()
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %97
  %121 = load i32, i32* @GUEST_BNDCFGS, align 4
  %122 = call i32 @vmcs_write64(i32 %121, i32 0)
  br label %123

123:                                              ; preds = %120, %97
  %124 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %125 = call i32 @setup_msrs(%struct.vcpu_vmx* %124)
  %126 = load i32, i32* @VM_ENTRY_INTR_INFO_FIELD, align 4
  %127 = call i32 @vmcs_write32(i32 %126, i32 0)
  %128 = call i64 (...) @cpu_has_vmx_tpr_shadow()
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %152

130:                                              ; preds = %123
  %131 = load i32, i32* %4, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %152, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* @VIRTUAL_APIC_PAGE_ADDR, align 4
  %135 = call i32 @vmcs_write64(i32 %134, i32 0)
  %136 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %137 = call i64 @cpu_need_tpr_shadow(%struct.kvm_vcpu* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %133
  %140 = load i32, i32* @VIRTUAL_APIC_PAGE_ADDR, align 4
  %141 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %142 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @__pa(i32 %146)
  %148 = call i32 @vmcs_write64(i32 %140, i32 %147)
  br label %149

149:                                              ; preds = %139, %133
  %150 = load i32, i32* @TPR_THRESHOLD, align 4
  %151 = call i32 @vmcs_write32(i32 %150, i32 0)
  br label %152

152:                                              ; preds = %149, %130, %123
  %153 = load i32, i32* @KVM_REQ_APIC_PAGE_RELOAD, align 4
  %154 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %155 = call i32 @kvm_make_request(i32 %153, %struct.kvm_vcpu* %154)
  %156 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %157 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %152
  %161 = load i32, i32* @VIRTUAL_PROCESSOR_ID, align 4
  %162 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %163 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @vmcs_write16(i32 %161, i32 %164)
  br label %166

166:                                              ; preds = %160, %152
  %167 = load i32, i32* @X86_CR0_NW, align 4
  %168 = load i32, i32* @X86_CR0_CD, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @X86_CR0_ET, align 4
  %171 = or i32 %169, %170
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* %7, align 4
  %173 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %174 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  store i32 %172, i32* %176, align 8
  %177 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %178 = load i32, i32* %7, align 4
  %179 = call i32 @vmx_set_cr0(%struct.kvm_vcpu* %177, i32 %178)
  %180 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %181 = call i32 @vmx_set_cr4(%struct.kvm_vcpu* %180, i32 0)
  %182 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %183 = call i32 @vmx_set_efer(%struct.kvm_vcpu* %182, i32 0)
  %184 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %185 = call i32 @update_exception_bitmap(%struct.kvm_vcpu* %184)
  %186 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %187 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @vpid_sync_context(i32 %188)
  %190 = load i32, i32* %4, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %166
  %193 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %194 = call i32 @vmx_clear_hlt(%struct.kvm_vcpu* %193)
  br label %195

195:                                              ; preds = %192, %166
  ret void
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @get_rdx_init_val(...) #1

declare dso_local i32 @kvm_set_cr8(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @kvm_vcpu_is_reset_bsp(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_set_apic_base(%struct.kvm_vcpu*, %struct.msr_data*) #1

declare dso_local i32 @vmx_segment_cache_clear(%struct.vcpu_vmx*) #1

declare dso_local i32 @seg_setup(i32) #1

declare dso_local i32 @vmcs_write16(i32, i32) #1

declare dso_local i32 @vmcs_writel(i32, i32) #1

declare dso_local i32 @vmcs_write32(i32, i32) #1

declare dso_local i32 @vmcs_write64(i32, i32) #1

declare dso_local i32 @kvm_set_rflags(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_rip_write(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @kvm_mpx_supported(...) #1

declare dso_local i32 @setup_msrs(%struct.vcpu_vmx*) #1

declare dso_local i64 @cpu_has_vmx_tpr_shadow(...) #1

declare dso_local i64 @cpu_need_tpr_shadow(%struct.kvm_vcpu*) #1

declare dso_local i32 @__pa(i32) #1

declare dso_local i32 @kvm_make_request(i32, %struct.kvm_vcpu*) #1

declare dso_local i32 @vmx_set_cr0(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @vmx_set_cr4(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @vmx_set_efer(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @update_exception_bitmap(%struct.kvm_vcpu*) #1

declare dso_local i32 @vpid_sync_context(i32) #1

declare dso_local i32 @vmx_clear_hlt(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
