; ModuleID = '/home/carl/AnghaBench/kphp-kdb/dhcp/extr_dhcp-engine.c_signals_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/dhcp/extr_dhcp-engine.c_signals_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32 }

@sigint_handler = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@sigterm_handler = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIGPOLL = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@sigusr1_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @signals_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @signals_init() #0 {
  %1 = alloca %struct.sigaction, align 4
  %2 = call i32 (...) @set_debug_handlers()
  %3 = call i32 @memset(%struct.sigaction* %1, i32 0, i32 8)
  %4 = load i32, i32* @sigint_handler, align 4
  %5 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 1
  store i32 %4, i32* %5, align 4
  %6 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  %7 = call i32 @sigemptyset(i32* %6)
  %8 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  %9 = load i32, i32* @SIGTERM, align 4
  %10 = call i32 @sigaddset(i32* %8, i32 %9)
  %11 = load i32, i32* @SIGINT, align 4
  %12 = call i32 @sigaction(i32 %11, %struct.sigaction* %1, i32* null)
  %13 = load i32, i32* @sigterm_handler, align 4
  %14 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  %16 = call i32 @sigemptyset(i32* %15)
  %17 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  %18 = load i32, i32* @SIGINT, align 4
  %19 = call i32 @sigaddset(i32* %17, i32 %18)
  %20 = load i32, i32* @SIGTERM, align 4
  %21 = call i32 @sigaction(i32 %20, %struct.sigaction* %1, i32* null)
  %22 = load i32, i32* @SIG_IGN, align 4
  %23 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @SIGPIPE, align 4
  %25 = call i32 @sigaction(i32 %24, %struct.sigaction* %1, i32* null)
  %26 = load i32, i32* @SIGPOLL, align 4
  %27 = call i32 @sigaction(i32 %26, %struct.sigaction* %1, i32* null)
  %28 = load i32, i32* @SIGUSR1, align 4
  %29 = call i32 @sigaction(i32 %28, %struct.sigaction* %1, i32* null)
  %30 = load i32, i32* @SIGUSR2, align 4
  %31 = call i32 @sigaction(i32 %30, %struct.sigaction* %1, i32* null)
  %32 = load i32, i32* @sigusr1_handler, align 4
  %33 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  %35 = call i32 @sigemptyset(i32* %34)
  %36 = load i32, i32* @SIGUSR1, align 4
  %37 = call i32 @sigaction(i32 %36, %struct.sigaction* %1, i32* null)
  ret void
}

declare dso_local i32 @set_debug_handlers(...) #1

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
