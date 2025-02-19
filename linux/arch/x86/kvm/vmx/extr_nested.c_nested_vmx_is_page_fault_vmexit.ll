; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_is_page_fault_vmexit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_is_page_fault_vmexit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmcs12 = type { i32, i32, i32 }

@PF_VECTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmcs12*, i32)* @nested_vmx_is_page_fault_vmexit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_vmx_is_page_fault_vmexit(%struct.vmcs12* %0, i32 %1) #0 {
  %3 = alloca %struct.vmcs12*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vmcs12* %0, %struct.vmcs12** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %8 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PF_VECTOR, align 4
  %11 = shl i32 1, %10
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %17 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %15, %18
  %20 = load %struct.vmcs12*, %struct.vmcs12** %3, align 8
  %21 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %19, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = xor i32 %25, %26
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
