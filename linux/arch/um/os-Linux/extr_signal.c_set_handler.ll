; ModuleID = '/home/carl/AnghaBench/linux/arch/um/os-Linux/extr_signal.c_set_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/os-Linux/extr_signal.c_set_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32*, i32, i32 }

@SA_SIGINFO = common dso_local global i32 0, align 4
@SA_ONSTACK = common dso_local global i32 0, align 4
@hard_handler = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@SIGWINCH = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@SA_NODEFER = common dso_local global i32 0, align 4
@SA_RESTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"sigaction failed - errno = %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@SIG_UNBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"sigprocmask failed - errno = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sigaction, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @SA_SIGINFO, align 4
  %7 = load i32, i32* @SA_ONSTACK, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @hard_handler, align 4
  %10 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 3
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 2
  %12 = call i32 @sigemptyset(i32* %11)
  %13 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 2
  %14 = load i32, i32* @SIGIO, align 4
  %15 = call i32 @sigaddset(i32* %13, i32 %14)
  %16 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 2
  %17 = load i32, i32* @SIGWINCH, align 4
  %18 = call i32 @sigaddset(i32* %16, i32 %17)
  %19 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 2
  %20 = load i32, i32* @SIGALRM, align 4
  %21 = call i32 @sigaddset(i32* %19, i32 %20)
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @SIGSEGV, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* @SA_NODEFER, align 4
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %25, %1
  %30 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 2
  %31 = load i32, i32* %2, align 4
  %32 = call i64 @sigismember(i32* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @SA_RESTART, align 4
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %4, align 4
  %40 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = load i32, i32* %2, align 4
  %43 = call i64 @sigaction(i32 %42, %struct.sigaction* %3, i32* null)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* @errno, align 4
  %47 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %45, %38
  %49 = call i32 @sigemptyset(i32* %5)
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @sigaddset(i32* %5, i32 %50)
  %52 = load i32, i32* @SIG_UNBLOCK, align 4
  %53 = call i64 @sigprocmask(i32 %52, i32* %5, i32* null)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @errno, align 4
  %57 = call i32 @panic(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %55, %48
  ret void
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i64 @sigismember(i32*, i32) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i64 @sigprocmask(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
