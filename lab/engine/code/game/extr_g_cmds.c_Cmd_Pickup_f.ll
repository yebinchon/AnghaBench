; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_cmds.c_Cmd_Pickup_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_cmds.c_Cmd_Pickup_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@MAX_TOKEN_CHARS = common dso_local global i32 0, align 4
@g_cheats = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@g_entities = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [48 x i8] c"print \22Cheats are not enabled on this server.\0A\22\00", align 1
@qtrue = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"print \22Invalid player name\0A\22\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"print \22usage: pickup id <optional player name>\0A\22\00", align 1
@level = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cmd_Pickup_f(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %9 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @g_cheats, i32 0, i32 0), align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_entities, align 8
  %18 = ptrtoint %struct.TYPE_9__* %16 to i64
  %19 = ptrtoint %struct.TYPE_9__* %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = call i32 @trap_SendServerCommand(i32 %22, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %95

24:                                               ; preds = %1
  %25 = call i32 (...) @trap_Argc()
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %50

27:                                               ; preds = %24
  %28 = trunc i64 %10 to i32
  %29 = call i32 @trap_Argv(i32 2, i8* %12, i32 %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = load i32, i32* @qtrue, align 4
  %32 = load i32, i32* @qtrue, align 4
  %33 = call i32 @ClientNumberFromString(%struct.TYPE_9__* %30, i8* %12, i32 %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %45

36:                                               ; preds = %27
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_entities, align 8
  %39 = ptrtoint %struct.TYPE_9__* %37 to i64
  %40 = ptrtoint %struct.TYPE_9__* %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = call i32 @trap_SendServerCommand(i32 %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %95

45:                                               ; preds = %27
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_entities, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i64 %48
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %2, align 8
  br label %63

50:                                               ; preds = %24
  %51 = call i32 (...) @trap_Argc()
  %52 = icmp ne i32 %51, 2
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_entities, align 8
  %56 = ptrtoint %struct.TYPE_9__* %54 to i64
  %57 = ptrtoint %struct.TYPE_9__* %55 to i64
  %58 = sub i64 %56, %57
  %59 = sdiv exact i64 %58, 4
  %60 = trunc i64 %59 to i32
  %61 = call i32 @trap_SendServerCommand(i32 %60, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %95

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62, %45
  %64 = trunc i64 %10 to i32
  %65 = call i32 @trap_Argv(i32 1, i8* %12, i32 %64)
  %66 = call i32 @atoi(i8* %12)
  store i32 %66, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %91, %63
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @level, i32 0, i32 0), align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %94

71:                                               ; preds = %67
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_entities, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i64 %74
  store %struct.TYPE_9__* %75, %struct.TYPE_9__** %3, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %71
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %81, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %89 = call i32 @Touch_Item(%struct.TYPE_9__* %87, %struct.TYPE_9__* %88, i32* null)
  br label %90

90:                                               ; preds = %86, %80, %71
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %67

94:                                               ; preds = %67
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %94, %53, %36, %15
  %96 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %8, align 4
  switch i32 %97, label %99 [
    i32 0, label %98
    i32 1, label %98
  ]

98:                                               ; preds = %95, %95
  ret void

99:                                               ; preds = %95
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_SendServerCommand(i32, i8*) #2

declare dso_local i32 @trap_Argc(...) #2

declare dso_local i32 @trap_Argv(i32, i8*, i32) #2

declare dso_local i32 @ClientNumberFromString(%struct.TYPE_9__*, i8*, i32, i32) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @Touch_Item(%struct.TYPE_9__*, %struct.TYPE_9__*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
