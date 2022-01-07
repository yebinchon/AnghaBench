; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_handle_set_cr4.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_handle_set_cr4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vmcs12 = type { i64, i64 }

@CR4_READ_SHADOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i64)* @handle_set_cr4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_set_cr4(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vmcs12*, align 8
  %7 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %9 = call i64 @is_guest_mode(%struct.kvm_vcpu* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %2
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %13 = call %struct.vmcs12* @get_vmcs12(%struct.kvm_vcpu* %12)
  store %struct.vmcs12* %13, %struct.vmcs12** %6, align 8
  %14 = load i64, i64* %5, align 8
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %17 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = xor i64 %18, -1
  %20 = and i64 %15, %19
  %21 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %22 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %25 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = and i64 %23, %26
  %28 = or i64 %20, %27
  store i64 %28, i64* %5, align 8
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @kvm_set_cr4(%struct.kvm_vcpu* %29, i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %42

34:                                               ; preds = %11
  %35 = load i32, i32* @CR4_READ_SHADOW, align 4
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @vmcs_writel(i32 %35, i64 %36)
  store i32 0, i32* %3, align 4
  br label %42

38:                                               ; preds = %2
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @kvm_set_cr4(%struct.kvm_vcpu* %39, i64 %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %34, %33
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @is_guest_mode(%struct.kvm_vcpu*) #1

declare dso_local %struct.vmcs12* @get_vmcs12(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_set_cr4(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @vmcs_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
