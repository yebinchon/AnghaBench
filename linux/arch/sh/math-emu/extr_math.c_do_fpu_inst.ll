; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/math-emu/extr_math.c_do_fpu_inst.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/math-emu/extr_math.c_do_fpu_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.sh_fpu_soft_struct }
%struct.sh_fpu_soft_struct = type { i32 }
%struct.pt_regs = type { i32 }
%struct.TYPE_6__ = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@PERF_COUNT_SW_EMULATION_FAULTS = common dso_local global i32 0, align 4
@TS_USEDFPU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_fpu_inst(i16 zeroext %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.sh_fpu_soft_struct*, align 8
  store i16 %0, i16* %3, align 2
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %7, %struct.task_struct** %5, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.sh_fpu_soft_struct* %12, %struct.sh_fpu_soft_struct** %6, align 8
  %13 = load i32, i32* @PERF_COUNT_SW_EMULATION_FAULTS, align 4
  %14 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %15 = call i32 @perf_sw_event(i32 %13, i32 1, %struct.pt_regs* %14, i32 0)
  %16 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %17 = call %struct.TYPE_6__* @task_thread_info(%struct.task_struct* %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TS_USEDFPU, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %2
  %24 = load %struct.sh_fpu_soft_struct*, %struct.sh_fpu_soft_struct** %6, align 8
  %25 = call i32 @fpu_init(%struct.sh_fpu_soft_struct* %24)
  %26 = load i32, i32* @TS_USEDFPU, align 4
  %27 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %28 = call %struct.TYPE_6__* @task_thread_info(%struct.task_struct* %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %26
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %23, %2
  %33 = load i16, i16* %3, align 2
  %34 = load %struct.sh_fpu_soft_struct*, %struct.sh_fpu_soft_struct** %6, align 8
  %35 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %36 = call i32 @fpu_emulate(i16 zeroext %33, %struct.sh_fpu_soft_struct* %34, %struct.pt_regs* %35)
  ret i32 %36
}

declare dso_local i32 @perf_sw_event(i32, i32, %struct.pt_regs*, i32) #1

declare dso_local %struct.TYPE_6__* @task_thread_info(%struct.task_struct*) #1

declare dso_local i32 @fpu_init(%struct.sh_fpu_soft_struct*) #1

declare dso_local i32 @fpu_emulate(i16 zeroext, %struct.sh_fpu_soft_struct*, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
