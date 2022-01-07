; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_trap_loregion.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_trap_loregion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.sys_reg_params = type { i64 }
%struct.sys_reg_desc = type { i64, i64, i64, i64, i64 }

@SYS_ID_AA64MMFR1_EL1 = common dso_local global i32 0, align 4
@ID_AA64MMFR1_LOR_SHIFT = common dso_local global i32 0, align 4
@SYS_LORID_EL1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.sys_reg_params*, %struct.sys_reg_desc*)* @trap_loregion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trap_loregion(%struct.kvm_vcpu* %0, %struct.sys_reg_params* %1, %struct.sys_reg_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca %struct.sys_reg_params*, align 8
  %7 = alloca %struct.sys_reg_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store %struct.sys_reg_params* %1, %struct.sys_reg_params** %6, align 8
  store %struct.sys_reg_desc* %2, %struct.sys_reg_desc** %7, align 8
  %10 = load i32, i32* @SYS_ID_AA64MMFR1_EL1, align 4
  %11 = call i32 @read_sanitised_ftr_reg(i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %7, align 8
  %13 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %7, align 8
  %16 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %7, align 8
  %19 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %7, align 8
  %22 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %7, align 8
  %25 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @sys_reg(i64 %14, i64 %17, i64 %20, i64 %23, i64 %26)
  store i64 %27, i64* %9, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = load i32, i32* @ID_AA64MMFR1_LOR_SHIFT, align 4
  %31 = zext i32 %30 to i64
  %32 = shl i64 15, %31
  %33 = and i64 %29, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %3
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %37 = call i32 @kvm_inject_undefined(%struct.kvm_vcpu* %36)
  store i32 0, i32* %4, align 4
  br label %57

38:                                               ; preds = %3
  %39 = load %struct.sys_reg_params*, %struct.sys_reg_params** %6, align 8
  %40 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @SYS_LORID_EL1, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %49 = load %struct.sys_reg_params*, %struct.sys_reg_params** %6, align 8
  %50 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %7, align 8
  %51 = call i32 @write_to_read_only(%struct.kvm_vcpu* %48, %struct.sys_reg_params* %49, %struct.sys_reg_desc* %50)
  store i32 %51, i32* %4, align 4
  br label %57

52:                                               ; preds = %43, %38
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %54 = load %struct.sys_reg_params*, %struct.sys_reg_params** %6, align 8
  %55 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %7, align 8
  %56 = call i32 @trap_raz_wi(%struct.kvm_vcpu* %53, %struct.sys_reg_params* %54, %struct.sys_reg_desc* %55)
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %52, %47, %35
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @read_sanitised_ftr_reg(i32) #1

declare dso_local i64 @sys_reg(i64, i64, i64, i64, i64) #1

declare dso_local i32 @kvm_inject_undefined(%struct.kvm_vcpu*) #1

declare dso_local i32 @write_to_read_only(%struct.kvm_vcpu*, %struct.sys_reg_params*, %struct.sys_reg_desc*) #1

declare dso_local i32 @trap_raz_wi(%struct.kvm_vcpu*, %struct.sys_reg_params*, %struct.sys_reg_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
