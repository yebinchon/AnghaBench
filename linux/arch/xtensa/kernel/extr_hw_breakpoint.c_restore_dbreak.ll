; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_hw_breakpoint.c_restore_dbreak.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_hw_breakpoint.c_restore_dbreak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }

@XCHAL_NUM_DBREAK = common dso_local global i32 0, align 4
@wp_on_reg = common dso_local global i32 0, align 4
@TIF_DB_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @restore_dbreak() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.perf_event*, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %21, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @XCHAL_NUM_DBREAK, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = load i32, i32* @wp_on_reg, align 4
  %9 = call %struct.perf_event** @this_cpu_ptr(i32 %8)
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %9, i64 %11
  %13 = load %struct.perf_event*, %struct.perf_event** %12, align 8
  store %struct.perf_event* %13, %struct.perf_event** %2, align 8
  %14 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %15 = icmp ne %struct.perf_event* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %7
  %17 = load i32, i32* %1, align 4
  %18 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %19 = call i32 @set_dbreak_regs(i32 %17, %struct.perf_event* %18)
  br label %20

20:                                               ; preds = %16, %7
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %1, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %1, align 4
  br label %3

24:                                               ; preds = %3
  %25 = load i32, i32* @TIF_DB_DISABLED, align 4
  %26 = call i32 @clear_thread_flag(i32 %25)
  ret void
}

declare dso_local %struct.perf_event** @this_cpu_ptr(i32) #1

declare dso_local i32 @set_dbreak_regs(i32, %struct.perf_event*) #1

declare dso_local i32 @clear_thread_flag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
