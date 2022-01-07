; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_armv8_deprecated.c_compat_setend_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_armv8_deprecated.c_compat_setend_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.pt_regs = type { i32, i32 }

@PERF_COUNT_SW_EMULATION_FAULTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"setend be\00", align 1
@PSR_AA32_E_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"setend le\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"\22%s\22 (%ld) uses deprecated setend instruction at 0x%llx\0A\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i64)* @compat_setend_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compat_setend_handler(%struct.pt_regs* %0, i64 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* @PERF_COUNT_SW_EMULATION_FAULTS, align 4
  %7 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %8 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %9 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @perf_sw_event(i32 %6, i32 1, %struct.pt_regs* %7, i32 %10)
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %15 = load i32, i32* @PSR_AA32_E_BIT, align 4
  %16 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %17 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  br label %27

20:                                               ; preds = %2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  %21 = load i32, i32* @PSR_AA32_E_BIT, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %24 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %20, %14
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %30 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @trace_instruction_emulation(i8* %28, i32 %31)
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %40 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %35, i64 %38, i32 %41)
  ret i32 0
}

declare dso_local i32 @perf_sw_event(i32, i32, %struct.pt_regs*, i32) #1

declare dso_local i32 @trace_instruction_emulation(i8*, i32) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
