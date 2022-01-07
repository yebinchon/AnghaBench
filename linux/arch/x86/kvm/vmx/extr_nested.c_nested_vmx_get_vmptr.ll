; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_get_vmptr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_get_vmptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.x86_exception = type { i32 }

@EXIT_QUALIFICATION = common dso_local global i32 0, align 4
@VMX_INSTRUCTION_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32*)* @nested_vmx_get_vmptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_vmx_get_vmptr(%struct.kvm_vcpu* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.x86_exception, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %9 = load i32, i32* @EXIT_QUALIFICATION, align 4
  %10 = call i32 @vmcs_readl(i32 %9)
  %11 = load i32, i32* @VMX_INSTRUCTION_INFO, align 4
  %12 = call i32 @vmcs_read32(i32 %11)
  %13 = call i64 @get_vmx_mem_address(%struct.kvm_vcpu* %8, i32 %10, i32 %12, i32 0, i32 4, i32* %6)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %26

16:                                               ; preds = %2
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @kvm_read_guest_virt(%struct.kvm_vcpu* %17, i32 %18, i32* %19, i32 4, %struct.x86_exception* %7)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %24 = call i32 @kvm_inject_page_fault(%struct.kvm_vcpu* %23, %struct.x86_exception* %7)
  store i32 1, i32* %3, align 4
  br label %26

25:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %22, %15
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i64 @get_vmx_mem_address(%struct.kvm_vcpu*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @vmcs_readl(i32) #1

declare dso_local i32 @vmcs_read32(i32) #1

declare dso_local i64 @kvm_read_guest_virt(%struct.kvm_vcpu*, i32, i32*, i32, %struct.x86_exception*) #1

declare dso_local i32 @kvm_inject_page_fault(%struct.kvm_vcpu*, %struct.x86_exception*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
