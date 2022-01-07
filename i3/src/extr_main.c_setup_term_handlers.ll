; ModuleID = '/home/carl/AnghaBench/i3/src/extr_main.c_setup_term_handlers.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_main.c_setup_term_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ev_signal = type { i32 }

@setup_term_handlers.signal_watchers = internal global [6 x %struct.ev_signal] zeroinitializer, align 16
@handle_term_signal = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@main_loop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_term_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_term_handlers() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 6, i64* %1, align 8
  %3 = load i32, i32* @handle_term_signal, align 4
  %4 = load i32, i32* @SIGHUP, align 4
  %5 = call i32 @ev_signal_init(%struct.ev_signal* getelementptr inbounds ([6 x %struct.ev_signal], [6 x %struct.ev_signal]* @setup_term_handlers.signal_watchers, i64 0, i64 0), i32 %3, i32 %4)
  %6 = load i32, i32* @handle_term_signal, align 4
  %7 = load i32, i32* @SIGINT, align 4
  %8 = call i32 @ev_signal_init(%struct.ev_signal* getelementptr inbounds ([6 x %struct.ev_signal], [6 x %struct.ev_signal]* @setup_term_handlers.signal_watchers, i64 0, i64 1), i32 %6, i32 %7)
  %9 = load i32, i32* @handle_term_signal, align 4
  %10 = load i32, i32* @SIGALRM, align 4
  %11 = call i32 @ev_signal_init(%struct.ev_signal* getelementptr inbounds ([6 x %struct.ev_signal], [6 x %struct.ev_signal]* @setup_term_handlers.signal_watchers, i64 0, i64 2), i32 %9, i32 %10)
  %12 = load i32, i32* @handle_term_signal, align 4
  %13 = load i32, i32* @SIGTERM, align 4
  %14 = call i32 @ev_signal_init(%struct.ev_signal* getelementptr inbounds ([6 x %struct.ev_signal], [6 x %struct.ev_signal]* @setup_term_handlers.signal_watchers, i64 0, i64 3), i32 %12, i32 %13)
  %15 = load i32, i32* @handle_term_signal, align 4
  %16 = load i32, i32* @SIGUSR1, align 4
  %17 = call i32 @ev_signal_init(%struct.ev_signal* getelementptr inbounds ([6 x %struct.ev_signal], [6 x %struct.ev_signal]* @setup_term_handlers.signal_watchers, i64 0, i64 4), i32 %15, i32 %16)
  %18 = load i32, i32* @handle_term_signal, align 4
  %19 = load i32, i32* @SIGUSR1, align 4
  %20 = call i32 @ev_signal_init(%struct.ev_signal* getelementptr inbounds ([6 x %struct.ev_signal], [6 x %struct.ev_signal]* @setup_term_handlers.signal_watchers, i64 0, i64 5), i32 %18, i32 %19)
  store i64 0, i64* %2, align 8
  br label %21

21:                                               ; preds = %32, %0
  %22 = load i64, i64* %2, align 8
  %23 = load i64, i64* %1, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load i32, i32* @main_loop, align 4
  %27 = load i64, i64* %2, align 8
  %28 = getelementptr inbounds [6 x %struct.ev_signal], [6 x %struct.ev_signal]* @setup_term_handlers.signal_watchers, i64 0, i64 %27
  %29 = call i32 @ev_signal_start(i32 %26, %struct.ev_signal* %28)
  %30 = load i32, i32* @main_loop, align 4
  %31 = call i32 @ev_unref(i32 %30)
  br label %32

32:                                               ; preds = %25
  %33 = load i64, i64* %2, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %2, align 8
  br label %21

35:                                               ; preds = %21
  ret void
}

declare dso_local i32 @ev_signal_init(%struct.ev_signal*, i32, i32) #1

declare dso_local i32 @ev_signal_start(i32, %struct.ev_signal*) #1

declare dso_local i32 @ev_unref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
