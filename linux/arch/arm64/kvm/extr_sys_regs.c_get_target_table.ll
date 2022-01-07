; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_get_target_table.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_get_target_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_sys_reg_target_table = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, %struct.sys_reg_desc* }
%struct.sys_reg_desc = type { i32 }
%struct.TYPE_3__ = type { i64, %struct.sys_reg_desc* }

@target_tables = common dso_local global %struct.kvm_sys_reg_target_table** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sys_reg_desc* (i32, i32, i64*)* @get_target_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sys_reg_desc* @get_target_table(i32 %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.sys_reg_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.kvm_sys_reg_target_table*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %9 = load %struct.kvm_sys_reg_target_table**, %struct.kvm_sys_reg_target_table*** @target_tables, align 8
  %10 = load i32, i32* %5, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.kvm_sys_reg_target_table*, %struct.kvm_sys_reg_target_table** %9, i64 %11
  %13 = load %struct.kvm_sys_reg_target_table*, %struct.kvm_sys_reg_target_table** %12, align 8
  store %struct.kvm_sys_reg_target_table* %13, %struct.kvm_sys_reg_target_table** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.kvm_sys_reg_target_table*, %struct.kvm_sys_reg_target_table** %8, align 8
  %18 = getelementptr inbounds %struct.kvm_sys_reg_target_table, %struct.kvm_sys_reg_target_table* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64*, i64** %7, align 8
  store i64 %20, i64* %21, align 8
  %22 = load %struct.kvm_sys_reg_target_table*, %struct.kvm_sys_reg_target_table** %8, align 8
  %23 = getelementptr inbounds %struct.kvm_sys_reg_target_table, %struct.kvm_sys_reg_target_table* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %24, align 8
  store %struct.sys_reg_desc* %25, %struct.sys_reg_desc** %4, align 8
  br label %36

26:                                               ; preds = %3
  %27 = load %struct.kvm_sys_reg_target_table*, %struct.kvm_sys_reg_target_table** %8, align 8
  %28 = getelementptr inbounds %struct.kvm_sys_reg_target_table, %struct.kvm_sys_reg_target_table* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %7, align 8
  store i64 %30, i64* %31, align 8
  %32 = load %struct.kvm_sys_reg_target_table*, %struct.kvm_sys_reg_target_table** %8, align 8
  %33 = getelementptr inbounds %struct.kvm_sys_reg_target_table, %struct.kvm_sys_reg_target_table* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %34, align 8
  store %struct.sys_reg_desc* %35, %struct.sys_reg_desc** %4, align 8
  br label %36

36:                                               ; preds = %26, %16
  %37 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %4, align 8
  ret %struct.sys_reg_desc* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
