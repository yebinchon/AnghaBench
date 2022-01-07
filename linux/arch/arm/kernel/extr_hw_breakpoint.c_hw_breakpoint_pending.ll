; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_hw_breakpoint.c_hw_breakpoint_pending.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_hw_breakpoint.c_hw_breakpoint_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@c0 = common dso_local global i32 0, align 4
@c1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"Asynchronous watchpoint exception taken. Debugging results may be unreliable\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, %struct.pt_regs*)* @hw_breakpoint_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_breakpoint_pending(i64 %0, i32 %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.pt_regs* %2, %struct.pt_regs** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = call i32 (...) @preempt_disable()
  %10 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %11 = call i64 @interrupts_enabled(%struct.pt_regs* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = call i32 (...) @local_irq_enable()
  br label %15

15:                                               ; preds = %13, %3
  %16 = load i32, i32* @c0, align 4
  %17 = load i32, i32* @c1, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @ARM_DBG_READ(i32 %16, i32 %17, i32 0, i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @ARM_DSCR_MOE(i32 %20)
  switch i32 %21, label %33 [
    i32 129, label %22
    i32 130, label %26
    i32 128, label %28
  ]

22:                                               ; preds = %15
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %25 = call i32 @breakpoint_handler(i64 %23, %struct.pt_regs* %24)
  br label %34

26:                                               ; preds = %15
  %27 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %15, %26
  %29 = load i64, i64* %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %32 = call i32 @watchpoint_handler(i64 %29, i32 %30, %struct.pt_regs* %31)
  br label %34

33:                                               ; preds = %15
  store i32 1, i32* %7, align 4
  br label %34

34:                                               ; preds = %33, %28, %22
  %35 = call i32 (...) @preempt_enable()
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @interrupts_enabled(%struct.pt_regs*) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @ARM_DBG_READ(i32, i32, i32, i32) #1

declare dso_local i32 @ARM_DSCR_MOE(i32) #1

declare dso_local i32 @breakpoint_handler(i64, %struct.pt_regs*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @watchpoint_handler(i64, i32, %struct.pt_regs*) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
