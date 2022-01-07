; ModuleID = '/home/carl/AnghaBench/git/extr_transport-helper.c_tloop_spawnwait_tasks.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport-helper.c_tloop_spawnwait_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bidirectional_transfer_state = type { i32, i32 }

@udt_copy_task_routine = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"can't start thread for copying data: %s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Git to program copy\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Program to git copy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bidirectional_transfer_state*)* @tloop_spawnwait_tasks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tloop_spawnwait_tasks(%struct.bidirectional_transfer_state* %0) #0 {
  %2 = alloca %struct.bidirectional_transfer_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bidirectional_transfer_state* %0, %struct.bidirectional_transfer_state** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @udt_copy_task_routine, align 4
  %8 = load %struct.bidirectional_transfer_state*, %struct.bidirectional_transfer_state** %2, align 8
  %9 = getelementptr inbounds %struct.bidirectional_transfer_state, %struct.bidirectional_transfer_state* %8, i32 0, i32 1
  %10 = call i32 @pthread_create(i32* %3, i32* null, i32 %7, i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @strerror(i32 %15)
  %17 = call i32 @die(i32 %14, i32 %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load i32, i32* @udt_copy_task_routine, align 4
  %20 = load %struct.bidirectional_transfer_state*, %struct.bidirectional_transfer_state** %2, align 8
  %21 = getelementptr inbounds %struct.bidirectional_transfer_state, %struct.bidirectional_transfer_state* %20, i32 0, i32 0
  %22 = call i32 @pthread_create(i32* %4, i32* null, i32 %19, i32* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @strerror(i32 %27)
  %29 = call i32 @die(i32 %26, i32 %28)
  br label %30

30:                                               ; preds = %25, %18
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @tloop_join(i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @tloop_join(i32 %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @tloop_join(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
