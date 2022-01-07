; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/fpu/extr_core.c_kernel_fpu_begin.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/fpu/extr_core.c_kernel_fpu_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@in_kernel_fpu = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@PF_KTHREAD = common dso_local global i32 0, align 4
@TIF_NEED_FPU_LOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kernel_fpu_begin() #0 {
  %1 = call i32 (...) @preempt_disable()
  %2 = call i32 (...) @irq_fpu_usable()
  %3 = icmp ne i32 %2, 0
  %4 = xor i1 %3, true
  %5 = zext i1 %4 to i32
  %6 = call i32 @WARN_ON_FPU(i32 %5)
  %7 = load i32, i32* @in_kernel_fpu, align 4
  %8 = call i32 @this_cpu_read(i32 %7)
  %9 = call i32 @WARN_ON_FPU(i32 %8)
  %10 = load i32, i32* @in_kernel_fpu, align 4
  %11 = call i32 @this_cpu_write(i32 %10, i32 1)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PF_KTHREAD, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %0
  %19 = load i32, i32* @TIF_NEED_FPU_LOAD, align 4
  %20 = call i32 @test_thread_flag(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @TIF_NEED_FPU_LOAD, align 4
  %24 = call i32 @set_thread_flag(i32 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i32 @copy_fpregs_to_fpstate(i32* %27)
  br label %29

29:                                               ; preds = %22, %18, %0
  %30 = call i32 (...) @__cpu_invalidate_fpregs_state()
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @WARN_ON_FPU(i32) #1

declare dso_local i32 @irq_fpu_usable(...) #1

declare dso_local i32 @this_cpu_read(i32) #1

declare dso_local i32 @this_cpu_write(i32, i32) #1

declare dso_local i32 @test_thread_flag(i32) #1

declare dso_local i32 @set_thread_flag(i32) #1

declare dso_local i32 @copy_fpregs_to_fpstate(i32*) #1

declare dso_local i32 @__cpu_invalidate_fpregs_state(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
