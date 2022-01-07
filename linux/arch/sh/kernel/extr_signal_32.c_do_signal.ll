; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_signal_32.c_do_signal.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_signal_32.c_do_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i32*, i64 }
%struct.ksignal = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ERESTARTNOHAND = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@ERESTARTNOINTR = common dso_local global i32 0, align 4
@ERESTART_RESTARTBLOCK = common dso_local global i32 0, align 4
@__NR_restart_syscall = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, i32)* @do_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_signal(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ksignal, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %7 = call i32 @user_mode(%struct.pt_regs* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %99

10:                                               ; preds = %2
  %11 = call i64 @get_signal(%struct.ksignal* %5)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %16 = getelementptr inbounds %struct.ksignal, %struct.ksignal* %5, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @handle_syscall_restart(i32 %14, %struct.pt_regs* %15, i32* %17)
  %19 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @handle_signal(%struct.ksignal* %5, %struct.pt_regs* %19, i32 %20)
  br label %99

22:                                               ; preds = %10
  %23 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %24 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %97

27:                                               ; preds = %22
  %28 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %29 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ERESTARTNOHAND, align 4
  %34 = sub i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %54, label %36

36:                                               ; preds = %27
  %37 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %38 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ERESTARTSYS, align 4
  %43 = sub i32 0, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %54, label %45

45:                                               ; preds = %36
  %46 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %47 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ERESTARTNOINTR, align 4
  %52 = sub i32 0, %51
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %45, %36, %27
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %57 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 %55, i32* %59, align 4
  %60 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %61 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %62, 4
  %64 = call i32 @__raw_readw(i64 %63)
  %65 = call i64 @instruction_size(i32 %64)
  %66 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %67 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %68, %65
  store i64 %69, i64* %67, align 8
  br label %96

70:                                               ; preds = %45
  %71 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %72 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ERESTART_RESTARTBLOCK, align 4
  %77 = sub i32 0, %76
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %95

79:                                               ; preds = %70
  %80 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %81 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %82, 4
  %84 = call i32 @__raw_readw(i64 %83)
  %85 = call i64 @instruction_size(i32 %84)
  %86 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %87 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %88, %85
  store i64 %89, i64* %87, align 8
  %90 = load i32, i32* @__NR_restart_syscall, align 4
  %91 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %92 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 3
  store i32 %90, i32* %94, align 4
  br label %95

95:                                               ; preds = %79, %70
  br label %96

96:                                               ; preds = %95, %54
  br label %97

97:                                               ; preds = %96, %22
  %98 = call i32 (...) @restore_saved_sigmask()
  br label %99

99:                                               ; preds = %97, %13, %9
  ret void
}

declare dso_local i32 @user_mode(%struct.pt_regs*) #1

declare dso_local i64 @get_signal(%struct.ksignal*) #1

declare dso_local i32 @handle_syscall_restart(i32, %struct.pt_regs*, i32*) #1

declare dso_local i32 @handle_signal(%struct.ksignal*, %struct.pt_regs*, i32) #1

declare dso_local i64 @instruction_size(i32) #1

declare dso_local i32 @__raw_readw(i64) #1

declare dso_local i32 @restore_saved_sigmask(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
