; ModuleID = '/home/carl/AnghaBench/i3/src/extr_con.c_con_move_to_mark.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_con.c_con_move_to_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32 }

@.str = private unnamed_addr constant [35 x i8] c"found no container with mark \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"__i3_scratch\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"target container is in the scratchpad, moving container to scratchpad.\0A\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"target container is floating, moving container to target's workspace.\0A\00", align 1
@CT_WORKSPACE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [76 x i8] c"target container is an empty workspace, simply moving the container there.\0A\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"target is a split container, descending to the currently focused child.\0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"cannot move the container to or inside itself, aborting.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @con_move_to_mark(%struct.TYPE_17__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call %struct.TYPE_17__* @con_by_mark(i8* %7)
  store %struct.TYPE_17__* %8, %struct.TYPE_17__** %6, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %10 = icmp eq %struct.TYPE_17__* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %12)
  store i32 0, i32* %3, align 4
  br label %73

14:                                               ; preds = %2
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %16 = call %struct.TYPE_17__* @con_get_workspace(%struct.TYPE_17__* %15)
  %17 = call i64 @workspace_get(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %18 = inttoptr i64 %17 to %struct.TYPE_17__*
  %19 = icmp eq %struct.TYPE_17__* %16, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0))
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %23 = call i32 @scratchpad_move(%struct.TYPE_17__* %22)
  store i32 1, i32* %3, align 4
  br label %73

24:                                               ; preds = %14
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %26 = call i64 @con_is_floating(%struct.TYPE_17__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0))
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %32 = call %struct.TYPE_17__* @con_get_workspace(%struct.TYPE_17__* %31)
  %33 = call i32 @con_move_to_workspace(%struct.TYPE_17__* %30, %struct.TYPE_17__* %32, i32 1, i32 0, i32 0)
  store i32 1, i32* %3, align 4
  br label %73

34:                                               ; preds = %24
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CT_WORKSPACE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %42 = call i64 @con_is_leaf(%struct.TYPE_17__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.4, i64 0, i64 0))
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %48 = call i32 @con_move_to_workspace(%struct.TYPE_17__* %46, %struct.TYPE_17__* %47, i32 1, i32 0, i32 0)
  store i32 1, i32* %3, align 4
  br label %73

49:                                               ; preds = %40, %34
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %51 = call i64 @con_is_split(%struct.TYPE_17__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0))
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = call %struct.TYPE_17__* @TAILQ_FIRST(i32* %56)
  store %struct.TYPE_17__* %57, %struct.TYPE_17__** %6, align 8
  br label %58

58:                                               ; preds = %53, %49
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %61 = icmp eq %struct.TYPE_17__* %59, %60
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %65 = call i64 @con_has_parent(%struct.TYPE_17__* %63, %struct.TYPE_17__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62, %58
  %68 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %73

69:                                               ; preds = %62
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %72 = call i32 @_con_move_to_con(%struct.TYPE_17__* %70, %struct.TYPE_17__* %71, i32 0, i32 1, i32 0, i32 0, i32 1)
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %67, %44, %28, %20, %11
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.TYPE_17__* @con_by_mark(i8*) #1

declare dso_local i32 @DLOG(i8*, ...) #1

declare dso_local %struct.TYPE_17__* @con_get_workspace(%struct.TYPE_17__*) #1

declare dso_local i64 @workspace_get(i8*, i32*) #1

declare dso_local i32 @scratchpad_move(%struct.TYPE_17__*) #1

declare dso_local i64 @con_is_floating(%struct.TYPE_17__*) #1

declare dso_local i32 @con_move_to_workspace(%struct.TYPE_17__*, %struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i64 @con_is_leaf(%struct.TYPE_17__*) #1

declare dso_local i64 @con_is_split(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @con_has_parent(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @_con_move_to_con(%struct.TYPE_17__*, %struct.TYPE_17__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
