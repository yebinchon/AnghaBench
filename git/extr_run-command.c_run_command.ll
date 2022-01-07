; ModuleID = '/home/carl/AnghaBench/git/extr_run-command.c_run_command.c'
source_filename = "/home/carl/AnghaBench/git/extr_run-command.c_run_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i64, i64 }

@.str = private unnamed_addr constant [43 x i8] c"run_command with a pipe can cause deadlock\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @run_command(%struct.child_process* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.child_process*, align 8
  %4 = alloca i32, align 4
  store %struct.child_process* %0, %struct.child_process** %3, align 8
  %5 = load %struct.child_process*, %struct.child_process** %3, align 8
  %6 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.child_process*, %struct.child_process** %3, align 8
  %11 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9, %1
  %15 = call i32 @BUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %9
  %17 = load %struct.child_process*, %struct.child_process** %3, align 8
  %18 = call i32 @start_command(%struct.child_process* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %26

23:                                               ; preds = %16
  %24 = load %struct.child_process*, %struct.child_process** %3, align 8
  %25 = call i32 @finish_command(%struct.child_process* %24)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %23, %21
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @start_command(%struct.child_process*) #1

declare dso_local i32 @finish_command(%struct.child_process*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
