; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_get_rflags.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_get_rflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@VCPU_EXREG_RFLAGS = common dso_local global i32 0, align 4
@GUEST_RFLAGS = common dso_local global i32 0, align 4
@RMODE_GUEST_OWNED_EFLAGS_BITS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vmx_get_rflags(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load i32, i32* @VCPU_EXREG_RFLAGS, align 4
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = call i32 @test_bit(i32 %5, i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %45, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @VCPU_EXREG_RFLAGS, align 4
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = call i32 @__set_bit(i32 %12, i32* %15)
  %17 = load i32, i32* @GUEST_RFLAGS, align 4
  %18 = call i64 @vmcs_readl(i32 %17)
  store i64 %18, i64* %3, align 8
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %20 = call %struct.TYPE_6__* @to_vmx(%struct.kvm_vcpu* %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %11
  %26 = load i64, i64* @RMODE_GUEST_OWNED_EFLAGS_BITS, align 8
  %27 = load i64, i64* %3, align 8
  %28 = and i64 %27, %26
  store i64 %28, i64* %3, align 8
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %30 = call %struct.TYPE_6__* @to_vmx(%struct.kvm_vcpu* %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @RMODE_GUEST_OWNED_EFLAGS_BITS, align 8
  %36 = xor i64 %35, -1
  %37 = and i64 %34, %36
  %38 = load i64, i64* %3, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %3, align 8
  br label %40

40:                                               ; preds = %25, %11
  %41 = load i64, i64* %3, align 8
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %43 = call %struct.TYPE_6__* @to_vmx(%struct.kvm_vcpu* %42)
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  br label %45

45:                                               ; preds = %40, %1
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %47 = call %struct.TYPE_6__* @to_vmx(%struct.kvm_vcpu* %46)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  ret i64 %49
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i64 @vmcs_readl(i32) #1

declare dso_local %struct.TYPE_6__* @to_vmx(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
