; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_access_csselr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_access_csselr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.sys_reg_params = type { i32, i64 }
%struct.sys_reg_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.sys_reg_params*, %struct.sys_reg_desc*)* @access_csselr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @access_csselr(%struct.kvm_vcpu* %0, %struct.sys_reg_params* %1, %struct.sys_reg_desc* %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.sys_reg_params*, align 8
  %6 = alloca %struct.sys_reg_desc*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.sys_reg_params* %1, %struct.sys_reg_params** %5, align 8
  store %struct.sys_reg_desc* %2, %struct.sys_reg_desc** %6, align 8
  %7 = load %struct.sys_reg_params*, %struct.sys_reg_params** %5, align 8
  %8 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %13 = load %struct.sys_reg_params*, %struct.sys_reg_params** %5, align 8
  %14 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %6, align 8
  %17 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @vcpu_write_sys_reg(%struct.kvm_vcpu* %12, i32 %15, i32 %18)
  br label %28

20:                                               ; preds = %3
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %22 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %6, align 8
  %23 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @vcpu_read_sys_reg(%struct.kvm_vcpu* %21, i32 %24)
  %26 = load %struct.sys_reg_params*, %struct.sys_reg_params** %5, align 8
  %27 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %20, %11
  ret i32 1
}

declare dso_local i32 @vcpu_write_sys_reg(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @vcpu_read_sys_reg(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
