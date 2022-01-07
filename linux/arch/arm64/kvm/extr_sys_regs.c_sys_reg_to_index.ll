; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_sys_reg_to_index.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_sys_reg_to_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_reg_desc = type { i32, i32, i32, i32, i32 }

@KVM_REG_ARM64 = common dso_local global i32 0, align 4
@KVM_REG_SIZE_U64 = common dso_local global i32 0, align 4
@KVM_REG_ARM64_SYSREG = common dso_local global i32 0, align 4
@KVM_REG_ARM64_SYSREG_OP0_SHIFT = common dso_local global i32 0, align 4
@KVM_REG_ARM64_SYSREG_OP1_SHIFT = common dso_local global i32 0, align 4
@KVM_REG_ARM64_SYSREG_CRN_SHIFT = common dso_local global i32 0, align 4
@KVM_REG_ARM64_SYSREG_CRM_SHIFT = common dso_local global i32 0, align 4
@KVM_REG_ARM64_SYSREG_OP2_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sys_reg_desc*)* @sys_reg_to_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sys_reg_to_index(%struct.sys_reg_desc* %0) #0 {
  %2 = alloca %struct.sys_reg_desc*, align 8
  store %struct.sys_reg_desc* %0, %struct.sys_reg_desc** %2, align 8
  %3 = load i32, i32* @KVM_REG_ARM64, align 4
  %4 = load i32, i32* @KVM_REG_SIZE_U64, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @KVM_REG_ARM64_SYSREG, align 4
  %7 = or i32 %5, %6
  %8 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %2, align 8
  %9 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @KVM_REG_ARM64_SYSREG_OP0_SHIFT, align 4
  %12 = shl i32 %10, %11
  %13 = or i32 %7, %12
  %14 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %2, align 8
  %15 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @KVM_REG_ARM64_SYSREG_OP1_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = or i32 %13, %18
  %20 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %2, align 8
  %21 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @KVM_REG_ARM64_SYSREG_CRN_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = or i32 %19, %24
  %26 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %2, align 8
  %27 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @KVM_REG_ARM64_SYSREG_CRM_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = or i32 %25, %30
  %32 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %2, align 8
  %33 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @KVM_REG_ARM64_SYSREG_OP2_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = or i32 %31, %36
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
