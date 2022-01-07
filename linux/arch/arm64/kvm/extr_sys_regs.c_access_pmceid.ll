; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_access_pmceid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_access_pmceid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.sys_reg_params = type { i32, i32, i32 }
%struct.sys_reg_desc = type { i32 }

@pmceid0_el0 = common dso_local global i32 0, align 4
@pmceid1_el0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.sys_reg_params*, %struct.sys_reg_desc*)* @access_pmceid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @access_pmceid(%struct.kvm_vcpu* %0, %struct.sys_reg_params* %1, %struct.sys_reg_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca %struct.sys_reg_params*, align 8
  %7 = alloca %struct.sys_reg_desc*, align 8
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store %struct.sys_reg_params* %1, %struct.sys_reg_params** %6, align 8
  store %struct.sys_reg_desc* %2, %struct.sys_reg_desc** %7, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %10 = call i32 @kvm_arm_pmu_v3_ready(%struct.kvm_vcpu* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %14 = load %struct.sys_reg_params*, %struct.sys_reg_params** %6, align 8
  %15 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %7, align 8
  %16 = call i32 @trap_raz_wi(%struct.kvm_vcpu* %13, %struct.sys_reg_params* %14, %struct.sys_reg_desc* %15)
  store i32 %16, i32* %4, align 4
  br label %42

17:                                               ; preds = %3
  %18 = load %struct.sys_reg_params*, %struct.sys_reg_params** %6, align 8
  %19 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %23 = call i64 @pmu_access_el0_disabled(%struct.kvm_vcpu* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %42

26:                                               ; preds = %17
  %27 = load %struct.sys_reg_params*, %struct.sys_reg_params** %6, align 8
  %28 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @pmceid0_el0, align 4
  %34 = call i32 @read_sysreg(i32 %33)
  store i32 %34, i32* %8, align 4
  br label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @pmceid1_el0, align 4
  %37 = call i32 @read_sysreg(i32 %36)
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.sys_reg_params*, %struct.sys_reg_params** %6, align 8
  %41 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  store i32 1, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %25, %12
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @kvm_arm_pmu_v3_ready(%struct.kvm_vcpu*) #1

declare dso_local i32 @trap_raz_wi(%struct.kvm_vcpu*, %struct.sys_reg_params*, %struct.sys_reg_desc*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @pmu_access_el0_disabled(%struct.kvm_vcpu*) #1

declare dso_local i32 @read_sysreg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
