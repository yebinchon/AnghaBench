; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_alloc_shadow_vmcs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_alloc_shadow_vmcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmcs = type { i32 }
%struct.kvm_vcpu = type { i32 }
%struct.vcpu_vmx = type { %struct.loaded_vmcs, %struct.loaded_vmcs* }
%struct.loaded_vmcs = type { %struct.vmcs* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vmcs* (%struct.kvm_vcpu*)* @alloc_shadow_vmcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vmcs* @alloc_shadow_vmcs(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vcpu_vmx*, align 8
  %4 = alloca %struct.loaded_vmcs*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %5)
  store %struct.vcpu_vmx* %6, %struct.vcpu_vmx** %3, align 8
  %7 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %8 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %7, i32 0, i32 1
  %9 = load %struct.loaded_vmcs*, %struct.loaded_vmcs** %8, align 8
  store %struct.loaded_vmcs* %9, %struct.loaded_vmcs** %4, align 8
  %10 = load %struct.loaded_vmcs*, %struct.loaded_vmcs** %4, align 8
  %11 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %12 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %11, i32 0, i32 0
  %13 = icmp eq %struct.loaded_vmcs* %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.loaded_vmcs*, %struct.loaded_vmcs** %4, align 8
  %16 = getelementptr inbounds %struct.loaded_vmcs, %struct.loaded_vmcs* %15, i32 0, i32 0
  %17 = load %struct.vmcs*, %struct.vmcs** %16, align 8
  %18 = icmp ne %struct.vmcs* %17, null
  br label %19

19:                                               ; preds = %14, %1
  %20 = phi i1 [ false, %1 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load %struct.loaded_vmcs*, %struct.loaded_vmcs** %4, align 8
  %24 = getelementptr inbounds %struct.loaded_vmcs, %struct.loaded_vmcs* %23, i32 0, i32 0
  %25 = load %struct.vmcs*, %struct.vmcs** %24, align 8
  %26 = icmp ne %struct.vmcs* %25, null
  br i1 %26, label %41, label %27

27:                                               ; preds = %19
  %28 = call %struct.vmcs* @alloc_vmcs(i32 1)
  %29 = load %struct.loaded_vmcs*, %struct.loaded_vmcs** %4, align 8
  %30 = getelementptr inbounds %struct.loaded_vmcs, %struct.loaded_vmcs* %29, i32 0, i32 0
  store %struct.vmcs* %28, %struct.vmcs** %30, align 8
  %31 = load %struct.loaded_vmcs*, %struct.loaded_vmcs** %4, align 8
  %32 = getelementptr inbounds %struct.loaded_vmcs, %struct.loaded_vmcs* %31, i32 0, i32 0
  %33 = load %struct.vmcs*, %struct.vmcs** %32, align 8
  %34 = icmp ne %struct.vmcs* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load %struct.loaded_vmcs*, %struct.loaded_vmcs** %4, align 8
  %37 = getelementptr inbounds %struct.loaded_vmcs, %struct.loaded_vmcs* %36, i32 0, i32 0
  %38 = load %struct.vmcs*, %struct.vmcs** %37, align 8
  %39 = call i32 @vmcs_clear(%struct.vmcs* %38)
  br label %40

40:                                               ; preds = %35, %27
  br label %41

41:                                               ; preds = %40, %19
  %42 = load %struct.loaded_vmcs*, %struct.loaded_vmcs** %4, align 8
  %43 = getelementptr inbounds %struct.loaded_vmcs, %struct.loaded_vmcs* %42, i32 0, i32 0
  %44 = load %struct.vmcs*, %struct.vmcs** %43, align 8
  ret %struct.vmcs* %44
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.vmcs* @alloc_vmcs(i32) #1

declare dso_local i32 @vmcs_clear(%struct.vmcs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
