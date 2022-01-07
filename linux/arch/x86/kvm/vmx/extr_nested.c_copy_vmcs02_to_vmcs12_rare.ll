; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_copy_vmcs02_to_vmcs12_rare.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_copy_vmcs02_to_vmcs12_rare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vmcs12 = type { i32 }
%struct.vcpu_vmx = type { i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.vmcs12*)* @copy_vmcs02_to_vmcs12_rare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_vmcs02_to_vmcs12_rare(%struct.kvm_vcpu* %0, %struct.vmcs12* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.vmcs12*, align 8
  %5 = alloca %struct.vcpu_vmx*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.vmcs12* %1, %struct.vmcs12** %4, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %7)
  store %struct.vcpu_vmx* %8, %struct.vcpu_vmx** %5, align 8
  %9 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %10 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %46

15:                                               ; preds = %2
  %16 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %17 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %20 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %19, i32 0, i32 1
  %21 = icmp ne i32* %18, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON_ONCE(i32 %22)
  %24 = call i32 (...) @get_cpu()
  store i32 %24, i32* %6, align 4
  %25 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %26 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %29 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %28, i32 0, i32 2
  store i32* %27, i32** %29, align 8
  %30 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %31 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %30, i32 0, i32 0
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @vmx_vcpu_load(i32* %31, i32 %32)
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %35 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %36 = call i32 @sync_vmcs02_to_vmcs12_rare(%struct.kvm_vcpu* %34, %struct.vmcs12* %35)
  %37 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %38 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %37, i32 0, i32 1
  %39 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %40 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %39, i32 0, i32 2
  store i32* %38, i32** %40, align 8
  %41 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %42 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %41, i32 0, i32 0
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @vmx_vcpu_load(i32* %42, i32 %43)
  %45 = call i32 (...) @put_cpu()
  br label %46

46:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @vmx_vcpu_load(i32*, i32) #1

declare dso_local i32 @sync_vmcs02_to_vmcs12_rare(%struct.kvm_vcpu*, %struct.vmcs12*) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
