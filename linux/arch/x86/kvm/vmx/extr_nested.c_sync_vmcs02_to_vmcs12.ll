; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_sync_vmcs02_to_vmcs12.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_sync_vmcs02_to_vmcs12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.vmcs12 = type { i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.vcpu_vmx = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@GUEST_RFLAGS = common dso_local global i32 0, align 4
@GUEST_CS_AR_BYTES = common dso_local global i32 0, align 4
@GUEST_SS_AR_BYTES = common dso_local global i32 0, align 4
@GUEST_SYSENTER_CS = common dso_local global i32 0, align 4
@GUEST_SYSENTER_ESP = common dso_local global i32 0, align 4
@GUEST_SYSENTER_EIP = common dso_local global i32 0, align 4
@GUEST_INTERRUPTIBILITY_INFO = common dso_local global i32 0, align 4
@KVM_MP_STATE_HALTED = common dso_local global i64 0, align 8
@GUEST_ACTIVITY_HLT = common dso_local global i32 0, align 4
@GUEST_ACTIVITY_ACTIVE = common dso_local global i32 0, align 4
@VM_EXIT_SAVE_VMX_PREEMPTION_TIMER = common dso_local global i32 0, align 4
@enable_ept = common dso_local global i64 0, align 8
@GUEST_CR3 = common dso_local global i32 0, align 4
@GUEST_PDPTR0 = common dso_local global i32 0, align 4
@GUEST_PDPTR1 = common dso_local global i32 0, align 4
@GUEST_PDPTR2 = common dso_local global i32 0, align 4
@GUEST_PDPTR3 = common dso_local global i32 0, align 4
@GUEST_LINEAR_ADDRESS = common dso_local global i32 0, align 4
@GUEST_INTR_STATUS = common dso_local global i32 0, align 4
@VM_ENTRY_IA32E_MODE = common dso_local global i32 0, align 4
@VM_EXIT_SAVE_DEBUG_CONTROLS = common dso_local global i32 0, align 4
@VM_EXIT_SAVE_IA32_EFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.vmcs12*)* @sync_vmcs02_to_vmcs12 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_vmcs02_to_vmcs12(%struct.kvm_vcpu* %0, %struct.vmcs12* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.vmcs12*, align 8
  %5 = alloca %struct.vcpu_vmx*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.vmcs12* %1, %struct.vmcs12** %4, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %6)
  store %struct.vcpu_vmx* %7, %struct.vcpu_vmx** %5, align 8
  %8 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %9 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %16 = call i32 @sync_vmcs02_to_vmcs12_rare(%struct.kvm_vcpu* %14, %struct.vmcs12* %15)
  br label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %19 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %26 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %29 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %30 = call i32 @vmcs12_guest_cr0(%struct.kvm_vcpu* %28, %struct.vmcs12* %29)
  %31 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %32 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %31, i32 0, i32 23
  store i32 %30, i32* %32, align 4
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %34 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %35 = call i32 @vmcs12_guest_cr4(%struct.kvm_vcpu* %33, %struct.vmcs12* %34)
  %36 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %37 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %36, i32 0, i32 22
  store i32 %35, i32* %37, align 8
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %39 = call i32 @kvm_rsp_read(%struct.kvm_vcpu* %38)
  %40 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %41 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %40, i32 0, i32 21
  store i32 %39, i32* %41, align 4
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %43 = call i32 @kvm_rip_read(%struct.kvm_vcpu* %42)
  %44 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %45 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %44, i32 0, i32 20
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @GUEST_RFLAGS, align 4
  %47 = call i8* @vmcs_readl(i32 %46)
  %48 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %49 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %48, i32 0, i32 19
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* @GUEST_CS_AR_BYTES, align 4
  %51 = call i8* @vmcs_read32(i32 %50)
  %52 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %53 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %52, i32 0, i32 18
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* @GUEST_SS_AR_BYTES, align 4
  %55 = call i8* @vmcs_read32(i32 %54)
  %56 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %57 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %56, i32 0, i32 17
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* @GUEST_SYSENTER_CS, align 4
  %59 = call i8* @vmcs_read32(i32 %58)
  %60 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %61 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %60, i32 0, i32 16
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* @GUEST_SYSENTER_ESP, align 4
  %63 = call i8* @vmcs_readl(i32 %62)
  %64 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %65 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %64, i32 0, i32 15
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* @GUEST_SYSENTER_EIP, align 4
  %67 = call i8* @vmcs_readl(i32 %66)
  %68 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %69 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %68, i32 0, i32 14
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* @GUEST_INTERRUPTIBILITY_INFO, align 4
  %71 = call i8* @vmcs_read32(i32 %70)
  %72 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %73 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %72, i32 0, i32 13
  store i8* %71, i8** %73, align 8
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %75 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @KVM_MP_STATE_HALTED, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %17
  %81 = load i32, i32* @GUEST_ACTIVITY_HLT, align 4
  %82 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %83 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %82, i32 0, i32 12
  store i32 %81, i32* %83, align 4
  br label %88

