; ModuleID = '/home/carl/AnghaBench/h2o/src/extr_main.c_setup_signal_handlers.c'
source_filename = "/home/carl/AnghaBench/h2o/src/extr_main.c_setup_signal_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGTERM = common dso_local global i32 0, align 4
@on_sigterm = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGABRT = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@SIGFPE = common dso_local global i32 0, align 4
@SIGILL = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@crash_handler_fd = common dso_local global i32 0, align 4
@on_sigfatal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_signal_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_signal_handlers() #0 {
  %1 = load i32, i32* @SIGTERM, align 4
  %2 = load i32, i32* @on_sigterm, align 4
  %3 = call i32 @h2o_set_signal_handler(i32 %1, i32 %2)
  %4 = load i32, i32* @SIGPIPE, align 4
  %5 = load i32, i32* @SIG_IGN, align 4
  %6 = call i32 @h2o_set_signal_handler(i32 %4, i32 %5)
  ret void
}

declare dso_local i32 @h2o_set_signal_handler(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
