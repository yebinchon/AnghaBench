; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_handle_vmfunc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_handle_vmfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_vmx = type { i32 }
%struct.vmcs12 = type { i32 }

@UD_VECTOR = common dso_local global i32 0, align 4
@VM_EXIT_INTR_INFO = common dso_local global i32 0, align 4
@EXIT_QUALIFICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @handle_vmfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_vmfunc(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.vcpu_vmx*, align 8
  %5 = alloca %struct.vmcs12*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %7)
  store %struct.vcpu_vmx* %8, %struct.vcpu_vmx** %4, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = call i32 @kvm_rax_read(%struct.kvm_vcpu* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = call i32 @is_guest_mode(%struct.kvm_vcpu* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = load i32, i32* @UD_VECTOR, align 4
  %17 = call i32 @kvm_queue_exception(%struct.kvm_vcpu* %15, i32 %16)
  store i32 1, i32* %2, align 4
  br label %52

18:                                               ; preds = %1
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %20 = call %struct.vmcs12* @get_vmcs12(%struct.kvm_vcpu* %19)
  store %struct.vmcs12* %20, %struct.vmcs12** %5, align 8
  %21 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %22 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %23, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %42

29:                                               ; preds = %18
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %38 [
    i32 0, label %31
  ]

31:                                               ; preds = %29
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %33 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %34 = call i32 @nested_vmx_eptp_switching(%struct.kvm_vcpu* %32, %struct.vmcs12* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %42

37:                                               ; preds = %31
  br label %39

38:                                               ; preds = %29
  br label %42

39:                                               ; preds = %37
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %41 = call i32 @kvm_skip_emulated_instruction(%struct.kvm_vcpu* %40)
  store i32 %41, i32* %2, align 4
  br label %52

42:                                               ; preds = %38, %36, %28
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %44 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %45 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @VM_EXIT_INTR_INFO, align 4
  %48 = call i32 @vmcs_read32(i32 %47)
  %49 = load i32, i32* @EXIT_QUALIFICATION, align 4
  %50 = call i32 @vmcs_readl(i32 %49)
  %51 = call i32 @nested_vmx_vmexit(%struct.kvm_vcpu* %43, i32 %46, i32 %48, i32 %50)
  store i32 1, i32* %2, align 4
  br label %52

52:                                               ; preds = %42, %39, %14
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_rax_read(%struct.kvm_vcpu*) #1

declare dso_local i32 @is_guest_mode(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_queue_exception(%struct.kvm_vcpu*, i32) #1

declare dso_local %struct.vmcs12* @get_vmcs12(%struct.kvm_vcpu*) #1

declare dso_local i32 @nested_vmx_eptp_switching(%struct.kvm_vcpu*, %struct.vmcs12*) #1

declare dso_local i32 @kvm_skip_emulated_instruction(%struct.kvm_vcpu*) #1

declare dso_local i32 @nested_vmx_vmexit(%struct.kvm_vcpu*, i32, i32, i32) #1

declare dso_local i32 @vmcs_read32(i32) #1

declare dso_local i32 @vmcs_readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
