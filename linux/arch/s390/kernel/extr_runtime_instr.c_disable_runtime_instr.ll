; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_runtime_instr.c_disable_runtime_instr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_runtime_instr.c_disable_runtime_instr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.pt_regs = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@runtime_instr_empty_cb = common dso_local global i32 0, align 4
@PSW_MASK_RI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @disable_runtime_instr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_runtime_instr() #0 {
  %1 = alloca %struct.task_struct*, align 8
  %2 = alloca %struct.pt_regs*, align 8
  %3 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %3, %struct.task_struct** %1, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %5 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %31

10:                                               ; preds = %0
  %11 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %12 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %11)
  store %struct.pt_regs* %12, %struct.pt_regs** %2, align 8
  %13 = call i32 (...) @preempt_disable()
  %14 = call i32 @load_runtime_instr_cb(i32* @runtime_instr_empty_cb)
  %15 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @kfree(i32* %18)
  %20 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  %23 = call i32 (...) @preempt_enable()
  %24 = load i32, i32* @PSW_MASK_RI, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %27 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %25
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %10, %9
  ret void
}

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @load_runtime_instr_cb(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
