; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/oprofile/extr_common.c_arm_backtrace.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/oprofile/extr_common.c_arm_backtrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64 }
%struct.frame_tail = type { i32 }
%struct.stackframe = type { i32 }

@report_trace = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, i32)* @arm_backtrace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_backtrace(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.frame_tail*, align 8
  %6 = alloca %struct.stackframe, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %8 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.frame_tail*
  %11 = getelementptr inbounds %struct.frame_tail, %struct.frame_tail* %10, i64 -1
  store %struct.frame_tail* %11, %struct.frame_tail** %5, align 8
  %12 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %13 = call i32 @user_mode(%struct.pt_regs* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %17 = call i32 @arm_get_current_stackframe(%struct.pt_regs* %16, %struct.stackframe* %6)
  %18 = load i32, i32* @report_trace, align 4
  %19 = call i32 @walk_stackframe(%struct.stackframe* %6, i32 %18, i32* %4)
  br label %39

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %36, %20
  %22 = load i32, i32* %4, align 4
  %23 = add i32 %22, -1
  store i32 %23, i32* %4, align 4
  %24 = icmp ne i32 %22, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load %struct.frame_tail*, %struct.frame_tail** %5, align 8
  %27 = icmp ne %struct.frame_tail* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load %struct.frame_tail*, %struct.frame_tail** %5, align 8
  %30 = ptrtoint %struct.frame_tail* %29 to i64
  %31 = and i64 %30, 3
  %32 = icmp ne i64 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %28, %25, %21
  %35 = phi i1 [ false, %25 ], [ false, %21 ], [ %33, %28 ]
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = load %struct.frame_tail*, %struct.frame_tail** %5, align 8
  %38 = call %struct.frame_tail* @user_backtrace(%struct.frame_tail* %37)
  store %struct.frame_tail* %38, %struct.frame_tail** %5, align 8
  br label %21

39:                                               ; preds = %15, %34
  ret void
}

declare dso_local i32 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @arm_get_current_stackframe(%struct.pt_regs*, %struct.stackframe*) #1

declare dso_local i32 @walk_stackframe(%struct.stackframe*, i32, i32*) #1

declare dso_local %struct.frame_tail* @user_backtrace(%struct.frame_tail*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
