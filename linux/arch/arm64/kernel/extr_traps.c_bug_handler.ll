; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_traps.c_bug_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_traps.c_bug_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"Oops - BUG\00", align 1
@DBG_HOOK_ERROR = common dso_local global i32 0, align 4
@AARCH64_INSN_SIZE = common dso_local global i32 0, align 4
@DBG_HOOK_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32)* @bug_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bug_handler(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %7 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %10 = call i32 @report_bug(i32 %8, %struct.pt_regs* %9)
  switch i32 %10, label %15 [
    i32 129, label %11
    i32 128, label %14
  ]

11:                                               ; preds = %2
  %12 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %13 = call i32 @die(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.pt_regs* %12, i32 0)
  br label %17

14:                                               ; preds = %2
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @DBG_HOOK_ERROR, align 4
  store i32 %16, i32* %3, align 4
  br label %22

17:                                               ; preds = %14, %11
  %18 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %19 = load i32, i32* @AARCH64_INSN_SIZE, align 4
  %20 = call i32 @arm64_skip_faulting_instruction(%struct.pt_regs* %18, i32 %19)
  %21 = load i32, i32* @DBG_HOOK_HANDLED, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %17, %15
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @report_bug(i32, %struct.pt_regs*) #1

declare dso_local i32 @die(i8*, %struct.pt_regs*, i32) #1

declare dso_local i32 @arm64_skip_faulting_instruction(%struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
