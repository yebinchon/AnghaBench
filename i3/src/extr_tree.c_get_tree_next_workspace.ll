; ModuleID = '/home/carl/AnghaBench/i3/src/extr_tree.c_get_tree_next_workspace.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_tree.c_get_tree_next_workspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }

@CF_GLOBAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Cannot change workspace while in global fullscreen mode.\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Current output is %s\0A\00", align 1
@CLOSEST_OUTPUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Next output is %s\0A\00", align 1
@child = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (%struct.TYPE_14__*, i32)* @get_tree_next_workspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @get_tree_next_workspace(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %10 = load i32, i32* @CF_GLOBAL, align 4
  %11 = call i64 @con_get_fullscreen_con(%struct.TYPE_14__* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %52

15:                                               ; preds = %2
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_13__* @get_output_containing(i32 %19, i32 %23)
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %6, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = icmp ne %struct.TYPE_13__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %15
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %52

28:                                               ; preds = %15
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %30 = call i32 @output_primary_name(%struct.TYPE_13__* %29)
  %31 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = load i32, i32* @CLOSEST_OUTPUT, align 4
  %35 = call %struct.TYPE_13__* @get_output_next(i32 %32, %struct.TYPE_13__* %33, i32 %34)
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %7, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %37 = icmp ne %struct.TYPE_13__* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %28
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %52

39:                                               ; preds = %28
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %41 = call i32 @output_primary_name(%struct.TYPE_13__* %40)
  %42 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %8, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @output_get_content(i32 %46)
  %48 = load i32, i32* @child, align 4
  %49 = call i32 @workspace_is_visible(i32 %48)
  %50 = call i32 @GREP_FIRST(%struct.TYPE_14__* %43, i32 %47, i32 %49)
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_14__* %51, %struct.TYPE_14__** %3, align 8
  br label %52

52:                                               ; preds = %39, %38, %27, %13
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  ret %struct.TYPE_14__* %53
}

declare dso_local i64 @con_get_fullscreen_con(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @DLOG(i8*, ...) #1

declare dso_local %struct.TYPE_13__* @get_output_containing(i32, i32) #1

declare dso_local i32 @output_primary_name(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @get_output_next(i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @GREP_FIRST(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @output_get_content(i32) #1

declare dso_local i32 @workspace_is_visible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
