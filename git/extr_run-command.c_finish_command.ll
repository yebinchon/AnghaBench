; ModuleID = '/home/carl/AnghaBench/git/extr_run-command.c_finish_command.c'
source_filename = "/home/carl/AnghaBench/git/extr_run-command.c_finish_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @finish_command(%struct.child_process* %0) #0 {
  %2 = alloca %struct.child_process*, align 8
  %3 = alloca i32, align 4
  store %struct.child_process* %0, %struct.child_process** %2, align 8
  %4 = load %struct.child_process*, %struct.child_process** %2, align 8
  %5 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.child_process*, %struct.child_process** %2, align 8
  %8 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @wait_or_whine(i32 %6, i32 %11, i32 0)
  store i32 %12, i32* %3, align 4
  %13 = load %struct.child_process*, %struct.child_process** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @trace2_child_exit(%struct.child_process* %13, i32 %14)
  %16 = load %struct.child_process*, %struct.child_process** %2, align 8
  %17 = call i32 @child_process_clear(%struct.child_process* %16)
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @wait_or_whine(i32, i32, i32) #1

declare dso_local i32 @trace2_child_exit(%struct.child_process*, i32) #1

declare dso_local i32 @child_process_clear(%struct.child_process*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
