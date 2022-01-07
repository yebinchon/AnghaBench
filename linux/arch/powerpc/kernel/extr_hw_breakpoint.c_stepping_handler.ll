; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_hw_breakpoint.c_stepping_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_hw_breakpoint.c_stepping_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.perf_event* }
%struct.perf_event = type { i32 }
%struct.pt_regs = type { i32, i64 }

@.str = private unnamed_addr constant [93 x i8] c"Breakpoint hit on instruction that can't be emulated. Breakpoint at 0x%lx will be disabled.\0A\00", align 1
@current = common dso_local global %struct.TYPE_4__* null, align 8
@MSR_SE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"Unable to handle hardware breakpoint. Breakpoint at 0x%lx will be disabled.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, %struct.perf_event*, i64)* @stepping_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stepping_handler(%struct.pt_regs* %0, %struct.perf_event* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca %struct.perf_event*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %5, align 8
  store %struct.perf_event* %1, %struct.perf_event** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %11 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  %14 = call i64 @__get_user_inatomic(i32 %9, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %46

17:                                               ; preds = %3
  %18 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @is_larx_stcx_instr(%struct.pt_regs* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @printk_ratelimited(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i64 %23)
  br label %49

25:                                               ; preds = %17
  %26 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %27 = call i64 @user_mode(%struct.pt_regs* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store %struct.perf_event* %30, %struct.perf_event** %33, align 8
  %34 = load i32, i32* @MSR_SE, align 4
  %35 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %36 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  store i32 0, i32* %4, align 4
  br label %52

39:                                               ; preds = %25
  %40 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @emulate_step(%struct.pt_regs* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %46

45:                                               ; preds = %39
  store i32 1, i32* %4, align 4
  br label %52

46:                                               ; preds = %44, %16
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  br label %49

49:                                               ; preds = %46, %22
  %50 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %51 = call i32 @perf_event_disable_inatomic(%struct.perf_event* %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %45, %29
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @__get_user_inatomic(i32, i32*) #1

declare dso_local i64 @is_larx_stcx_instr(%struct.pt_regs*, i32) #1

declare dso_local i32 @printk_ratelimited(i8*, i64) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @emulate_step(%struct.pt_regs*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i64) #1

declare dso_local i32 @perf_event_disable_inatomic(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