84:                                               ; preds = %17
  %85 = load i32, i32* @GUEST_ACTIVITY_ACTIVE, align 4
  %86 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %87 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %86, i32 0, i32 12
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %84, %80
  %89 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %90 = call i64 @nested_cpu_has_preemption_timer(%struct.vmcs12* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %88
  %93 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %94 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @VM_EXIT_SAVE_VMX_PREEMPTION_TIMER, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %101 = call i32 @vmx_get_preemption_timer_value(%struct.kvm_vcpu* %100)
  %102 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %103 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %102, i32 0, i32 11
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %99, %92, %88
  %105 = load i64, i64* @enable_ept, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %137

107:                                              ; preds = %104
  %108 = load i32, i32* @GUEST_CR3, align 4
  %109 = call i8* @vmcs_readl(i32 %108)
  %110 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %111 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %110, i32 0, i32 10
  store i8* %109, i8** %111, align 8
  %112 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %113 = call i64 @nested_cpu_has_ept(%struct.vmcs12* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %136

115:                                              ; preds = %107
  %116 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %117 = call i64 @is_pae_paging(%struct.kvm_vcpu* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %136

119:                                              ; preds = %115
  %120 = load i32, i32* @GUEST_PDPTR0, align 4
  %121 = call i8* @vmcs_read64(i32 %120)
  %122 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %123 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %122, i32 0, i32 9
  store i8* %121, i8** %123, align 8
  %124 = load i32, i32* @GUEST_PDPTR1, align 4
  %125 = call i8* @vmcs_read64(i32 %124)
  %126 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %127 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %126, i32 0, i32 8
  store i8* %125, i8** %127, align 8
  %128 = load i32, i32* @GUEST_PDPTR2, align 4
  %129 = call i8* @vmcs_read64(i32 %128)
  %130 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %131 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %130, i32 0, i32 7
  store i8* %129, i8** %131, align 8
  %132 = load i32, i32* @GUEST_PDPTR3, align 4
  %133 = call i8* @vmcs_read64(i32 %132)
  %134 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %135 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %134, i32 0, i32 6
  store i8* %133, i8** %135, align 8
  br label %136

136:                                              ; preds = %119, %115, %107
  br label %137

137:                                              ; preds = %136, %104
  %138 = load i32, i32* @GUEST_LINEAR_ADDRESS, align 4
  %139 = call i8* @vmcs_readl(i32 %138)
  %140 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %141 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %140, i32 0, i32 5
  store i8* %139, i8** %141, align 8
  %142 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %143 = call i64 @nested_cpu_has_vid(%struct.vmcs12* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %137
  %146 = load i32, i32* @GUEST_INTR_STATUS, align 4
  %147 = call i32 @vmcs_read16(i32 %146)
  %148 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %149 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 8
  br label %150

150:                                              ; preds = %145, %137
  %151 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %152 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @VM_ENTRY_IA32E_MODE, align 4
  %155 = xor i32 %154, -1
  %156 = and i32 %153, %155
  %157 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %158 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %157)
  %159 = call i32 @vm_entry_controls_get(%struct.vcpu_vmx* %158)
  %160 = load i32, i32* @VM_ENTRY_IA32E_MODE, align 4
  %161 = and i32 %159, %160
  %162 = or i32 %156, %161
  %163 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %164 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %166 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @VM_EXIT_SAVE_DEBUG_CONTROLS, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %150
  %172 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %173 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %174 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %173, i32 0, i32 3
  %175 = bitcast i32* %174 to i64*
  %176 = call i32 @kvm_get_dr(%struct.kvm_vcpu* %172, i32 7, i64* %175)
  br label %177

177:                                              ; preds = %171, %150
  %178 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %179 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @VM_EXIT_SAVE_IA32_EFER, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %177
  %185 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %186 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %190 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %189, i32 0, i32 2
  store i32 %188, i32* %190, align 8
  br label %191

191:                                              ; preds = %184, %177
  ret void
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @sync_vmcs02_to_vmcs12_rare(%struct.kvm_vcpu*, %struct.vmcs12*) #1

declare dso_local i32 @vmcs12_guest_cr0(%struct.kvm_vcpu*, %struct.vmcs12*) #1

declare dso_local i32 @vmcs12_guest_cr4(%struct.kvm_vcpu*, %struct.vmcs12*) #1

declare dso_local i32 @kvm_rsp_read(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_rip_read(%struct.kvm_vcpu*) #1

declare dso_local i8* @vmcs_readl(i32) #1

declare dso_local i8* @vmcs_read32(i32) #1

declare dso_local i64 @nested_cpu_has_preemption_timer(%struct.vmcs12*) #1

declare dso_local i32 @vmx_get_preemption_timer_value(%struct.kvm_vcpu*) #1

declare dso_local i64 @nested_cpu_has_ept(%struct.vmcs12*) #1

declare dso_local i64 @is_pae_paging(%struct.kvm_vcpu*) #1

declare dso_local i8* @vmcs_read64(i32) #1

declare dso_local i64 @nested_cpu_has_vid(%struct.vmcs12*) #1

declare dso_local i32 @vmcs_read16(i32) #1

declare dso_local i32 @vm_entry_controls_get(%struct.vcpu_vmx*) #1

declare dso_local i32 @kvm_get_dr(%struct.kvm_vcpu*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
