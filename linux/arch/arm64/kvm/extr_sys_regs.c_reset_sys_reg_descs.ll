; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_reset_sys_reg_descs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_reset_sys_reg_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.sys_reg_desc = type { i32, i32 (%struct.kvm_vcpu.0*, %struct.sys_reg_desc*)* }
%struct.kvm_vcpu.0 = type opaque

@NR_SYS_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.sys_reg_desc*, i64, i64*)* @reset_sys_reg_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_sys_reg_descs(%struct.kvm_vcpu* %0, %struct.sys_reg_desc* %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca %struct.sys_reg_desc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store %struct.sys_reg_desc* %1, %struct.sys_reg_desc** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  store i64 0, i64* %9, align 8
  br label %11

11:                                               ; preds = %51, %4
  %12 = load i64, i64* %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %54

15:                                               ; preds = %11
  %16 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %6, align 8
  %17 = load i64, i64* %9, align 8
  %18 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %16, i64 %17
  %19 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %18, i32 0, i32 1
  %20 = load i32 (%struct.kvm_vcpu.0*, %struct.sys_reg_desc*)*, i32 (%struct.kvm_vcpu.0*, %struct.sys_reg_desc*)** %19, align 8
  %21 = icmp ne i32 (%struct.kvm_vcpu.0*, %struct.sys_reg_desc*)* %20, null
  br i1 %21, label %22, label %50

22:                                               ; preds = %15
  %23 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %6, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %23, i64 %24
  %26 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %10, align 4
  %28 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %6, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %28, i64 %29
  %31 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %30, i32 0, i32 1
  %32 = load i32 (%struct.kvm_vcpu.0*, %struct.sys_reg_desc*)*, i32 (%struct.kvm_vcpu.0*, %struct.sys_reg_desc*)** %31, align 8
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %34 = bitcast %struct.kvm_vcpu* %33 to %struct.kvm_vcpu.0*
  %35 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %6, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %35, i64 %36
  %38 = call i32 %32(%struct.kvm_vcpu.0* %34, %struct.sys_reg_desc* %37)
  %39 = load i32, i32* %10, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %22
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @NR_SYS_REGS, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* %10, align 4
  %47 = load i64*, i64** %8, align 8
  %48 = call i32 @set_bit(i32 %46, i64* %47)
  br label %49

49:                                               ; preds = %45, %41, %22
  br label %50

50:                                               ; preds = %49, %15
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %9, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %9, align 8
  br label %11

54:                                               ; preds = %11
  ret void
}

declare dso_local i32 @set_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
