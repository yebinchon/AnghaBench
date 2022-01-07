; ModuleID = '/home/carl/AnghaBench/i3/src/extr_startup.c_startup_workspace_for_window.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_startup.c_startup_workspace_for_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Startup_Sequence = type { i64, i8*, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Deleting expired startup sequence %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @startup_workspace_for_window(i32* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.Startup_Sequence*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call %struct.Startup_Sequence* @startup_sequence_get(i32* %8, i32* %9, i32 0)
  store %struct.Startup_Sequence* %10, %struct.Startup_Sequence** %6, align 8
  %11 = load %struct.Startup_Sequence*, %struct.Startup_Sequence** %6, align 8
  %12 = icmp eq %struct.Startup_Sequence* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %37

14:                                               ; preds = %2
  %15 = call i64 @time(i32* null)
  store i64 %15, i64* %7, align 8
  %16 = load %struct.Startup_Sequence*, %struct.Startup_Sequence** %6, align 8
  %17 = getelementptr inbounds %struct.Startup_Sequence, %struct.Startup_Sequence* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.Startup_Sequence*, %struct.Startup_Sequence** %6, align 8
  %23 = getelementptr inbounds %struct.Startup_Sequence, %struct.Startup_Sequence* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %21, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.Startup_Sequence*, %struct.Startup_Sequence** %6, align 8
  %28 = getelementptr inbounds %struct.Startup_Sequence, %struct.Startup_Sequence* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @DLOG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.Startup_Sequence*, %struct.Startup_Sequence** %6, align 8
  %32 = call i32 @startup_sequence_delete(%struct.Startup_Sequence* %31)
  store i8* null, i8** %3, align 8
  br label %37

33:                                               ; preds = %20, %14
  %34 = load %struct.Startup_Sequence*, %struct.Startup_Sequence** %6, align 8
  %35 = getelementptr inbounds %struct.Startup_Sequence, %struct.Startup_Sequence* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %3, align 8
  br label %37

37:                                               ; preds = %33, %26, %13
  %38 = load i8*, i8** %3, align 8
  ret i8* %38
}

declare dso_local %struct.Startup_Sequence* @startup_sequence_get(i32*, i32*, i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @DLOG(i8*, i32) #1

declare dso_local i32 @startup_sequence_delete(%struct.Startup_Sequence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
