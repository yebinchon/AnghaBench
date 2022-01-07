; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/entry/extr_common.c_exit_to_usermode_loop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/entry/extr_common.c_exit_to_usermode_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.TYPE_2__ = type { i32 }

@_TIF_NEED_RESCHED = common dso_local global i32 0, align 4
@_TIF_UPROBE = common dso_local global i32 0, align 4
@_TIF_PATCH_PENDING = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@_TIF_SIGPENDING = common dso_local global i32 0, align 4
@_TIF_NOTIFY_RESUME = common dso_local global i32 0, align 4
@TIF_NOTIFY_RESUME = common dso_local global i32 0, align 4
@_TIF_USER_RETURN_NOTIFY = common dso_local global i32 0, align 4
@EXIT_TO_USERMODE_LOOP_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, i32)* @exit_to_usermode_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exit_to_usermode_loop(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %2, %67
  %6 = call i32 (...) @local_irq_enable()
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @_TIF_NEED_RESCHED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = call i32 (...) @schedule()
  br label %13

13:                                               ; preds = %11, %5
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @_TIF_UPROBE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %20 = call i32 @uprobe_notify_resume(%struct.pt_regs* %19)
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @_TIF_PATCH_PENDING, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @current, align 4
  %28 = call i32 @klp_update_patch_state(i32 %27)
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @_TIF_SIGPENDING, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %36 = call i32 @do_signal(%struct.pt_regs* %35)
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @_TIF_NOTIFY_RESUME, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i32, i32* @TIF_NOTIFY_RESUME, align 4
  %44 = call i32 @clear_thread_flag(i32 %43)
  %45 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %46 = call i32 @tracehook_notify_resume(%struct.pt_regs* %45)
  %47 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %48 = call i32 @rseq_handle_notify_resume(i32* null, %struct.pt_regs* %47)
  br label %49

49:                                               ; preds = %42, %37
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @_TIF_USER_RETURN_NOTIFY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 (...) @fire_user_return_notifiers()
  br label %56

56:                                               ; preds = %54, %49
  %57 = call i32 (...) @local_irq_disable()
  %58 = call %struct.TYPE_2__* (...) @current_thread_info()
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @READ_ONCE(i32 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @EXIT_TO_USERMODE_LOOP_FLAGS, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %56
  br label %68

67:                                               ; preds = %56
  br label %5

68:                                               ; preds = %66
  ret void
}

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @uprobe_notify_resume(%struct.pt_regs*) #1

declare dso_local i32 @klp_update_patch_state(i32) #1

declare dso_local i32 @do_signal(%struct.pt_regs*) #1

declare dso_local i32 @clear_thread_flag(i32) #1

declare dso_local i32 @tracehook_notify_resume(%struct.pt_regs*) #1

declare dso_local i32 @rseq_handle_notify_resume(i32*, %struct.pt_regs*) #1

declare dso_local i32 @fire_user_return_notifiers(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local %struct.TYPE_2__* @current_thread_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
