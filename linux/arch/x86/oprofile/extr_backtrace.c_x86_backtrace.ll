; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/oprofile/extr_backtrace.c_x86_backtrace.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/oprofile/extr_backtrace.c_x86_backtrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64 }
%struct.stack_frame = type { i32 }
%struct.unwind_state = type { i32 }

@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x86_backtrace(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stack_frame*, align 8
  %6 = alloca %struct.unwind_state, align 4
  %7 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %9 = call i64 @frame_pointer(%struct.pt_regs* %8)
  %10 = inttoptr i64 %9 to %struct.stack_frame*
  store %struct.stack_frame* %10, %struct.stack_frame** %5, align 8
  %11 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %12 = call i32 @user_mode(%struct.pt_regs* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %51, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  br label %70

18:                                               ; preds = %14
  %19 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %20 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @oprofile_add_trace(i64 %21)
  %23 = load i32, i32* %4, align 4
  %24 = add i32 %23, -1
  store i32 %24, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  br label %70

27:                                               ; preds = %18
  %28 = load i32, i32* @current, align 4
  %29 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %30 = call i32 @unwind_start(%struct.unwind_state* %6, i32 %28, %struct.pt_regs* %29, i32* null)
  br label %31

31:                                               ; preds = %48, %27
  %32 = call i32 @unwind_done(%struct.unwind_state* %6)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = call i64 @unwind_get_return_address(%struct.unwind_state* %6)
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  br label %50

40:                                               ; preds = %35
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @oprofile_add_trace(i64 %41)
  %43 = load i32, i32* %4, align 4
  %44 = add i32 %43, -1
  store i32 %44, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  br label %50

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47
  %49 = call i32 @unwind_next_frame(%struct.unwind_state* %6)
  br label %31

50:                                               ; preds = %46, %39, %31
  br label %70

51:                                               ; preds = %2
  %52 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i64 @x86_backtrace_32(%struct.pt_regs* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %70

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %67, %57
  %59 = load i32, i32* %4, align 4
  %60 = add i32 %59, -1
  store i32 %60, i32* %4, align 4
  %61 = icmp ne i32 %59, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.stack_frame*, %struct.stack_frame** %5, align 8
  %64 = icmp ne %struct.stack_frame* %63, null
  br label %65

65:                                               ; preds = %62, %58
  %66 = phi i1 [ false, %58 ], [ %64, %62 ]
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = load %struct.stack_frame*, %struct.stack_frame** %5, align 8
  %69 = call %struct.stack_frame* @dump_user_backtrace(%struct.stack_frame* %68)
  store %struct.stack_frame* %69, %struct.stack_frame** %5, align 8
  br label %58

70:                                               ; preds = %17, %26, %50, %56, %65
  ret void
}

declare dso_local i64 @frame_pointer(%struct.pt_regs*) #1

declare dso_local i32 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @oprofile_add_trace(i64) #1

declare dso_local i32 @unwind_start(%struct.unwind_state*, i32, %struct.pt_regs*, i32*) #1

declare dso_local i32 @unwind_done(%struct.unwind_state*) #1

declare dso_local i64 @unwind_get_return_address(%struct.unwind_state*) #1

declare dso_local i32 @unwind_next_frame(%struct.unwind_state*) #1

declare dso_local i64 @x86_backtrace_32(%struct.pt_regs*, i32) #1

declare dso_local %struct.stack_frame* @dump_user_backtrace(%struct.stack_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
