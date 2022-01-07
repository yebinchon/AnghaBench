; ModuleID = '/home/carl/AnghaBench/i3/src/extr_sighandler.c_handle_signal.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_sighandler.c_handle_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"i3 crashed. SIG: %d\0A\00", align 1
@SIG_DFL = common dso_local global i32 0, align 4
@raised_signal = common dso_local global i32 0, align 4
@conn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i8*)* @handle_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_signal(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sigaction, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @DLOG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @SIG_DFL, align 4
  %13 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i32 0, i32 2
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i32 0, i32 0
  %16 = call i32 @sigemptyset(i32* %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @sigaction(i32 %17, %struct.sigaction* %7, i32* null)
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* @raised_signal, align 4
  %20 = call i32 (...) @sighandler_setup()
  %21 = call i32 (...) @sighandler_create_dialogs()
  br label %22

22:                                               ; preds = %45, %3
  %23 = load i32, i32* @conn, align 4
  %24 = call %struct.TYPE_5__* @xcb_wait_for_event(i32 %23)
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %8, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 127
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  switch i32 %31, label %45 [
    i32 128, label %32
    i32 129, label %36
  ]

32:                                               ; preds = %26
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %34 = bitcast %struct.TYPE_5__* %33 to i32*
  %35 = call i32 @sighandler_handle_key_press(i32* %34)
  br label %45

36:                                               ; preds = %26
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %38 = bitcast %struct.TYPE_5__* %37 to %struct.TYPE_6__*
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = call i32 (...) @sighandler_handle_expose()
  br label %44

44:                                               ; preds = %42, %36
  br label %45

45:                                               ; preds = %26, %44, %32
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = call i32 @free(%struct.TYPE_5__* %46)
  br label %22

48:                                               ; preds = %22
  ret void
}

declare dso_local i32 @DLOG(i8*, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @sighandler_setup(...) #1

declare dso_local i32 @sighandler_create_dialogs(...) #1

declare dso_local %struct.TYPE_5__* @xcb_wait_for_event(i32) #1

declare dso_local i32 @sighandler_handle_key_press(i32*) #1

declare dso_local i32 @sighandler_handle_expose(...) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
