; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_vmx_switch_vmcs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_vmx_switch_vmcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.loaded_vmcs = type { i32 }
%struct.vcpu_vmx = type { %struct.loaded_vmcs* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.loaded_vmcs*)* @vmx_switch_vmcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_switch_vmcs(%struct.kvm_vcpu* %0, %struct.loaded_vmcs* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.loaded_vmcs*, align 8
  %5 = alloca %struct.vcpu_vmx*, align 8
  %6 = alloca %struct.loaded_vmcs*, align 8
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.loaded_vmcs* %1, %struct.loaded_vmcs** %4, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %8)
  store %struct.vcpu_vmx* %9, %struct.vcpu_vmx** %5, align 8
  %10 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %11 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %10, i32 0, i32 0
  %12 = load %struct.loaded_vmcs*, %struct.loaded_vmcs** %11, align 8
  %13 = load %struct.loaded_vmcs*, %struct.loaded_vmcs** %4, align 8
  %14 = icmp eq %struct.loaded_vmcs* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %33

16:                                               ; preds = %2
  %17 = call i32 (...) @get_cpu()
  store i32 %17, i32* %7, align 4
  %18 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %19 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %18, i32 0, i32 0
  %20 = load %struct.loaded_vmcs*, %struct.loaded_vmcs** %19, align 8
  store %struct.loaded_vmcs* %20, %struct.loaded_vmcs** %6, align 8
  %21 = load %struct.loaded_vmcs*, %struct.loaded_vmcs** %4, align 8
  %22 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %23 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %22, i32 0, i32 0
  store %struct.loaded_vmcs* %21, %struct.loaded_vmcs** %23, align 8
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @vmx_vcpu_load_vmcs(%struct.kvm_vcpu* %24, i32 %25)
  %27 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %28 = load %struct.loaded_vmcs*, %struct.loaded_vmcs** %6, align 8
  %29 = call i32 @vmx_sync_vmcs_host_state(%struct.vcpu_vmx* %27, %struct.loaded_vmcs* %28)
  %30 = call i32 (...) @put_cpu()
  %31 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %32 = call i32 @vmx_segment_cache_clear(%struct.vcpu_vmx* %31)
  br label %33

33:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @vmx_vcpu_load_vmcs(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @vmx_sync_vmcs_host_state(%struct.vcpu_vmx*, %struct.loaded_vmcs*) #1

declare dso_local i32 @put_cpu(...) #1

declare dso_local i32 @vmx_segment_cache_clear(%struct.vcpu_vmx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
