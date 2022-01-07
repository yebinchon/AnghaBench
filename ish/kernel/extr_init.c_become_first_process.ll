; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_init.c_become_first_process.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_init.c_become_first_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task = type { i32 }

@current = common dso_local global %struct.task* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @become_first_process() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.task*, align 8
  %3 = call i32 (...) @establish_signal_handlers()
  %4 = call %struct.task* @construct_task(i32* null)
  store %struct.task* %4, %struct.task** %2, align 8
  %5 = load %struct.task*, %struct.task** %2, align 8
  %6 = call i64 @IS_ERR(%struct.task* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load %struct.task*, %struct.task** %2, align 8
  %10 = call i32 @PTR_ERR(%struct.task* %9)
  store i32 %10, i32* %1, align 4
  br label %13

11:                                               ; preds = %0
  %12 = load %struct.task*, %struct.task** %2, align 8
  store %struct.task* %12, %struct.task** @current, align 8
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %11, %8
  %14 = load i32, i32* %1, align 4
  ret i32 %14
}

declare dso_local i32 @establish_signal_handlers(...) #1

declare dso_local %struct.task* @construct_task(i32*) #1

declare dso_local i64 @IS_ERR(%struct.task*) #1

declare dso_local i32 @PTR_ERR(%struct.task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
