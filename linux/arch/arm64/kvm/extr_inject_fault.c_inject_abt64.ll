; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_inject_fault.c_inject_abt64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_inject_fault.c_inject_abt64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@except_type_sync = common dso_local global i32 0, align 4
@PSTATE_FAULT_BITS_64 = common dso_local global i64 0, align 8
@FAR_EL1 = common dso_local global i32 0, align 4
@ESR_ELx_IL = common dso_local global i64 0, align 8
@PSR_MODE_MASK = common dso_local global i64 0, align 8
@PSR_MODE_EL0t = common dso_local global i64 0, align 8
@ESR_ELx_EC_IABT_LOW = common dso_local global i64 0, align 8
@ESR_ELx_EC_SHIFT = common dso_local global i64 0, align 8
@ESR_ELx_EC_IABT_CUR = common dso_local global i64 0, align 8
@ESR_ELx_EC_DABT_LOW = common dso_local global i64 0, align 8
@ESR_ELx_FSC_EXTABT = common dso_local global i64 0, align 8
@ESR_EL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32, i64)* @inject_abt64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inject_abt64(%struct.kvm_vcpu* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %11 = call i64* @vcpu_cpsr(%struct.kvm_vcpu* %10)
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %14 = call i32 @vcpu_mode_is_32bit(%struct.kvm_vcpu* %13)
  store i32 %14, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %17 = call i32* @vcpu_pc(%struct.kvm_vcpu* %16)
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @vcpu_write_elr_el1(%struct.kvm_vcpu* %15, i32 %18)
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %21 = load i32, i32* @except_type_sync, align 4
  %22 = call i32 @get_except_vector(%struct.kvm_vcpu* %20, i32 %21)
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %24 = call i32* @vcpu_pc(%struct.kvm_vcpu* %23)
  store i32 %22, i32* %24, align 4
  %25 = load i64, i64* @PSTATE_FAULT_BITS_64, align 8
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %27 = call i64* @vcpu_cpsr(%struct.kvm_vcpu* %26)
  store i64 %25, i64* %27, align 8
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @vcpu_write_spsr(%struct.kvm_vcpu* %28, i64 %29)
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i32, i32* @FAR_EL1, align 4
  %34 = call i32 @vcpu_write_sys_reg(%struct.kvm_vcpu* %31, i64 %32, i32 %33)
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %36 = call i64 @kvm_vcpu_trap_il_is32bit(%struct.kvm_vcpu* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %3
  %39 = load i64, i64* @ESR_ELx_IL, align 8
  %40 = load i64, i64* %9, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %38, %3
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @PSR_MODE_MASK, align 8
  %48 = and i64 %46, %47
  %49 = load i64, i64* @PSR_MODE_EL0t, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45, %42
  %52 = load i64, i64* @ESR_ELx_EC_IABT_LOW, align 8
  %53 = load i64, i64* @ESR_ELx_EC_SHIFT, align 8
  %54 = shl i64 %52, %53
  %55 = load i64, i64* %9, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %9, align 8
  br label %63

57:                                               ; preds = %45
  %58 = load i64, i64* @ESR_ELx_EC_IABT_CUR, align 8
  %59 = load i64, i64* @ESR_ELx_EC_SHIFT, align 8
  %60 = shl i64 %58, %59
  %61 = load i64, i64* %9, align 8
  %62 = or i64 %61, %60
  store i64 %62, i64* %9, align 8
  br label %63

63:                                               ; preds = %57, %51
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %63
  %67 = load i64, i64* @ESR_ELx_EC_DABT_LOW, align 8
  %68 = load i64, i64* @ESR_ELx_EC_SHIFT, align 8
  %69 = shl i64 %67, %68
  %70 = load i64, i64* %9, align 8
  %71 = or i64 %70, %69
  store i64 %71, i64* %9, align 8
  br label %72

72:                                               ; preds = %66, %63
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* @ESR_ELx_FSC_EXTABT, align 8
  %76 = or i64 %74, %75
  %77 = load i32, i32* @ESR_EL1, align 4
  %78 = call i32 @vcpu_write_sys_reg(%struct.kvm_vcpu* %73, i64 %76, i32 %77)
  ret void
}

declare dso_local i64* @vcpu_cpsr(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_mode_is_32bit(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_write_elr_el1(%struct.kvm_vcpu*, i32) #1

declare dso_local i32* @vcpu_pc(%struct.kvm_vcpu*) #1

declare dso_local i32 @get_except_vector(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @vcpu_write_spsr(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @vcpu_write_sys_reg(%struct.kvm_vcpu*, i64, i32) #1

declare dso_local i64 @kvm_vcpu_trap_il_is32bit(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
