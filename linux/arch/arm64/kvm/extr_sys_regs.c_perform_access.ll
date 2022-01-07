; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_perform_access.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_perform_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.sys_reg_params = type { i32 }
%struct.sys_reg_desc = type { i32 (%struct.kvm_vcpu.0*, %struct.sys_reg_params*, %struct.sys_reg_desc*)* }
%struct.kvm_vcpu.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.sys_reg_params*, %struct.sys_reg_desc*)* @perform_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perform_access(%struct.kvm_vcpu* %0, %struct.sys_reg_params* %1, %struct.sys_reg_desc* %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.sys_reg_params*, align 8
  %6 = alloca %struct.sys_reg_desc*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.sys_reg_params* %1, %struct.sys_reg_params** %5, align 8
  store %struct.sys_reg_desc* %2, %struct.sys_reg_desc** %6, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %8 = call i32* @vcpu_pc(%struct.kvm_vcpu* %7)
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.sys_reg_params*, %struct.sys_reg_params** %5, align 8
  %11 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %6, align 8
  %12 = call i32 @trace_kvm_sys_access(i32 %9, %struct.sys_reg_params* %10, %struct.sys_reg_desc* %11)
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %14 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %6, align 8
  %15 = call i64 @sysreg_hidden_from_guest(%struct.kvm_vcpu* %13, %struct.sys_reg_desc* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %19 = call i32 @kvm_inject_undefined(%struct.kvm_vcpu* %18)
  br label %43

20:                                               ; preds = %3
  %21 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %6, align 8
  %22 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %21, i32 0, i32 0
  %23 = load i32 (%struct.kvm_vcpu.0*, %struct.sys_reg_params*, %struct.sys_reg_desc*)*, i32 (%struct.kvm_vcpu.0*, %struct.sys_reg_params*, %struct.sys_reg_desc*)** %22, align 8
  %24 = icmp ne i32 (%struct.kvm_vcpu.0*, %struct.sys_reg_params*, %struct.sys_reg_desc*)* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %6, align 8
  %29 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %28, i32 0, i32 0
  %30 = load i32 (%struct.kvm_vcpu.0*, %struct.sys_reg_params*, %struct.sys_reg_desc*)*, i32 (%struct.kvm_vcpu.0*, %struct.sys_reg_params*, %struct.sys_reg_desc*)** %29, align 8
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %32 = bitcast %struct.kvm_vcpu* %31 to %struct.kvm_vcpu.0*
  %33 = load %struct.sys_reg_params*, %struct.sys_reg_params** %5, align 8
  %34 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %6, align 8
  %35 = call i32 %30(%struct.kvm_vcpu.0* %32, %struct.sys_reg_params* %33, %struct.sys_reg_desc* %34)
  %36 = call i64 @likely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %20
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %41 = call i32 @kvm_vcpu_trap_il_is32bit(%struct.kvm_vcpu* %40)
  %42 = call i32 @kvm_skip_instr(%struct.kvm_vcpu* %39, i32 %41)
  br label %43

43:                                               ; preds = %17, %38, %20
  ret void
}

declare dso_local i32 @trace_kvm_sys_access(i32, %struct.sys_reg_params*, %struct.sys_reg_desc*) #1

declare dso_local i32* @vcpu_pc(%struct.kvm_vcpu*) #1

declare dso_local i64 @sysreg_hidden_from_guest(%struct.kvm_vcpu*, %struct.sys_reg_desc*) #1

declare dso_local i32 @kvm_inject_undefined(%struct.kvm_vcpu*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @kvm_skip_instr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_vcpu_trap_il_is32bit(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
