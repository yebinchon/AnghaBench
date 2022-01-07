; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_kvm_register_target_sys_reg_table.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_kvm_register_target_sys_reg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_sys_reg_target_table = type { i32 }

@target_tables = common dso_local global %struct.kvm_sys_reg_target_table** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_register_target_sys_reg_table(i32 %0, %struct.kvm_sys_reg_target_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_sys_reg_target_table*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.kvm_sys_reg_target_table* %1, %struct.kvm_sys_reg_target_table** %4, align 8
  %5 = load %struct.kvm_sys_reg_target_table*, %struct.kvm_sys_reg_target_table** %4, align 8
  %6 = load %struct.kvm_sys_reg_target_table**, %struct.kvm_sys_reg_target_table*** @target_tables, align 8
  %7 = load i32, i32* %3, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.kvm_sys_reg_target_table*, %struct.kvm_sys_reg_target_table** %6, i64 %8
  store %struct.kvm_sys_reg_target_table* %5, %struct.kvm_sys_reg_target_table** %9, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
