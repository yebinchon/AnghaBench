; ModuleID = '/home/carl/AnghaBench/i3/src/extr_sighandler.c_setup_signal_handler.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_sighandler.c_setup_signal_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32, i32 }

@handle_signal = common dso_local global i32 0, align 4
@SA_NODEFER = common dso_local global i32 0, align 4
@SA_RESETHAND = common dso_local global i32 0, align 4
@SA_SIGINFO = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGILL = common dso_local global i32 0, align 4
@SIGABRT = common dso_local global i32 0, align 4
@SIGFPE = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Could not setup signal handler.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_signal_handler() #0 {
  %1 = alloca %struct.sigaction, align 4
  %2 = load i32, i32* @handle_signal, align 4
  %3 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 2
  store i32 %2, i32* %3, align 4
  %4 = load i32, i32* @SA_NODEFER, align 4
  %5 = load i32, i32* @SA_RESETHAND, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @SA_SIGINFO, align 4
  %8 = or i32 %6, %7
  %9 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 1
  %11 = call i32 @sigemptyset(i32* %10)
  %12 = load i32, i32* @SIGQUIT, align 4
  %13 = call i32 @sigaction(i32 %12, %struct.sigaction* %1, i32* null)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %31, label %15

15:                                               ; preds = %0
  %16 = load i32, i32* @SIGILL, align 4
  %17 = call i32 @sigaction(i32 %16, %struct.sigaction* %1, i32* null)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @SIGABRT, align 4
  %21 = call i32 @sigaction(i32 %20, %struct.sigaction* %1, i32* null)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @SIGFPE, align 4
  %25 = call i32 @sigaction(i32 %24, %struct.sigaction* %1, i32* null)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @SIGSEGV, align 4
  %29 = call i32 @sigaction(i32 %28, %struct.sigaction* %1, i32* null)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %23, %19, %15, %0
  %32 = call i32 @ELOG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %27
  ret void
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @ELOG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
