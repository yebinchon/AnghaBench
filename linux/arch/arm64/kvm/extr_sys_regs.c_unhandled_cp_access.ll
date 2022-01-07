; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_unhandled_cp_access.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_unhandled_cp_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.sys_reg_params = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"Unsupported guest CP%d access at: %08lx [%08lx]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.sys_reg_params*)* @unhandled_cp_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unhandled_cp_access(%struct.kvm_vcpu* %0, %struct.sys_reg_params* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.sys_reg_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.sys_reg_params* %1, %struct.sys_reg_params** %4, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = call i32 @kvm_vcpu_trap_get_class(%struct.kvm_vcpu* %7)
  store i32 %8, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %12 [
    i32 129, label %10
    i32 128, label %10
    i32 130, label %11
    i32 131, label %11
  ]

10:                                               ; preds = %2, %2
  store i32 15, i32* %6, align 4
  br label %14

11:                                               ; preds = %2, %2
  store i32 14, i32* %6, align 4
  br label %14

12:                                               ; preds = %2
  %13 = call i32 @WARN_ON(i32 1)
  br label %14

14:                                               ; preds = %12, %11, %10
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = call i32* @vcpu_pc(%struct.kvm_vcpu* %16)
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %20 = call i32* @vcpu_cpsr(%struct.kvm_vcpu* %19)
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @kvm_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21)
  %23 = load %struct.sys_reg_params*, %struct.sys_reg_params** %4, align 8
  %24 = call i32 @print_sys_reg_instr(%struct.sys_reg_params* %23)
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %26 = call i32 @kvm_inject_undefined(%struct.kvm_vcpu* %25)
  ret void
}

declare dso_local i32 @kvm_vcpu_trap_get_class(%struct.kvm_vcpu*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kvm_err(i8*, i32, i32, i32) #1

declare dso_local i32* @vcpu_pc(%struct.kvm_vcpu*) #1

declare dso_local i32* @vcpu_cpsr(%struct.kvm_vcpu*) #1

declare dso_local i32 @print_sys_reg_instr(%struct.sys_reg_params*) #1

declare dso_local i32 @kvm_inject_undefined(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
