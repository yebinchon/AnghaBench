; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_signal_32.c_handle_signal.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_signal_32.c_handle_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksignal = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.pt_regs = type { i32 }

@SA_SIGINFO = common dso_local global i32 0, align 4
@TIF_SINGLESTEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksignal*, %struct.pt_regs*, i32)* @handle_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_signal(%struct.ksignal* %0, %struct.pt_regs* %1, i32 %2) #0 {
  %4 = alloca %struct.ksignal*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.ksignal* %0, %struct.ksignal** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32* (...) @sigmask_to_save()
  store i32* %9, i32** %7, align 8
  %10 = load %struct.ksignal*, %struct.ksignal** %4, align 8
  %11 = getelementptr inbounds %struct.ksignal, %struct.ksignal* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SA_SIGINFO, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.ksignal*, %struct.ksignal** %4, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %22 = call i32 @setup_rt_frame(%struct.ksignal* %19, i32* %20, %struct.pt_regs* %21)
  store i32 %22, i32* %8, align 4
  br label %28

23:                                               ; preds = %3
  %24 = load %struct.ksignal*, %struct.ksignal** %4, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %27 = call i32 @setup_frame(%struct.ksignal* %24, i32* %25, %struct.pt_regs* %26)
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %23, %18
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.ksignal*, %struct.ksignal** %4, align 8
  %31 = load i32, i32* @TIF_SINGLESTEP, align 4
  %32 = call i32 @test_thread_flag(i32 %31)
  %33 = call i32 @signal_setup_done(i32 %29, %struct.ksignal* %30, i32 %32)
  ret void
}

declare dso_local i32* @sigmask_to_save(...) #1

declare dso_local i32 @setup_rt_frame(%struct.ksignal*, i32*, %struct.pt_regs*) #1

declare dso_local i32 @setup_frame(%struct.ksignal*, i32*, %struct.pt_regs*) #1

declare dso_local i32 @signal_setup_done(i32, %struct.ksignal*, i32) #1

declare dso_local i32 @test_thread_flag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
