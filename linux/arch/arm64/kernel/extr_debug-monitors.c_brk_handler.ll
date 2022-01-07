; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_debug-monitors.c_brk_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_debug-monitors.c_brk_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@DBG_HOOK_HANDLED = common dso_local global i64 0, align 8
@TRAP_BRKPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unexpected kernel BRK exception at EL1\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, %struct.pt_regs*)* @brk_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brk_handler(i64 %0, i32 %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_regs*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  %8 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i64 @call_break_hook(%struct.pt_regs* %8, i32 %9)
  %11 = load i64, i64* @DBG_HOOK_HANDLED, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %26

14:                                               ; preds = %3
  %15 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %16 = call i64 @user_mode(%struct.pt_regs* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @TRAP_BRKPT, align 4
  %20 = call i32 @send_user_sigtrap(i32 %19)
  br label %25

21:                                               ; preds = %14
  %22 = call i32 @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EFAULT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %26

25:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %25, %21, %13
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i64 @call_break_hook(%struct.pt_regs*, i32) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @send_user_sigtrap(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
