; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_index_to_params.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_index_to_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_reg_params = type { i32, i32, i32, i32, i32 }

@KVM_REG_SIZE_MASK = common dso_local global i32 0, align 4
@KVM_REG_ARCH_MASK = common dso_local global i32 0, align 4
@KVM_REG_ARM_COPROC_MASK = common dso_local global i32 0, align 4
@KVM_REG_ARM64_SYSREG_OP0_MASK = common dso_local global i32 0, align 4
@KVM_REG_ARM64_SYSREG_OP1_MASK = common dso_local global i32 0, align 4
@KVM_REG_ARM64_SYSREG_CRN_MASK = common dso_local global i32 0, align 4
@KVM_REG_ARM64_SYSREG_CRM_MASK = common dso_local global i32 0, align 4
@KVM_REG_ARM64_SYSREG_OP2_MASK = common dso_local global i32 0, align 4
@KVM_REG_ARM64_SYSREG_OP0_SHIFT = common dso_local global i32 0, align 4
@KVM_REG_ARM64_SYSREG_OP1_SHIFT = common dso_local global i32 0, align 4
@KVM_REG_ARM64_SYSREG_CRN_SHIFT = common dso_local global i32 0, align 4
@KVM_REG_ARM64_SYSREG_CRM_SHIFT = common dso_local global i32 0, align 4
@KVM_REG_ARM64_SYSREG_OP2_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sys_reg_params*)* @index_to_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @index_to_params(i32 %0, %struct.sys_reg_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sys_reg_params*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.sys_reg_params* %1, %struct.sys_reg_params** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @KVM_REG_SIZE_MASK, align 4
  %8 = and i32 %6, %7
  switch i32 %8, label %66 [
    i32 128, label %9
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @KVM_REG_ARCH_MASK, align 4
  %12 = load i32, i32* @KVM_REG_SIZE_MASK, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @KVM_REG_ARM_COPROC_MASK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @KVM_REG_ARM64_SYSREG_OP0_MASK, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @KVM_REG_ARM64_SYSREG_OP1_MASK, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @KVM_REG_ARM64_SYSREG_CRN_MASK, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @KVM_REG_ARM64_SYSREG_CRM_MASK, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @KVM_REG_ARM64_SYSREG_OP2_MASK, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = and i32 %10, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %67

30:                                               ; preds = %9
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @KVM_REG_ARM64_SYSREG_OP0_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @KVM_REG_ARM64_SYSREG_OP0_SHIFT, align 4
  %35 = ashr i32 %33, %34
  %36 = load %struct.sys_reg_params*, %struct.sys_reg_params** %5, align 8
  %37 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @KVM_REG_ARM64_SYSREG_OP1_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @KVM_REG_ARM64_SYSREG_OP1_SHIFT, align 4
  %42 = ashr i32 %40, %41
  %43 = load %struct.sys_reg_params*, %struct.sys_reg_params** %5, align 8
  %44 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @KVM_REG_ARM64_SYSREG_CRN_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @KVM_REG_ARM64_SYSREG_CRN_SHIFT, align 4
  %49 = ashr i32 %47, %48
  %50 = load %struct.sys_reg_params*, %struct.sys_reg_params** %5, align 8
  %51 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @KVM_REG_ARM64_SYSREG_CRM_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @KVM_REG_ARM64_SYSREG_CRM_SHIFT, align 4
  %56 = ashr i32 %54, %55
  %57 = load %struct.sys_reg_params*, %struct.sys_reg_params** %5, align 8
  %58 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @KVM_REG_ARM64_SYSREG_OP2_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @KVM_REG_ARM64_SYSREG_OP2_SHIFT, align 4
  %63 = ashr i32 %61, %62
  %64 = load %struct.sys_reg_params*, %struct.sys_reg_params** %5, align 8
  %65 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  store i32 1, i32* %3, align 4
  br label %67

66:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %30, %29
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
