; ModuleID = '/home/carl/AnghaBench/i3/src/extr_floating.c_floating_maybe_reassign_ws.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_floating.c_floating_maybe_reassign_ws.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"Con in an internal workspace\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"No output found at destination coordinates?\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"still the same ws\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Need to re-assign!\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Moving con %p / %s to workspace %p / %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @floating_maybe_reassign_ws(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %8 = call i32 @con_get_workspace(%struct.TYPE_14__* %7)
  %9 = call i64 @con_is_internal(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %57

13:                                               ; preds = %1
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_13__* @get_output_from_rect(i32 %16)
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %4, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = icmp ne %struct.TYPE_13__* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %13
  %21 = call i32 @ELOG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %57

22:                                               ; preds = %13
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %24 = call i64 @con_get_output(%struct.TYPE_14__* %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %57

31:                                               ; preds = %22
  %32 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call %struct.TYPE_14__* @output_get_content(i64 %35)
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %5, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = call %struct.TYPE_14__* @TAILQ_FIRST(i32* %38)
  store %struct.TYPE_14__* %39, %struct.TYPE_14__** %6, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_14__* %40, i32 %43, %struct.TYPE_14__* %44, i32 %47)
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %51 = call i32 @con_move_to_workspace(%struct.TYPE_14__* %49, %struct.TYPE_14__* %50, i32 0, i32 1, i32 0)
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = call i32 @workspace_show(%struct.TYPE_14__* %52)
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %55 = call i32 @con_descend_focused(%struct.TYPE_14__* %54)
  %56 = call i32 @con_activate(i32 %55)
  store i32 1, i32* %2, align 4
  br label %57

57:                                               ; preds = %31, %29, %20, %11
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @con_is_internal(i32) #1

declare dso_local i32 @con_get_workspace(%struct.TYPE_14__*) #1

declare dso_local i32 @DLOG(i8*, ...) #1

declare dso_local %struct.TYPE_13__* @get_output_from_rect(i32) #1

declare dso_local i32 @ELOG(i8*) #1

declare dso_local i64 @con_get_output(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @output_get_content(i64) #1

declare dso_local %struct.TYPE_14__* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @con_move_to_workspace(%struct.TYPE_14__*, %struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @workspace_show(%struct.TYPE_14__*) #1

declare dso_local i32 @con_activate(i32) #1

declare dso_local i32 @con_descend_focused(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
