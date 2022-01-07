; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_stopped_at_head.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_stopped_at_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.object_id = type { i32 }
%struct.commit = type { i32 }
%struct.commit_message = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Stopped at HEAD\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Stopped at %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*)* @stopped_at_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stopped_at_head(%struct.repository* %0) #0 {
  %2 = alloca %struct.repository*, align 8
  %3 = alloca %struct.object_id, align 4
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.commit_message, align 8
  store %struct.repository* %0, %struct.repository** %2, align 8
  %6 = call i64 @get_oid(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.object_id* %3)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = load %struct.repository*, %struct.repository** %2, align 8
  %10 = call %struct.commit* @lookup_commit(%struct.repository* %9, %struct.object_id* %3)
  store %struct.commit* %10, %struct.commit** %4, align 8
  %11 = icmp ne %struct.commit* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = load %struct.commit*, %struct.commit** %4, align 8
  %14 = call i64 @parse_commit(%struct.commit* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load %struct.commit*, %struct.commit** %4, align 8
  %18 = call i64 @get_message(%struct.commit* %17, %struct.commit_message* %5)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16, %12, %8, %1
  %21 = load i32, i32* @stderr, align 4
  %22 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* %22)
  br label %32

24:                                               ; preds = %16
  %25 = load i32, i32* @stderr, align 4
  %26 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %27 = getelementptr inbounds %struct.commit_message, %struct.commit_message* %5, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* %26, i8* %28)
  %30 = load %struct.commit*, %struct.commit** %4, align 8
  %31 = call i32 @free_message(%struct.commit* %30, %struct.commit_message* %5)
  br label %32

32:                                               ; preds = %24, %20
  ret i32 0
}

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local %struct.commit* @lookup_commit(%struct.repository*, %struct.object_id*) #1

declare dso_local i64 @parse_commit(%struct.commit*) #1

declare dso_local i64 @get_message(%struct.commit*, %struct.commit_message*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @free_message(%struct.commit*, %struct.commit_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
