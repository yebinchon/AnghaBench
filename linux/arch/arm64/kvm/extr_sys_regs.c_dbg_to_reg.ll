; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_dbg_to_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_dbg_to_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.sys_reg_params = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.sys_reg_params*, i32*)* @dbg_to_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbg_to_reg(%struct.kvm_vcpu* %0, %struct.sys_reg_params* %1, i32* %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.sys_reg_params*, align 8
  %6 = alloca i32*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.sys_reg_params* %1, %struct.sys_reg_params** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %6, align 8
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.sys_reg_params*, %struct.sys_reg_params** %5, align 8
  %10 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.sys_reg_params*, %struct.sys_reg_params** %5, align 8
  %12 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.sys_reg_params*, %struct.sys_reg_params** %5, align 8
  %17 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = and i64 %19, 4294967295
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %17, align 8
  br label %22

22:                                               ; preds = %15, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
