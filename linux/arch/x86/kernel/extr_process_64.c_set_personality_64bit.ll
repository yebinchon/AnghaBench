; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_process_64.c_set_personality_64bit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_process_64.c_set_personality_64bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@TIF_IA32 = common dso_local global i32 0, align 4
@TIF_ADDR32 = common dso_local global i32 0, align 4
@TIF_X32 = common dso_local global i32 0, align 4
@__NR_execve = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_10__* null, align 8
@TS_COMPAT = common dso_local global i32 0, align 4
@READ_IMPLIES_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_personality_64bit() #0 {
  %1 = load i32, i32* @TIF_IA32, align 4
  %2 = call i32 @clear_thread_flag(i32 %1)
  %3 = load i32, i32* @TIF_ADDR32, align 4
  %4 = call i32 @clear_thread_flag(i32 %3)
  %5 = load i32, i32* @TIF_X32, align 4
  %6 = call i32 @clear_thread_flag(i32 %5)
  %7 = load i32, i32* @__NR_execve, align 4
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %9 = call %struct.TYPE_9__* @task_pt_regs(%struct.TYPE_10__* %8)
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* @TS_COMPAT, align 4
  %12 = xor i32 %11, -1
  %13 = call %struct.TYPE_11__* (...) @current_thread_info()
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %21, %0
  %28 = load i32, i32* @READ_IMPLIES_EXEC, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  ret void
}

declare dso_local i32 @clear_thread_flag(i32) #1

declare dso_local %struct.TYPE_9__* @task_pt_regs(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @current_thread_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
