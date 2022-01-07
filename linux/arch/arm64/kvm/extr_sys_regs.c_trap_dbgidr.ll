; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_trap_dbgidr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_trap_dbgidr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.sys_reg_params = type { i32, i64 }
%struct.sys_reg_desc = type { i32 }

@SYS_ID_AA64DFR0_EL1 = common dso_local global i32 0, align 4
@SYS_ID_AA64PFR0_EL1 = common dso_local global i32 0, align 4
@ID_AA64PFR0_EL3_SHIFT = common dso_local global i32 0, align 4
@ID_AA64DFR0_WRPS_SHIFT = common dso_local global i32 0, align 4
@ID_AA64DFR0_BRPS_SHIFT = common dso_local global i32 0, align 4
@ID_AA64DFR0_CTX_CMPS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.sys_reg_params*, %struct.sys_reg_desc*)* @trap_dbgidr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trap_dbgidr(%struct.kvm_vcpu* %0, %struct.sys_reg_params* %1, %struct.sys_reg_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca %struct.sys_reg_params*, align 8
  %7 = alloca %struct.sys_reg_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store %struct.sys_reg_params* %1, %struct.sys_reg_params** %6, align 8
  store %struct.sys_reg_desc* %2, %struct.sys_reg_desc** %7, align 8
  %11 = load %struct.sys_reg_params*, %struct.sys_reg_params** %6, align 8
  %12 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %17 = load %struct.sys_reg_params*, %struct.sys_reg_params** %6, align 8
  %18 = call i32 @ignore_write(%struct.kvm_vcpu* %16, %struct.sys_reg_params* %17)
  store i32 %18, i32* %4, align 4
  br label %57

19:                                               ; preds = %3
  %20 = load i32, i32* @SYS_ID_AA64DFR0_EL1, align 4
  %21 = call i32 @read_sanitised_ftr_reg(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @SYS_ID_AA64PFR0_EL1, align 4
  %23 = call i32 @read_sanitised_ftr_reg(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @ID_AA64PFR0_EL3_SHIFT, align 4
  %26 = call i32 @cpuid_feature_extract_unsigned_field(i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @ID_AA64DFR0_WRPS_SHIFT, align 4
  %33 = ashr i32 %31, %32
  %34 = and i32 %33, 15
  %35 = shl i32 %34, 28
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @ID_AA64DFR0_BRPS_SHIFT, align 4
  %38 = ashr i32 %36, %37
  %39 = and i32 %38, 15
  %40 = shl i32 %39, 24
  %41 = or i32 %35, %40
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @ID_AA64DFR0_CTX_CMPS_SHIFT, align 4
  %44 = ashr i32 %42, %43
  %45 = and i32 %44, 15
  %46 = shl i32 %45, 20
  %47 = or i32 %41, %46
  %48 = or i32 %47, 393216
  %49 = load i32, i32* %10, align 4
  %50 = shl i32 %49, 14
  %51 = or i32 %48, %50
  %52 = load i32, i32* %10, align 4
  %53 = shl i32 %52, 12
  %54 = or i32 %51, %53
  %55 = load %struct.sys_reg_params*, %struct.sys_reg_params** %6, align 8
  %56 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  store i32 1, i32* %4, align 4
  br label %57

57:                                               ; preds = %19, %15
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @ignore_write(%struct.kvm_vcpu*, %struct.sys_reg_params*) #1

declare dso_local i32 @read_sanitised_ftr_reg(i32) #1

declare dso_local i32 @cpuid_feature_extract_unsigned_field(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
