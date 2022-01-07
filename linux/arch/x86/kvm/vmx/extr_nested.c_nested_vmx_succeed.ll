; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_succeed.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_succeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@X86_EFLAGS_CF = common dso_local global i32 0, align 4
@X86_EFLAGS_PF = common dso_local global i32 0, align 4
@X86_EFLAGS_AF = common dso_local global i32 0, align 4
@X86_EFLAGS_ZF = common dso_local global i32 0, align 4
@X86_EFLAGS_SF = common dso_local global i32 0, align 4
@X86_EFLAGS_OF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @nested_vmx_succeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_vmx_succeed(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %3 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = call i32 @vmx_get_rflags(%struct.kvm_vcpu* %4)
  %6 = load i32, i32* @X86_EFLAGS_CF, align 4
  %7 = load i32, i32* @X86_EFLAGS_PF, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @X86_EFLAGS_AF, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @X86_EFLAGS_ZF, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @X86_EFLAGS_SF, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @X86_EFLAGS_OF, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %5, %17
  %19 = call i32 @vmx_set_rflags(%struct.kvm_vcpu* %3, i32 %18)
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %21 = call i32 @kvm_skip_emulated_instruction(%struct.kvm_vcpu* %20)
  ret i32 %21
}

declare dso_local i32 @vmx_set_rflags(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @vmx_get_rflags(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_skip_emulated_instruction(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
