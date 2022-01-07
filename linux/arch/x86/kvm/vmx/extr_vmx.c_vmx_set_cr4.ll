; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_set_cr4.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_set_cr4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.vcpu_vmx = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@X86_CR4_MCE = common dso_local global i64 0, align 8
@enable_unrestricted_guest = common dso_local global i64 0, align 8
@KVM_VM_CR4_ALWAYS_ON_UNRESTRICTED_GUEST = common dso_local global i64 0, align 8
@KVM_RMODE_VM_CR4_ALWAYS_ON = common dso_local global i64 0, align 8
@KVM_PMODE_VM_CR4_ALWAYS_ON = common dso_local global i64 0, align 8
@X86_FEATURE_UMIP = common dso_local global i32 0, align 4
@X86_CR4_UMIP = common dso_local global i64 0, align 8
@SECONDARY_EXEC_DESC = common dso_local global i32 0, align 4
@X86_CR4_VMXE = common dso_local global i64 0, align 8
@enable_ept = common dso_local global i64 0, align 8
@X86_CR4_PAE = common dso_local global i64 0, align 8
@X86_CR4_PSE = common dso_local global i64 0, align 8
@X86_CR4_SMEP = common dso_local global i64 0, align 8
@X86_CR4_SMAP = common dso_local global i64 0, align 8
@X86_CR4_PKE = common dso_local global i64 0, align 8
@CR4_READ_SHADOW = common dso_local global i32 0, align 4
@GUEST_CR4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmx_set_cr4(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vcpu_vmx*, align 8
  %7 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %9 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %8)
  store %struct.vcpu_vmx* %9, %struct.vcpu_vmx** %6, align 8
  %10 = call i64 (...) @cr4_read_shadow()
  %11 = load i64, i64* @X86_CR4_MCE, align 8
  %12 = and i64 %10, %11
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @X86_CR4_MCE, align 8
  %15 = xor i64 %14, -1
  %16 = and i64 %13, %15
  %17 = or i64 %12, %16
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* @enable_unrestricted_guest, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i64, i64* @KVM_VM_CR4_ALWAYS_ON_UNRESTRICTED_GUEST, align 8
  %22 = load i64, i64* %7, align 8
  %23 = or i64 %22, %21
  store i64 %23, i64* %7, align 8
  br label %39

24:                                               ; preds = %2
  %25 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %26 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i64, i64* @KVM_RMODE_VM_CR4_ALWAYS_ON, align 8
  %32 = load i64, i64* %7, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %7, align 8
  br label %38

34:                                               ; preds = %24
  %35 = load i64, i64* @KVM_PMODE_VM_CR4_ALWAYS_ON, align 8
  %36 = load i64, i64* %7, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %34, %30
  br label %39

