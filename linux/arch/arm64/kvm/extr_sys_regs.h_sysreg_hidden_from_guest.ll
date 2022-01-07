; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.h_sysreg_hidden_from_guest.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.h_sysreg_hidden_from_guest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.sys_reg_desc = type { i32 (%struct.kvm_vcpu.0*, %struct.sys_reg_desc*)* }
%struct.kvm_vcpu.0 = type opaque

@REG_HIDDEN_GUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.sys_reg_desc*)* @sysreg_hidden_from_guest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysreg_hidden_from_guest(%struct.kvm_vcpu* %0, %struct.sys_reg_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.sys_reg_desc*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.sys_reg_desc* %1, %struct.sys_reg_desc** %5, align 8
  %6 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %5, align 8
  %7 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %6, i32 0, i32 0
  %8 = load i32 (%struct.kvm_vcpu.0*, %struct.sys_reg_desc*)*, i32 (%struct.kvm_vcpu.0*, %struct.sys_reg_desc*)** %7, align 8
  %9 = icmp ne i32 (%struct.kvm_vcpu.0*, %struct.sys_reg_desc*)* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @likely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %25

15:                                               ; preds = %2
  %16 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %5, align 8
  %17 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %16, i32 0, i32 0
  %18 = load i32 (%struct.kvm_vcpu.0*, %struct.sys_reg_desc*)*, i32 (%struct.kvm_vcpu.0*, %struct.sys_reg_desc*)** %17, align 8
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %20 = bitcast %struct.kvm_vcpu* %19 to %struct.kvm_vcpu.0*
  %21 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %5, align 8
  %22 = call i32 %18(%struct.kvm_vcpu.0* %20, %struct.sys_reg_desc* %21)
  %23 = load i32, i32* @REG_HIDDEN_GUEST, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %15, %14
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
