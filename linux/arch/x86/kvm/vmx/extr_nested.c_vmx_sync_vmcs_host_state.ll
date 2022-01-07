; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_vmx_sync_vmcs_host_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_vmx_sync_vmcs_host_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_vmx = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.vmcs_host_state }
%struct.vmcs_host_state = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.loaded_vmcs = type { %struct.vmcs_host_state }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_vmx*, %struct.loaded_vmcs*)* @vmx_sync_vmcs_host_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_sync_vmcs_host_state(%struct.vcpu_vmx* %0, %struct.loaded_vmcs* %1) #0 {
  %3 = alloca %struct.vcpu_vmx*, align 8
  %4 = alloca %struct.loaded_vmcs*, align 8
  %5 = alloca %struct.vmcs_host_state*, align 8
  %6 = alloca %struct.vmcs_host_state*, align 8
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %3, align 8
  store %struct.loaded_vmcs* %1, %struct.loaded_vmcs** %4, align 8
  %7 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %8 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %42

16:                                               ; preds = %2
  %17 = load %struct.loaded_vmcs*, %struct.loaded_vmcs** %4, align 8
  %18 = getelementptr inbounds %struct.loaded_vmcs, %struct.loaded_vmcs* %17, i32 0, i32 0
  store %struct.vmcs_host_state* %18, %struct.vmcs_host_state** %6, align 8
  %19 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %20 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.vmcs_host_state* %22, %struct.vmcs_host_state** %5, align 8
  %23 = load %struct.vmcs_host_state*, %struct.vmcs_host_state** %5, align 8
  %24 = load %struct.vmcs_host_state*, %struct.vmcs_host_state** %6, align 8
  %25 = getelementptr inbounds %struct.vmcs_host_state, %struct.vmcs_host_state* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.vmcs_host_state*, %struct.vmcs_host_state** %6, align 8
  %28 = getelementptr inbounds %struct.vmcs_host_state, %struct.vmcs_host_state* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vmcs_host_state*, %struct.vmcs_host_state** %6, align 8
  %31 = getelementptr inbounds %struct.vmcs_host_state, %struct.vmcs_host_state* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.vmcs_host_state*, %struct.vmcs_host_state** %6, align 8
  %34 = getelementptr inbounds %struct.vmcs_host_state, %struct.vmcs_host_state* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @vmx_set_host_fs_gs(%struct.vmcs_host_state* %23, i32 %26, i32 %29, i32 %32, i32 %35)
  %37 = load %struct.vmcs_host_state*, %struct.vmcs_host_state** %6, align 8
  %38 = getelementptr inbounds %struct.vmcs_host_state, %struct.vmcs_host_state* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.vmcs_host_state*, %struct.vmcs_host_state** %5, align 8
  %41 = getelementptr inbounds %struct.vmcs_host_state, %struct.vmcs_host_state* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %16, %15
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vmx_set_host_fs_gs(%struct.vmcs_host_state*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
