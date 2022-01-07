; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_failValid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_failValid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_vmx = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }

@X86_EFLAGS_CF = common dso_local global i32 0, align 4
@X86_EFLAGS_PF = common dso_local global i32 0, align 4
@X86_EFLAGS_AF = common dso_local global i32 0, align 4
@X86_EFLAGS_SF = common dso_local global i32 0, align 4
@X86_EFLAGS_OF = common dso_local global i32 0, align 4
@X86_EFLAGS_ZF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32)* @nested_vmx_failValid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_vmx_failValid(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vcpu_vmx*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %8 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %7)
  store %struct.vcpu_vmx* %8, %struct.vcpu_vmx** %6, align 8
  %9 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %10 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, -1
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %16 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %22 = call i32 @nested_vmx_failInvalid(%struct.kvm_vcpu* %21)
  store i32 %22, i32* %3, align 4
  br label %47

23:                                               ; preds = %14, %2
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %26 = call i32 @vmx_get_rflags(%struct.kvm_vcpu* %25)
  %27 = load i32, i32* @X86_EFLAGS_CF, align 4
  %28 = load i32, i32* @X86_EFLAGS_PF, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @X86_EFLAGS_AF, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @X86_EFLAGS_SF, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @X86_EFLAGS_OF, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = and i32 %26, %36
  %38 = load i32, i32* @X86_EFLAGS_ZF, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @vmx_set_rflags(%struct.kvm_vcpu* %24, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %43 = call %struct.TYPE_4__* @get_vmcs12(%struct.kvm_vcpu* %42)
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %46 = call i32 @kvm_skip_emulated_instruction(%struct.kvm_vcpu* %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %23, %20
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @nested_vmx_failInvalid(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmx_set_rflags(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @vmx_get_rflags(%struct.kvm_vcpu*) #1

declare dso_local %struct.TYPE_4__* @get_vmcs12(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_skip_emulated_instruction(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
