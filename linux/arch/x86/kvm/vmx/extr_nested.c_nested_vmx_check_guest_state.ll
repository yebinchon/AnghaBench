; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_check_guest_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_check_guest_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vmcs12 = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ENTRY_FAIL_DEFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VM_ENTRY_LOAD_IA32_PAT = common dso_local global i32 0, align 4
@ENTRY_FAIL_VMCS_LINK_PTR = common dso_local global i32 0, align 4
@VM_ENTRY_LOAD_IA32_EFER = common dso_local global i32 0, align 4
@VM_ENTRY_IA32E_MODE = common dso_local global i32 0, align 4
@EFER_LMA = common dso_local global i32 0, align 4
@X86_CR0_PG = common dso_local global i32 0, align 4
@EFER_LME = common dso_local global i32 0, align 4
@VM_ENTRY_LOAD_BNDCFGS = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@MSR_IA32_BNDCFGS_RSVD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.vmcs12*, i32*)* @nested_vmx_check_guest_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_vmx_check_guest_state(%struct.kvm_vcpu* %0, %struct.vmcs12* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca %struct.vmcs12*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store %struct.vmcs12* %1, %struct.vmcs12** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* @ENTRY_FAIL_DEFAULT, align 4
  %10 = load i32*, i32** %7, align 8
  store i32 %9, i32* %10, align 4
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %12 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %13 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @nested_guest_cr0_valid(%struct.kvm_vcpu* %11, i32 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @CC(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %3
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %23 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %24 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @nested_guest_cr4_valid(%struct.kvm_vcpu* %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @CC(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %21, %3
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %176

35:                                               ; preds = %21
  %36 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %37 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @VM_ENTRY_LOAD_IA32_PAT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %35
  %43 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %44 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @kvm_pat_valid(i32 %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @CC(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %176

55:                                               ; preds = %42, %35
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %57 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %58 = call i64 @nested_vmx_check_vmcs_link_ptr(%struct.kvm_vcpu* %56, %struct.vmcs12* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i32, i32* @ENTRY_FAIL_VMCS_LINK_PTR, align 4
  %62 = load i32*, i32** %7, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %176

65:                                               ; preds = %55
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %67 = call %struct.TYPE_4__* @to_vmx(%struct.kvm_vcpu* %66)
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %140

72:                                               ; preds = %65
  %73 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %74 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @VM_ENTRY_LOAD_IA32_EFER, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %140

79:                                               ; preds = %72
  %80 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %81 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @VM_ENTRY_IA32E_MODE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %8, align 4
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %88 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %89 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @kvm_valid_efer(%struct.kvm_vcpu* %87, i32 %90)
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = call i64 @CC(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %136, label %97

97:                                               ; preds = %79
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %100 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @EFER_LMA, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = icmp ne i32 %98, %107
  %109 = zext i1 %108 to i32
  %110 = call i64 @CC(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %136, label %112

112:                                              ; preds = %97
  %113 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %114 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @X86_CR0_PG, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %112
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %122 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @EFER_LME, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = icmp ne i32 %120, %129
  br label %131

131:                                              ; preds = %119, %112
  %132 = phi i1 [ false, %112 ], [ %130, %119 ]
  %133 = zext i1 %132 to i32
  %134 = call i64 @CC(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131, %97, %79
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %4, align 4
  br label %176

139:                                              ; preds = %131
  br label %140

140:                                              ; preds = %139, %72, %65
  %141 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %142 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @VM_ENTRY_LOAD_BNDCFGS, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %168

147:                                              ; preds = %140
  %148 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %149 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @PAGE_MASK, align 4
  %152 = and i32 %150, %151
  %153 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %154 = call i32 @is_noncanonical_address(i32 %152, %struct.kvm_vcpu* %153)
  %155 = call i64 @CC(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %165, label %157

157:                                              ; preds = %147
  %158 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %159 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @MSR_IA32_BNDCFGS_RSVD, align 4
  %162 = and i32 %160, %161
  %163 = call i64 @CC(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %157, %147
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %4, align 4
  br label %176

168:                                              ; preds = %157, %140
  %169 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %170 = call i64 @nested_check_guest_non_reg_state(%struct.vmcs12* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %4, align 4
  br label %176

175:                                              ; preds = %168
  store i32 0, i32* %4, align 4
  br label %176

176:                                              ; preds = %175, %172, %165, %136, %60, %52, %32
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local i64 @CC(i32) #1

declare dso_local i32 @nested_guest_cr0_valid(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @nested_guest_cr4_valid(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_pat_valid(i32) #1

declare dso_local i64 @nested_vmx_check_vmcs_link_ptr(%struct.kvm_vcpu*, %struct.vmcs12*) #1

declare dso_local %struct.TYPE_4__* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_valid_efer(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @is_noncanonical_address(i32, %struct.kvm_vcpu*) #1

declare dso_local i64 @nested_check_guest_non_reg_state(%struct.vmcs12*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
