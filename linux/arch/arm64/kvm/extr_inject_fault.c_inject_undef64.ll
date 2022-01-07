; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_inject_fault.c_inject_undef64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_inject_fault.c_inject_undef64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@ESR_ELx_EC_UNKNOWN = common dso_local global i32 0, align 4
@ESR_ELx_EC_SHIFT = common dso_local global i32 0, align 4
@except_type_sync = common dso_local global i32 0, align 4
@PSTATE_FAULT_BITS_64 = common dso_local global i64 0, align 8
@ESR_ELx_IL = common dso_local global i32 0, align 4
@ESR_EL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @inject_undef64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inject_undef64(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = call i64* @vcpu_cpsr(%struct.kvm_vcpu* %5)
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = load i32, i32* @ESR_ELx_EC_UNKNOWN, align 4
  %9 = load i32, i32* @ESR_ELx_EC_SHIFT, align 4
  %10 = shl i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %13 = call i32* @vcpu_pc(%struct.kvm_vcpu* %12)
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @vcpu_write_elr_el1(%struct.kvm_vcpu* %11, i32 %14)
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %17 = load i32, i32* @except_type_sync, align 4
  %18 = call i32 @get_except_vector(%struct.kvm_vcpu* %16, i32 %17)
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %20 = call i32* @vcpu_pc(%struct.kvm_vcpu* %19)
  store i32 %18, i32* %20, align 4
  %21 = load i64, i64* @PSTATE_FAULT_BITS_64, align 8
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %23 = call i64* @vcpu_cpsr(%struct.kvm_vcpu* %22)
  store i64 %21, i64* %23, align 8
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @vcpu_write_spsr(%struct.kvm_vcpu* %24, i64 %25)
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %28 = call i64 @kvm_vcpu_trap_il_is32bit(%struct.kvm_vcpu* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load i32, i32* @ESR_ELx_IL, align 4
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %30, %1
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @ESR_EL1, align 4
  %38 = call i32 @vcpu_write_sys_reg(%struct.kvm_vcpu* %35, i32 %36, i32 %37)
  ret void
}

declare dso_local i64* @vcpu_cpsr(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_write_elr_el1(%struct.kvm_vcpu*, i32) #1

declare dso_local i32* @vcpu_pc(%struct.kvm_vcpu*) #1

declare dso_local i32 @get_except_vector(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @vcpu_write_spsr(%struct.kvm_vcpu*, i64) #1

declare dso_local i64 @kvm_vcpu_trap_il_is32bit(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_write_sys_reg(%struct.kvm_vcpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
