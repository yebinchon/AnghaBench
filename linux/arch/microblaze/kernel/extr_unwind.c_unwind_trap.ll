; ModuleID = '/home/carl/AnghaBench/linux/arch/microblaze/kernel/extr_unwind.c_unwind_trap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/microblaze/kernel/extr_unwind.c_unwind_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.stack_trace = type { i32 }
%struct.pt_regs = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i64, i64, %struct.stack_trace*)* @unwind_trap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unwind_trap(%struct.task_struct* %0, i64 %1, i64 %2, %struct.stack_trace* %3) #0 {
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.stack_trace*, align 8
  %9 = alloca %struct.pt_regs*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.stack_trace* %3, %struct.stack_trace** %8, align 8
  %10 = load i64, i64* %7, align 8
  %11 = inttoptr i64 %10 to %struct.pt_regs*
  store %struct.pt_regs* %11, %struct.pt_regs** %9, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %13 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %14 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %17 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %20 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.stack_trace*, %struct.stack_trace** %8, align 8
  %23 = call i32 @microblaze_unwind_inner(%struct.task_struct* %12, i32 %15, i32 %18, i32 %21, %struct.stack_trace* %22)
  ret void
}

declare dso_local i32 @microblaze_unwind_inner(%struct.task_struct*, i32, i32, i32, %struct.stack_trace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
