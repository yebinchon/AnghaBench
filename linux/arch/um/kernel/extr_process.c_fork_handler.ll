; ModuleID = '/home/carl/AnghaBench/linux/arch/um/kernel/extr_process.c_fork_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/kernel/extr_process.c_fork_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@current = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fork_handler() #0 {
  %1 = call i32 (...) @force_flush_all()
  %2 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %3 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @schedule_tail(i32* %5)
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %8 = call i32 @arch_switch_to(%struct.TYPE_9__* %7)
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store i32* null, i32** %11, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = call %struct.TYPE_8__* (...) @current_thread_info()
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @userspace(i32* %15, i32 %18)
  ret void
}

declare dso_local i32 @force_flush_all(...) #1

declare dso_local i32 @schedule_tail(i32*) #1

declare dso_local i32 @arch_switch_to(%struct.TYPE_9__*) #1

declare dso_local i32 @userspace(i32*, i32) #1

declare dso_local %struct.TYPE_8__* @current_thread_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
