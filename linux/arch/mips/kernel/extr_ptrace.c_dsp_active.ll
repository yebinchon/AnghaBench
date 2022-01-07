; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_ptrace.c_dsp_active.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_ptrace.c_dsp_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.user_regset = type { i32 }

@cpu_has_dsp = common dso_local global i64 0, align 8
@NUM_DSP_REGS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.user_regset*)* @dsp_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsp_active(%struct.task_struct* %0, %struct.user_regset* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.user_regset*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.user_regset* %1, %struct.user_regset** %4, align 8
  %5 = load i64, i64* @cpu_has_dsp, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i32, i32* @NUM_DSP_REGS, align 4
  %9 = add nsw i32 %8, 1
  br label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i32 [ %9, %7 ], [ %12, %10 ]
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