39:                                               ; preds = %38, %20
  %40 = load i32, i32* @X86_FEATURE_UMIP, align 4
  %41 = call i32 @boot_cpu_has(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %75, label %43

43:                                               ; preds = %39
  %44 = call i64 (...) @vmx_umip_emulated()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %75

46:                                               ; preds = %43
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @X86_CR4_UMIP, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %53 = load i32, i32* @SECONDARY_EXEC_DESC, align 4
  %54 = call i32 @secondary_exec_controls_setbit(%struct.vcpu_vmx* %52, i32 %53)
  %55 = load i64, i64* @X86_CR4_UMIP, align 8
  %56 = xor i64 %55, -1
  %57 = load i64, i64* %7, align 8
  %58 = and i64 %57, %56
  store i64 %58, i64* %7, align 8
  br label %74

59:                                               ; preds = %46
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %61 = call i32 @is_guest_mode(%struct.kvm_vcpu* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %65 = call i32 @get_vmcs12(%struct.kvm_vcpu* %64)
  %66 = load i32, i32* @SECONDARY_EXEC_DESC, align 4
  %67 = call i32 @nested_cpu_has2(i32 %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %63, %59
  %70 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %71 = load i32, i32* @SECONDARY_EXEC_DESC, align 4
  %72 = call i32 @secondary_exec_controls_clearbit(%struct.vcpu_vmx* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %63
  br label %74

74:                                               ; preds = %73, %51
  br label %75

75:                                               ; preds = %74, %43, %39
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* @X86_CR4_VMXE, align 8
  %78 = and i64 %76, %77
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %82 = call i32 @nested_vmx_allowed(%struct.kvm_vcpu* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %86 = call i64 @is_smm(%struct.kvm_vcpu* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84, %80
  store i32 1, i32* %3, align 4
  br label %157

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %89, %75
  %91 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %92 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %98 = load i64, i64* %5, align 8
  %99 = call i32 @nested_cr4_valid(%struct.kvm_vcpu* %97, i64 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  store i32 1, i32* %3, align 4
  br label %157

102:                                              ; preds = %96, %90
  %103 = load i64, i64* %5, align 8
  %104 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %105 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  store i64 %103, i64* %106, align 8
  %107 = load i64, i64* @enable_unrestricted_guest, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %150, label %109

109:                                              ; preds = %102
  %110 = load i64, i64* @enable_ept, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %136

112:                                              ; preds = %109
  %113 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %114 = call i32 @is_paging(%struct.kvm_vcpu* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %124, label %116

116:                                              ; preds = %112
  %117 = load i64, i64* @X86_CR4_PAE, align 8
  %118 = xor i64 %117, -1
  %119 = load i64, i64* %7, align 8
  %120 = and i64 %119, %118
  store i64 %120, i64* %7, align 8
  %121 = load i64, i64* @X86_CR4_PSE, align 8
  %122 = load i64, i64* %7, align 8
  %123 = or i64 %122, %121
  store i64 %123, i64* %7, align 8
  br label %135

124:                                              ; preds = %112
  %125 = load i64, i64* %5, align 8
  %126 = load i64, i64* @X86_CR4_PAE, align 8
  %127 = and i64 %125, %126
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %124
  %130 = load i64, i64* @X86_CR4_PAE, align 8
  %131 = xor i64 %130, -1
  %132 = load i64, i64* %7, align 8
  %133 = and i64 %132, %131
  store i64 %133, i64* %7, align 8
  br label %134

134:                                              ; preds = %129, %124
  br label %135

135:                                              ; preds = %134, %116
  br label %136

136:                                              ; preds = %135, %109
  %137 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %138 = call i32 @is_paging(%struct.kvm_vcpu* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %149, label %140

140:                                              ; preds = %136
  %141 = load i64, i64* @X86_CR4_SMEP, align 8
  %142 = load i64, i64* @X86_CR4_SMAP, align 8
  %143 = or i64 %141, %142
  %144 = load i64, i64* @X86_CR4_PKE, align 8
  %145 = or i64 %143, %144
  %146 = xor i64 %145, -1
  %147 = load i64, i64* %7, align 8
  %148 = and i64 %147, %146
  store i64 %148, i64* %7, align 8
  br label %149

149:                                              ; preds = %140, %136
  br label %150

150:                                              ; preds = %149, %102
  %151 = load i32, i32* @CR4_READ_SHADOW, align 4
  %152 = load i64, i64* %5, align 8
  %153 = call i32 @vmcs_writel(i32 %151, i64 %152)
  %154 = load i32, i32* @GUEST_CR4, align 4
  %155 = load i64, i64* %7, align 8
  %156 = call i32 @vmcs_writel(i32 %154, i64 %155)
  store i32 0, i32* %3, align 4
  br label %157

157:                                              ; preds = %150, %101, %88
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i64 @cr4_read_shadow(...) #1

declare dso_local i32 @boot_cpu_has(i32) #1

declare dso_local i64 @vmx_umip_emulated(...) #1

declare dso_local i32 @secondary_exec_controls_setbit(%struct.vcpu_vmx*, i32) #1

declare dso_local i32 @is_guest_mode(%struct.kvm_vcpu*) #1

declare dso_local i32 @nested_cpu_has2(i32, i32) #1

declare dso_local i32 @get_vmcs12(%struct.kvm_vcpu*) #1

declare dso_local i32 @secondary_exec_controls_clearbit(%struct.vcpu_vmx*, i32) #1

declare dso_local i32 @nested_vmx_allowed(%struct.kvm_vcpu*) #1

declare dso_local i64 @is_smm(%struct.kvm_vcpu*) #1

declare dso_local i32 @nested_cr4_valid(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @is_paging(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmcs_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
