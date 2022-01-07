; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_signal.c_handle_signal.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_signal.c_handle_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.ksignal = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.pt_regs = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@SA_SIGINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksignal*, %struct.pt_regs*)* @handle_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_signal(%struct.ksignal* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca %struct.ksignal*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ksignal* %0, %struct.ksignal** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %9, %struct.task_struct** %5, align 8
  %10 = call i32* (...) @sigmask_to_save()
  store i32* %10, i32** %6, align 8
  %11 = load %struct.ksignal*, %struct.ksignal** %3, align 8
  %12 = getelementptr inbounds %struct.ksignal, %struct.ksignal* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.ksignal*, %struct.ksignal** %3, align 8
  %15 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %16 = call i32 @rseq_signal_deliver(%struct.ksignal* %14, %struct.pt_regs* %15)
  %17 = call i64 (...) @is_compat_task()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %2
  %20 = load %struct.ksignal*, %struct.ksignal** %3, align 8
  %21 = getelementptr inbounds %struct.ksignal, %struct.ksignal* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SA_SIGINFO, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.ksignal*, %struct.ksignal** %3, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %33 = call i32 @compat_setup_rt_frame(i32 %29, %struct.ksignal* %30, i32* %31, %struct.pt_regs* %32)
  store i32 %33, i32* %8, align 4
  br label %40

34:                                               ; preds = %19
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.ksignal*, %struct.ksignal** %3, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %39 = call i32 @compat_setup_frame(i32 %35, %struct.ksignal* %36, i32* %37, %struct.pt_regs* %38)
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %34, %28
  br label %47

41:                                               ; preds = %2
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.ksignal*, %struct.ksignal** %3, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %46 = call i32 @setup_rt_frame(i32 %42, %struct.ksignal* %43, i32* %44, %struct.pt_regs* %45)
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %41, %40
  %48 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %49 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %48, i32 0, i32 0
  %50 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %51 = call i32 @valid_user_regs(i32* %49, %struct.task_struct* %50)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %47
  %60 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %61 = call i32 @user_fastforward_single_step(%struct.task_struct* %60)
  br label %62

62:                                               ; preds = %59, %47
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.ksignal*, %struct.ksignal** %3, align 8
  %65 = call i32 @signal_setup_done(i32 %63, %struct.ksignal* %64, i32 0)
  ret void
}

declare dso_local i32* @sigmask_to_save(...) #1

declare dso_local i32 @rseq_signal_deliver(%struct.ksignal*, %struct.pt_regs*) #1

declare dso_local i64 @is_compat_task(...) #1

declare dso_local i32 @compat_setup_rt_frame(i32, %struct.ksignal*, i32*, %struct.pt_regs*) #1

declare dso_local i32 @compat_setup_frame(i32, %struct.ksignal*, i32*, %struct.pt_regs*) #1

declare dso_local i32 @setup_rt_frame(i32, %struct.ksignal*, i32*, %struct.pt_regs*) #1

declare dso_local i32 @valid_user_regs(i32*, %struct.task_struct*) #1

declare dso_local i32 @user_fastforward_single_step(%struct.task_struct*) #1

declare dso_local i32 @signal_setup_done(i32, %struct.ksignal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
