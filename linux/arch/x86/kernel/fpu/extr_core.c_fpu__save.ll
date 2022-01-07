; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/fpu/extr_core.c_fpu__save.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/fpu/extr_core.c_fpu__save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.fpu }
%struct.fpu = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@TIF_NEED_FPU_LOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpu__save(%struct.fpu* %0) #0 {
  %2 = alloca %struct.fpu*, align 8
  store %struct.fpu* %0, %struct.fpu** %2, align 8
  %3 = load %struct.fpu*, %struct.fpu** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = icmp ne %struct.fpu* %3, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @WARN_ON_FPU(i32 %8)
  %10 = call i32 (...) @fpregs_lock()
  %11 = load %struct.fpu*, %struct.fpu** %2, align 8
  %12 = call i32 @trace_x86_fpu_before_save(%struct.fpu* %11)
  %13 = load i32, i32* @TIF_NEED_FPU_LOAD, align 4
  %14 = call i32 @test_thread_flag(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %1
  %17 = load %struct.fpu*, %struct.fpu** %2, align 8
  %18 = call i32 @copy_fpregs_to_fpstate(%struct.fpu* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load %struct.fpu*, %struct.fpu** %2, align 8
  %22 = getelementptr inbounds %struct.fpu, %struct.fpu* %21, i32 0, i32 0
  %23 = call i32 @copy_kernel_to_fpregs(i32* %22)
  br label %24

24:                                               ; preds = %20, %16
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.fpu*, %struct.fpu** %2, align 8
  %27 = call i32 @trace_x86_fpu_after_save(%struct.fpu* %26)
  %28 = call i32 (...) @fpregs_unlock()
  ret void
}

declare dso_local i32 @WARN_ON_FPU(i32) #1

declare dso_local i32 @fpregs_lock(...) #1

declare dso_local i32 @trace_x86_fpu_before_save(%struct.fpu*) #1

declare dso_local i32 @test_thread_flag(i32) #1

declare dso_local i32 @copy_fpregs_to_fpstate(%struct.fpu*) #1

declare dso_local i32 @copy_kernel_to_fpregs(i32*) #1

declare dso_local i32 @trace_x86_fpu_after_save(%struct.fpu*) #1

declare dso_local i32 @fpregs_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
