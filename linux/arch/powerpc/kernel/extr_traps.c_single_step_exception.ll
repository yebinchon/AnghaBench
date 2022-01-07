; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_traps.c_single_step_exception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_traps.c_single_step_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@DIE_SSTEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"single_step\00", align 1
@SIGTRAP = common dso_local global i32 0, align 4
@NOTIFY_STOP = common dso_local global i64 0, align 8
@TRAP_TRACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @single_step_exception(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %4 = call i32 (...) @exception_enter()
  store i32 %4, i32* %3, align 4
  %5 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %6 = call i32 @clear_single_step(%struct.pt_regs* %5)
  %7 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %8 = call i32 @clear_br_trace(%struct.pt_regs* %7)
  %9 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %10 = call i64 @kprobe_post_handler(%struct.pt_regs* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %37

13:                                               ; preds = %1
  %14 = load i32, i32* @DIE_SSTEP, align 4
  %15 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %16 = load i32, i32* @SIGTRAP, align 4
  %17 = call i64 @notify_die(i32 %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.pt_regs* %15, i32 5, i32 5, i32 %16)
  %18 = load i64, i64* @NOTIFY_STOP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %34

21:                                               ; preds = %13
  %22 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %23 = call i64 @debugger_sstep(%struct.pt_regs* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %34

26:                                               ; preds = %21
  %27 = load i32, i32* @SIGTRAP, align 4
  %28 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %29 = load i32, i32* @TRAP_TRACE, align 4
  %30 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %31 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @_exception(i32 %27, %struct.pt_regs* %28, i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %26, %25, %20
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @exception_exit(i32 %35)
  br label %37

37:                                               ; preds = %34, %12
  ret void
}

declare dso_local i32 @exception_enter(...) #1

declare dso_local i32 @clear_single_step(%struct.pt_regs*) #1

declare dso_local i32 @clear_br_trace(%struct.pt_regs*) #1

declare dso_local i64 @kprobe_post_handler(%struct.pt_regs*) #1

declare dso_local i64 @notify_die(i32, i8*, %struct.pt_regs*, i32, i32, i32) #1

declare dso_local i64 @debugger_sstep(%struct.pt_regs*) #1

declare dso_local i32 @_exception(i32, %struct.pt_regs*, i32, i32) #1

declare dso_local i32 @exception_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
