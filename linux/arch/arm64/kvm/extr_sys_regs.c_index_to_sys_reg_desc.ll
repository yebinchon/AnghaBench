; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_index_to_sys_reg_desc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_index_to_sys_reg_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_reg_desc = type { i64, i64 }
%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sys_reg_params = type { i32 }

@KVM_REG_ARM_COPROC_MASK = common dso_local global i32 0, align 4
@KVM_REG_ARM64_SYSREG = common dso_local global i32 0, align 4
@sys_reg_descs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sys_reg_desc* (%struct.kvm_vcpu*, i32)* @index_to_sys_reg_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sys_reg_desc* @index_to_sys_reg_desc(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.sys_reg_desc*, align 8
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.sys_reg_desc*, align 8
  %8 = alloca %struct.sys_reg_desc*, align 8
  %9 = alloca %struct.sys_reg_params, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @KVM_REG_ARM_COPROC_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @KVM_REG_ARM64_SYSREG, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.sys_reg_desc* null, %struct.sys_reg_desc** %3, align 8
  br label %49

16:                                               ; preds = %2
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.sys_reg_desc* @get_target_table(i32 %20, i32 1, i64* %6)
  store %struct.sys_reg_desc* %21, %struct.sys_reg_desc** %7, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %7, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call %struct.sys_reg_desc* @find_reg_by_id(i32 %22, %struct.sys_reg_params* %9, %struct.sys_reg_desc* %23, i64 %24)
  store %struct.sys_reg_desc* %25, %struct.sys_reg_desc** %8, align 8
  %26 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %8, align 8
  %27 = icmp ne %struct.sys_reg_desc* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %16
  %29 = load i32, i32* @sys_reg_descs, align 4
  %30 = load i32, i32* @sys_reg_descs, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = call %struct.sys_reg_desc* @find_reg(%struct.sys_reg_params* %9, i32 %29, i32 %31)
  store %struct.sys_reg_desc* %32, %struct.sys_reg_desc** %8, align 8
  br label %33

33:                                               ; preds = %28, %16
  %34 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %8, align 8
  %35 = icmp ne %struct.sys_reg_desc* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %8, align 8
  %38 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %36
  %42 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %8, align 8
  %43 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  store %struct.sys_reg_desc* null, %struct.sys_reg_desc** %8, align 8
  br label %47

47:                                               ; preds = %46, %41, %36, %33
  %48 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %8, align 8
  store %struct.sys_reg_desc* %48, %struct.sys_reg_desc** %3, align 8
  br label %49

49:                                               ; preds = %47, %15
  %50 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %3, align 8
  ret %struct.sys_reg_desc* %50
}

declare dso_local %struct.sys_reg_desc* @get_target_table(i32, i32, i64*) #1

declare dso_local %struct.sys_reg_desc* @find_reg_by_id(i32, %struct.sys_reg_params*, %struct.sys_reg_desc*, i64) #1

declare dso_local %struct.sys_reg_desc* @find_reg(%struct.sys_reg_params*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
