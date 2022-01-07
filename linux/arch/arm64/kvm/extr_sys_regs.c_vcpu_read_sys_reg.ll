; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_vcpu_read_sys_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_vcpu_read_sys_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SYS_CSSELR_EL1 = common dso_local global i32 0, align 4
@SYS_SCTLR_EL12 = common dso_local global i32 0, align 4
@SYS_ACTLR_EL1 = common dso_local global i32 0, align 4
@SYS_CPACR_EL12 = common dso_local global i32 0, align 4
@SYS_TTBR0_EL12 = common dso_local global i32 0, align 4
@SYS_TTBR1_EL12 = common dso_local global i32 0, align 4
@SYS_TCR_EL12 = common dso_local global i32 0, align 4
@SYS_ESR_EL12 = common dso_local global i32 0, align 4
@SYS_AFSR0_EL12 = common dso_local global i32 0, align 4
@SYS_AFSR1_EL12 = common dso_local global i32 0, align 4
@SYS_FAR_EL12 = common dso_local global i32 0, align 4
@SYS_MAIR_EL12 = common dso_local global i32 0, align 4
@SYS_VBAR_EL12 = common dso_local global i32 0, align 4
@SYS_CONTEXTIDR_EL12 = common dso_local global i32 0, align 4
@SYS_TPIDR_EL0 = common dso_local global i32 0, align 4
@SYS_TPIDRRO_EL0 = common dso_local global i32 0, align 4
@SYS_TPIDR_EL1 = common dso_local global i32 0, align 4
@SYS_AMAIR_EL12 = common dso_local global i32 0, align 4
@SYS_CNTKCTL_EL12 = common dso_local global i32 0, align 4
@SYS_PAR_EL1 = common dso_local global i32 0, align 4
@SYS_DACR32_EL2 = common dso_local global i32 0, align 4
@SYS_IFSR32_EL2 = common dso_local global i32 0, align 4
@SYS_DBGVCR32_EL2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vcpu_read_sys_reg(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %84

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %83 [
    i32 143, label %14
    i32 135, label %17
    i32 150, label %20
    i32 144, label %23
    i32 130, label %26
    i32 129, label %29
    i32 134, label %32
    i32 140, label %35
    i32 149, label %38
    i32 148, label %41
    i32 139, label %44
    i32 137, label %47
    i32 128, label %50
    i32 145, label %53
    i32 132, label %56
    i32 133, label %59
    i32 131, label %62
    i32 147, label %65
    i32 146, label %68
    i32 136, label %71
    i32 142, label %74
    i32 138, label %77
    i32 141, label %80
  ]

14:                                               ; preds = %12
  %15 = load i32, i32* @SYS_CSSELR_EL1, align 4
  %16 = call i32 @read_sysreg_s(i32 %15)
  store i32 %16, i32* %3, align 4
  br label %88

17:                                               ; preds = %12
  %18 = load i32, i32* @SYS_SCTLR_EL12, align 4
  %19 = call i32 @read_sysreg_s(i32 %18)
  store i32 %19, i32* %3, align 4
  br label %88

20:                                               ; preds = %12
  %21 = load i32, i32* @SYS_ACTLR_EL1, align 4
  %22 = call i32 @read_sysreg_s(i32 %21)
  store i32 %22, i32* %3, align 4
  br label %88

23:                                               ; preds = %12
  %24 = load i32, i32* @SYS_CPACR_EL12, align 4
  %25 = call i32 @read_sysreg_s(i32 %24)
  store i32 %25, i32* %3, align 4
  br label %88

26:                                               ; preds = %12
  %27 = load i32, i32* @SYS_TTBR0_EL12, align 4
  %28 = call i32 @read_sysreg_s(i32 %27)
  store i32 %28, i32* %3, align 4
  br label %88

29:                                               ; preds = %12
  %30 = load i32, i32* @SYS_TTBR1_EL12, align 4
  %31 = call i32 @read_sysreg_s(i32 %30)
  store i32 %31, i32* %3, align 4
  br label %88

32:                                               ; preds = %12
  %33 = load i32, i32* @SYS_TCR_EL12, align 4
  %34 = call i32 @read_sysreg_s(i32 %33)
  store i32 %34, i32* %3, align 4
  br label %88

35:                                               ; preds = %12
  %36 = load i32, i32* @SYS_ESR_EL12, align 4
  %37 = call i32 @read_sysreg_s(i32 %36)
  store i32 %37, i32* %3, align 4
  br label %88

38:                                               ; preds = %12
  %39 = load i32, i32* @SYS_AFSR0_EL12, align 4
  %40 = call i32 @read_sysreg_s(i32 %39)
  store i32 %40, i32* %3, align 4
  br label %88

41:                                               ; preds = %12
  %42 = load i32, i32* @SYS_AFSR1_EL12, align 4
  %43 = call i32 @read_sysreg_s(i32 %42)
  store i32 %43, i32* %3, align 4
  br label %88

44:                                               ; preds = %12
  %45 = load i32, i32* @SYS_FAR_EL12, align 4
  %46 = call i32 @read_sysreg_s(i32 %45)
  store i32 %46, i32* %3, align 4
  br label %88

47:                                               ; preds = %12
  %48 = load i32, i32* @SYS_MAIR_EL12, align 4
  %49 = call i32 @read_sysreg_s(i32 %48)
  store i32 %49, i32* %3, align 4
  br label %88

50:                                               ; preds = %12
  %51 = load i32, i32* @SYS_VBAR_EL12, align 4
  %52 = call i32 @read_sysreg_s(i32 %51)
  store i32 %52, i32* %3, align 4
  br label %88

53:                                               ; preds = %12
  %54 = load i32, i32* @SYS_CONTEXTIDR_EL12, align 4
  %55 = call i32 @read_sysreg_s(i32 %54)
  store i32 %55, i32* %3, align 4
  br label %88

56:                                               ; preds = %12
  %57 = load i32, i32* @SYS_TPIDR_EL0, align 4
  %58 = call i32 @read_sysreg_s(i32 %57)
  store i32 %58, i32* %3, align 4
  br label %88

59:                                               ; preds = %12
  %60 = load i32, i32* @SYS_TPIDRRO_EL0, align 4
  %61 = call i32 @read_sysreg_s(i32 %60)
  store i32 %61, i32* %3, align 4
  br label %88

62:                                               ; preds = %12
  %63 = load i32, i32* @SYS_TPIDR_EL1, align 4
  %64 = call i32 @read_sysreg_s(i32 %63)
  store i32 %64, i32* %3, align 4
  br label %88

65:                                               ; preds = %12
  %66 = load i32, i32* @SYS_AMAIR_EL12, align 4
  %67 = call i32 @read_sysreg_s(i32 %66)
  store i32 %67, i32* %3, align 4
  br label %88

68:                                               ; preds = %12
  %69 = load i32, i32* @SYS_CNTKCTL_EL12, align 4
  %70 = call i32 @read_sysreg_s(i32 %69)
  store i32 %70, i32* %3, align 4
  br label %88

71:                                               ; preds = %12
  %72 = load i32, i32* @SYS_PAR_EL1, align 4
  %73 = call i32 @read_sysreg_s(i32 %72)
  store i32 %73, i32* %3, align 4
  br label %88

74:                                               ; preds = %12
  %75 = load i32, i32* @SYS_DACR32_EL2, align 4
  %76 = call i32 @read_sysreg_s(i32 %75)
  store i32 %76, i32* %3, align 4
  br label %88

77:                                               ; preds = %12
  %78 = load i32, i32* @SYS_IFSR32_EL2, align 4
  %79 = call i32 @read_sysreg_s(i32 %78)
  store i32 %79, i32* %3, align 4
  br label %88

80:                                               ; preds = %12
  %81 = load i32, i32* @SYS_DBGVCR32_EL2, align 4
  %82 = call i32 @read_sysreg_s(i32 %81)
  store i32 %82, i32* %3, align 4
  br label %88

83:                                               ; preds = %12
  br label %84

84:                                               ; preds = %83, %11
  %85 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @__vcpu_sys_reg(%struct.kvm_vcpu* %85, i32 %86)
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %84, %80, %77, %74, %71, %68, %65, %62, %59, %56, %53, %50, %47, %44, %41, %38, %35, %32, %29, %26, %23, %20, %17, %14
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @read_sysreg_s(i32) #1

declare dso_local i32 @__vcpu_sys_reg(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
