; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_hw_breakpoint.c_hw_breakpoint_thread_switch.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_hw_breakpoint.c_hw_breakpoint_thread_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.debug_info }
%struct.debug_info = type { i64, i64 }
%struct.task_struct = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.debug_info }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@AARCH64_DBG_REG_BCR = common dso_local global i32 0, align 4
@DBG_ACTIVE_EL0 = common dso_local global i32 0, align 4
@AARCH64_DBG_REG_WCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hw_breakpoint_thread_switch(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.debug_info*, align 8
  %4 = alloca %struct.debug_info*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store %struct.debug_info* %7, %struct.debug_info** %3, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store %struct.debug_info* %10, %struct.debug_info** %4, align 8
  %11 = load %struct.debug_info*, %struct.debug_info** %3, align 8
  %12 = getelementptr inbounds %struct.debug_info, %struct.debug_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.debug_info*, %struct.debug_info** %4, align 8
  %15 = getelementptr inbounds %struct.debug_info, %struct.debug_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load i32, i32* @AARCH64_DBG_REG_BCR, align 4
  %20 = load i32, i32* @DBG_ACTIVE_EL0, align 4
  %21 = load %struct.debug_info*, %struct.debug_info** %4, align 8
  %22 = getelementptr inbounds %struct.debug_info, %struct.debug_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @toggle_bp_registers(i32 %19, i32 %20, i32 %26)
  br label %28

28:                                               ; preds = %18, %1
  %29 = load %struct.debug_info*, %struct.debug_info** %3, align 8
  %30 = getelementptr inbounds %struct.debug_info, %struct.debug_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.debug_info*, %struct.debug_info** %4, align 8
  %33 = getelementptr inbounds %struct.debug_info, %struct.debug_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %28
  %37 = load i32, i32* @AARCH64_DBG_REG_WCR, align 4
  %38 = load i32, i32* @DBG_ACTIVE_EL0, align 4
  %39 = load %struct.debug_info*, %struct.debug_info** %4, align 8
  %40 = getelementptr inbounds %struct.debug_info, %struct.debug_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @toggle_bp_registers(i32 %37, i32 %38, i32 %44)
  br label %46

46:                                               ; preds = %36, %28
  ret void
}

declare dso_local i32 @toggle_bp_registers(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
