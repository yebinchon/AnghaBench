; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_access_arch_timer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_access_arch_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.sys_reg_params = type { i32, i64 }
%struct.sys_reg_desc = type { i32 }

@TIMER_PTIMER = common dso_local global i32 0, align 4
@TIMER_REG_TVAL = common dso_local global i32 0, align 4
@TIMER_REG_CTL = common dso_local global i32 0, align 4
@TIMER_REG_CVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.sys_reg_params*, %struct.sys_reg_desc*)* @access_arch_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @access_arch_timer(%struct.kvm_vcpu* %0, %struct.sys_reg_params* %1, %struct.sys_reg_desc* %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.sys_reg_params*, align 8
  %6 = alloca %struct.sys_reg_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.sys_reg_params* %1, %struct.sys_reg_params** %5, align 8
  store %struct.sys_reg_desc* %2, %struct.sys_reg_desc** %6, align 8
  %10 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %6, align 8
  %11 = call i32 @reg_to_encoding(%struct.sys_reg_desc* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  switch i32 %12, label %22 [
    i32 128, label %13
    i32 131, label %13
    i32 130, label %16
    i32 133, label %16
    i32 129, label %19
    i32 132, label %19
  ]

13:                                               ; preds = %3, %3
  %14 = load i32, i32* @TIMER_PTIMER, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @TIMER_REG_TVAL, align 4
  store i32 %15, i32* %8, align 4
  br label %24

16:                                               ; preds = %3, %3
  %17 = load i32, i32* @TIMER_PTIMER, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @TIMER_REG_CTL, align 4
  store i32 %18, i32* %8, align 4
  br label %24

19:                                               ; preds = %3, %3
  %20 = load i32, i32* @TIMER_PTIMER, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @TIMER_REG_CVAL, align 4
  store i32 %21, i32* %8, align 4
  br label %24

22:                                               ; preds = %3
  %23 = call i32 (...) @BUG()
  br label %24

24:                                               ; preds = %22, %19, %16, %13
  %25 = load %struct.sys_reg_params*, %struct.sys_reg_params** %5, align 8
  %26 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.sys_reg_params*, %struct.sys_reg_params** %5, align 8
  %34 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @kvm_arm_timer_write_sysreg(%struct.kvm_vcpu* %30, i32 %31, i32 %32, i32 %35)
  br label %44

37:                                               ; preds = %24
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @kvm_arm_timer_read_sysreg(%struct.kvm_vcpu* %38, i32 %39, i32 %40)
  %42 = load %struct.sys_reg_params*, %struct.sys_reg_params** %5, align 8
  %43 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %37, %29
  ret i32 1
}

declare dso_local i32 @reg_to_encoding(%struct.sys_reg_desc*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @kvm_arm_timer_write_sysreg(%struct.kvm_vcpu*, i32, i32, i32) #1

declare dso_local i32 @kvm_arm_timer_read_sysreg(%struct.kvm_vcpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
