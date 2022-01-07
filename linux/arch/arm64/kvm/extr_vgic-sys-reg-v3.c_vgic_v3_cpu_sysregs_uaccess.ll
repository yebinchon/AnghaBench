; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_vgic-sys-reg-v3.c_vgic_v3_cpu_sysregs_uaccess.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_vgic-sys-reg-v3.c_vgic_v3_cpu_sysregs_uaccess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.sys_reg_params = type { i32, i32, i32, i32 }
%struct.sys_reg_desc = type { i32 (%struct.kvm_vcpu.0*, %struct.sys_reg_params*, %struct.sys_reg_desc*)* }
%struct.kvm_vcpu.0 = type opaque

@KVM_DEV_ARM_VGIC_SYSREG_MASK = common dso_local global i32 0, align 4
@KVM_REG_SIZE_U64 = common dso_local global i32 0, align 4
@gic_v3_icc_reg_descs = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vgic_v3_cpu_sysregs_uaccess(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sys_reg_params, align 4
  %11 = alloca %struct.sys_reg_desc*, align 8
  %12 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @KVM_DEV_ARM_VGIC_SYSREG_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @KVM_REG_SIZE_U64, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %10, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %20, %4
  %25 = load i32, i32* %7, align 4
  %26 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %10, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %10, i32 0, i32 2
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %10, i32 0, i32 3
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @gic_v3_icc_reg_descs, align 4
  %31 = load i32, i32* @gic_v3_icc_reg_descs, align 4
  %32 = call i32 @ARRAY_SIZE(i32 %31)
  %33 = call %struct.sys_reg_desc* @find_reg_by_id(i32 %29, %struct.sys_reg_params* %10, i32 %30, i32 %32)
  store %struct.sys_reg_desc* %33, %struct.sys_reg_desc** %11, align 8
  %34 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %11, align 8
  %35 = icmp ne %struct.sys_reg_desc* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %24
  %37 = load i32, i32* @ENXIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %59

39:                                               ; preds = %24
  %40 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %11, align 8
  %41 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %40, i32 0, i32 0
  %42 = load i32 (%struct.kvm_vcpu.0*, %struct.sys_reg_params*, %struct.sys_reg_desc*)*, i32 (%struct.kvm_vcpu.0*, %struct.sys_reg_params*, %struct.sys_reg_desc*)** %41, align 8
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %44 = bitcast %struct.kvm_vcpu* %43 to %struct.kvm_vcpu.0*
  %45 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %11, align 8
  %46 = call i32 %42(%struct.kvm_vcpu.0* %44, %struct.sys_reg_params* %10, %struct.sys_reg_desc* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %39
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %59

51:                                               ; preds = %39
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %10, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %54, %51
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %48, %36
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.sys_reg_desc* @find_reg_by_id(i32, %struct.sys_reg_params*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
