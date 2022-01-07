; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_armv8_deprecated.c_cp15barrier_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_armv8_deprecated.c_cp15barrier_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.pt_regs = type { i32, i32 }

@PERF_COUNT_SW_EMULATION_FAULTS = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@sy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"mcr p15, 0, Rt, c7, c10, 5 ; dmb\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"mcr p15, 0, Rt, c7, c10, 4 ; dsb\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"mcr p15, 0, Rt, c7, c5, 4 ; isb\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"\22%s\22 (%ld) uses deprecated CP15 Barrier instruction at 0x%llx\0A\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32)* @cp15barrier_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp15barrier_handler(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @PERF_COUNT_SW_EMULATION_FAULTS, align 4
  %7 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %8 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %9 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @perf_sw_event(i32 %6, i32 1, %struct.pt_regs* %7, i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %14 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @aarch32_check_condition(i32 %12, i32 %15)
  switch i32 %16, label %22 [
    i32 129, label %17
    i32 130, label %18
    i32 128, label %19
  ]

17:                                               ; preds = %2
  br label %25

18:                                               ; preds = %2
  br label %53

19:                                               ; preds = %2
  %20 = load i32, i32* @EFAULT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %66

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %66

25:                                               ; preds = %17
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @aarch32_insn_mcr_extract_crm(i32 %26)
  switch i32 %27, label %52 [
    i32 10, label %28
    i32 5, label %47
  ]

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @aarch32_insn_mcr_extract_opc2(i32 %29)
  %31 = icmp eq i32 %30, 5
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i32, i32* @sy, align 4
  %34 = call i32 @dmb(i32 %33)
  %35 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %36 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @trace_instruction_emulation(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %46

39:                                               ; preds = %28
  %40 = load i32, i32* @sy, align 4
  %41 = call i32 @dsb(i32 %40)
  %42 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %43 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @trace_instruction_emulation(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %39, %32
  br label %52

47:                                               ; preds = %25
  %48 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %49 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @trace_instruction_emulation(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %25, %47, %46
  br label %53

53:                                               ; preds = %52, %18
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %61 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %56, i64 %59, i32 %62)
  %64 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %65 = call i32 @arm64_skip_faulting_instruction(%struct.pt_regs* %64, i32 4)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %53, %22, %19
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @perf_sw_event(i32, i32, %struct.pt_regs*, i32) #1

declare dso_local i32 @aarch32_check_condition(i32, i32) #1

declare dso_local i32 @aarch32_insn_mcr_extract_crm(i32) #1

declare dso_local i32 @aarch32_insn_mcr_extract_opc2(i32) #1

declare dso_local i32 @dmb(i32) #1

declare dso_local i32 @trace_instruction_emulation(i8*, i32) #1

declare dso_local i32 @dsb(i32) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i32, i64, i32) #1

declare dso_local i32 @arm64_skip_faulting_instruction(%struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
