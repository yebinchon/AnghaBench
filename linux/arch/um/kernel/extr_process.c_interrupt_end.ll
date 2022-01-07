; ModuleID = '/home/carl/AnghaBench/linux/arch/um/kernel/extr_process.c_interrupt_end.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/kernel/extr_process.c_interrupt_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.pt_regs }
%struct.pt_regs = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@TIF_SIGPENDING = common dso_local global i32 0, align 4
@TIF_NOTIFY_RESUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @interrupt_end() #0 {
  %1 = alloca %struct.pt_regs*, align 8
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store %struct.pt_regs* %4, %struct.pt_regs** %1, align 8
  %5 = call i64 (...) @need_resched()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 (...) @schedule()
  br label %9

9:                                                ; preds = %7, %0
  %10 = load i32, i32* @TIF_SIGPENDING, align 4
  %11 = call i64 @test_thread_flag(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load %struct.pt_regs*, %struct.pt_regs** %1, align 8
  %15 = call i32 @do_signal(%struct.pt_regs* %14)
  br label %16

16:                                               ; preds = %13, %9
  %17 = load i32, i32* @TIF_NOTIFY_RESUME, align 4
  %18 = call i64 @test_and_clear_thread_flag(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.pt_regs*, %struct.pt_regs** %1, align 8
  %22 = call i32 @tracehook_notify_resume(%struct.pt_regs* %21)
  br label %23

23:                                               ; preds = %20, %16
  ret void
}

declare dso_local i64 @need_resched(...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @test_thread_flag(i32) #1

declare dso_local i32 @do_signal(%struct.pt_regs*) #1

declare dso_local i64 @test_and_clear_thread_flag(i32) #1

declare dso_local i32 @tracehook_notify_resume(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
