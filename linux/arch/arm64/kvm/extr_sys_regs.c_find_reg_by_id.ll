; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_find_reg_by_id.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_find_reg_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_reg_params = type { i32 }
%struct.sys_reg_desc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sys_reg_desc* @find_reg_by_id(i32 %0, %struct.sys_reg_params* %1, %struct.sys_reg_desc* %2, i32 %3) #0 {
  %5 = alloca %struct.sys_reg_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sys_reg_params*, align 8
  %8 = alloca %struct.sys_reg_desc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.sys_reg_params* %1, %struct.sys_reg_params** %7, align 8
  store %struct.sys_reg_desc* %2, %struct.sys_reg_desc** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.sys_reg_params*, %struct.sys_reg_params** %7, align 8
  %12 = call i32 @index_to_params(i32 %10, %struct.sys_reg_params* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store %struct.sys_reg_desc* null, %struct.sys_reg_desc** %5, align 8
  br label %20

15:                                               ; preds = %4
  %16 = load %struct.sys_reg_params*, %struct.sys_reg_params** %7, align 8
  %17 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call %struct.sys_reg_desc* @find_reg(%struct.sys_reg_params* %16, %struct.sys_reg_desc* %17, i32 %18)
  store %struct.sys_reg_desc* %19, %struct.sys_reg_desc** %5, align 8
  br label %20

20:                                               ; preds = %15, %14
  %21 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %5, align 8
  ret %struct.sys_reg_desc* %21
}

declare dso_local i32 @index_to_params(i32, %struct.sys_reg_params*) #1

declare dso_local %struct.sys_reg_desc* @find_reg(%struct.sys_reg_params*, %struct.sys_reg_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
