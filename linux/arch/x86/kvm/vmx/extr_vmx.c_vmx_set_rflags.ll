; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_set_rflags.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_set_rflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@VCPU_EXREG_RFLAGS = common dso_local global i32 0, align 4
@X86_EFLAGS_IOPL = common dso_local global i64 0, align 8
@X86_EFLAGS_VM = common dso_local global i64 0, align 8
@GUEST_RFLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmx_set_rflags(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = call i64 @vmx_get_rflags(%struct.kvm_vcpu* %6)
  store i64 %7, i64* %5, align 8
  %8 = load i32, i32* @VCPU_EXREG_RFLAGS, align 4
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = call i32 @__set_bit(i32 %8, i32* %11)
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = call %struct.TYPE_6__* @to_vmx(%struct.kvm_vcpu* %14)
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i64 %13, i64* %16, align 8
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %18 = call %struct.TYPE_6__* @to_vmx(%struct.kvm_vcpu* %17)
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %26 = call %struct.TYPE_6__* @to_vmx(%struct.kvm_vcpu* %25)
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i64 %24, i64* %28, align 8
  %29 = load i64, i64* @X86_EFLAGS_IOPL, align 8
  %30 = load i64, i64* @X86_EFLAGS_VM, align 8
  %31 = or i64 %29, %30
  %32 = load i64, i64* %4, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %23, %2
  %35 = load i32, i32* @GUEST_RFLAGS, align 4
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @vmcs_writel(i32 %35, i64 %36)
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %40 = call %struct.TYPE_6__* @to_vmx(%struct.kvm_vcpu* %39)
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = xor i64 %38, %42
  %44 = load i64, i64* @X86_EFLAGS_VM, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %34
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %49 = call i32 @emulation_required(%struct.kvm_vcpu* %48)
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %51 = call %struct.TYPE_6__* @to_vmx(%struct.kvm_vcpu* %50)
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 8
  br label %53

53:                                               ; preds = %47, %34
  ret void
}

declare dso_local i64 @vmx_get_rflags(%struct.kvm_vcpu*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local %struct.TYPE_6__* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmcs_writel(i32, i64) #1

declare dso_local i32 @emulation_required(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
