; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_hw_breakpoint.c_set_dbreak_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_hw_breakpoint.c_set_dbreak_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.arch_hw_breakpoint = type { i64, i32, i64 }

@DBREAKC_MASK_MASK = common dso_local global i64 0, align 8
@XTENSA_BREAKPOINT_LOAD = common dso_local global i32 0, align 4
@DBREAKC_LOAD_MASK = common dso_local global i64 0, align 8
@XTENSA_BREAKPOINT_STORE = common dso_local global i32 0, align 4
@DBREAKC_STOR_MASK = common dso_local global i64 0, align 8
@SREG_DBREAKA = common dso_local global i64 0, align 8
@SREG_DBREAKC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.perf_event*)* @set_dbreak_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dbreak_regs(i32 %0, %struct.perf_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.arch_hw_breakpoint*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %8 = call %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event* %7)
  store %struct.arch_hw_breakpoint* %8, %struct.arch_hw_breakpoint** %5, align 8
  %9 = load i64, i64* @DBREAKC_MASK_MASK, align 8
  %10 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %5, align 8
  %11 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = sub i64 0, %12
  %14 = and i64 %9, %13
  store i64 %14, i64* %6, align 8
  %15 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %5, align 8
  %16 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @XTENSA_BREAKPOINT_LOAD, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i64, i64* @DBREAKC_LOAD_MASK, align 8
  %23 = load i64, i64* %6, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %21, %2
  %26 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %5, align 8
  %27 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @XTENSA_BREAKPOINT_STORE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i64, i64* @DBREAKC_STOR_MASK, align 8
  %34 = load i64, i64* %6, align 8
  %35 = or i64 %34, %33
  store i64 %35, i64* %6, align 8
  br label %36

36:                                               ; preds = %32, %25
  %37 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %5, align 8
  %38 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SREG_DBREAKA, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = call i32 @xtensa_wsr(i64 %39, i64 %43)
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @SREG_DBREAKC, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = call i32 @xtensa_wsr(i64 %45, i64 %49)
  ret void
}

declare dso_local %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event*) #1

declare dso_local i32 @xtensa_wsr(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
