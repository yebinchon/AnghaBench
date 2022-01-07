; ModuleID = '/home/carl/AnghaBench/git/extr_daemon.c_run_service_command.c'
source_filename = "/home/carl/AnghaBench/git/extr_daemon.c_run_service_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.child_process*)* @run_service_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_service_command(%struct.child_process* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.child_process*, align 8
  store %struct.child_process* %0, %struct.child_process** %3, align 8
  %4 = load %struct.child_process*, %struct.child_process** %3, align 8
  %5 = getelementptr inbounds %struct.child_process, %struct.child_process* %4, i32 0, i32 2
  %6 = call i32 @argv_array_push(i32* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.child_process*, %struct.child_process** %3, align 8
  %8 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load %struct.child_process*, %struct.child_process** %3, align 8
  %10 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 1
  store i32 -1, i32* %10, align 4
  %11 = load %struct.child_process*, %struct.child_process** %3, align 8
  %12 = call i64 @start_command(%struct.child_process* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %24

15:                                               ; preds = %1
  %16 = call i32 @close(i32 0)
  %17 = call i32 @close(i32 1)
  %18 = load %struct.child_process*, %struct.child_process** %3, align 8
  %19 = getelementptr inbounds %struct.child_process, %struct.child_process* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @copy_to_log(i32 %20)
  %22 = load %struct.child_process*, %struct.child_process** %3, align 8
  %23 = call i32 @finish_command(%struct.child_process* %22)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %15, %14
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @argv_array_push(i32*, i8*) #1

declare dso_local i64 @start_command(%struct.child_process*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @copy_to_log(i32) #1

declare dso_local i32 @finish_command(%struct.child_process*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
