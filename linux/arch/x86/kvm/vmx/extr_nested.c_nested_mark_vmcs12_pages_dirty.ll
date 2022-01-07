; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_mark_vmcs12_pages_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_mark_vmcs12_pages_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vmcs12 = type { i32, i32 }

@CPU_BASED_TPR_SHADOW = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @nested_mark_vmcs12_pages_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nested_mark_vmcs12_pages_dirty(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vmcs12*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = call %struct.vmcs12* @get_vmcs12(%struct.kvm_vcpu* %5)
  store %struct.vmcs12* %6, %struct.vmcs12** %3, align 8
  %7 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %8 = load i32, i32* @CPU_BASED_TPR_SHADOW, align 4
  %9 = call i64 @nested_cpu_has(%struct.vmcs12* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %13 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PAGE_SHIFT, align 4
  %16 = ashr i32 %14, %15
  store i32 %16, i32* %4, align 4
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @kvm_vcpu_mark_page_dirty(%struct.kvm_vcpu* %17, i32 %18)
  br label %20

20:                                               ; preds = %11, %1
  %21 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %22 = call i64 @nested_cpu_has_posted_intr(%struct.vmcs12* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %26 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PAGE_SHIFT, align 4
  %29 = ashr i32 %27, %28
  store i32 %29, i32* %4, align 4
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @kvm_vcpu_mark_page_dirty(%struct.kvm_vcpu* %30, i32 %31)
  br label %33

33:                                               ; preds = %24, %20
  ret void
}

declare dso_local %struct.vmcs12* @get_vmcs12(%struct.kvm_vcpu*) #1

declare dso_local i64 @nested_cpu_has(%struct.vmcs12*, i32) #1

declare dso_local i32 @kvm_vcpu_mark_page_dirty(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @nested_cpu_has_posted_intr(%struct.vmcs12*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
