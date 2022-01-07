; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_traps.c_simulate_sync.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_traps.c_simulate_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@OPCODE = common dso_local global i32 0, align 4
@SPEC0 = common dso_local global i32 0, align 4
@FUNC = common dso_local global i32 0, align 4
@SYNC = common dso_local global i32 0, align 4
@PERF_COUNT_SW_EMULATION_FAULTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32)* @simulate_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simulate_sync(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @OPCODE, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* @SPEC0, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @FUNC, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @SYNC, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i32, i32* @PERF_COUNT_SW_EMULATION_FAULTS, align 4
  %19 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %20 = call i32 @perf_sw_event(i32 %18, i32 1, %struct.pt_regs* %19, i32 0)
  store i32 0, i32* %3, align 4
  br label %22

21:                                               ; preds = %11, %2
  store i32 -1, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %17
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @perf_sw_event(i32, i32, %struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
