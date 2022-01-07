; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_cmds.c_Cmd_GameCommand_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_cmds.c_Cmd_GameCommand_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@MAX_TOKEN_CHARS = common dso_local global i32 0, align 4
@g_entities = common dso_local global %struct.TYPE_13__* null, align 8
@.str = private unnamed_addr constant [44 x i8] c"print \22Usage: gc <player id> <order 0-%d>\0A\22\00", align 1
@numgc_orders = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"print \22Bad order: %i\0A\22\00", align 1
@qtrue = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"tell: %s to %s: %s\0A\00", align 1
@gc_orders = common dso_local global i32* null, align 8
@SAY_TELL = common dso_local global i32 0, align 4
@SVF_BOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cmd_GameCommand_f(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %9 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = call i32 (...) @trap_Argc()
  %14 = icmp ne i32 %13, 3
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** @g_entities, align 8
  %18 = ptrtoint %struct.TYPE_13__* %16 to i64
  %19 = ptrtoint %struct.TYPE_13__* %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 24
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* @numgc_orders, align 4
  %24 = sub nsw i32 %23, 1
  %25 = call i32 @va(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = call i32 @trap_SendServerCommand(i32 %22, i32 %25)
  store i32 1, i32* %8, align 4
  br label %123

27:                                               ; preds = %1
  %28 = trunc i64 %10 to i32
  %29 = call i32 @trap_Argv(i32 2, i8* %12, i32 %28)
  %30 = call i32 @atoi(i8* %12)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @numgc_orders, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %33, %27
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** @g_entities, align 8
  %40 = ptrtoint %struct.TYPE_13__* %38 to i64
  %41 = ptrtoint %struct.TYPE_13__* %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 24
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @va(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = call i32 @trap_SendServerCommand(i32 %44, i32 %46)
  store i32 1, i32* %8, align 4
  br label %123

48:                                               ; preds = %33
  %49 = trunc i64 %10 to i32
  %50 = call i32 @trap_Argv(i32 1, i8* %12, i32 %49)
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %52 = load i32, i32* @qtrue, align 4
  %53 = load i32, i32* @qtrue, align 4
  %54 = call i32 @ClientNumberFromString(%struct.TYPE_13__* %51, i8* %12, i32 %52, i32 %53)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store i32 1, i32* %8, align 4
  br label %123

58:                                               ; preds = %48
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** @g_entities, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i64 %61
  store %struct.TYPE_13__* %62, %struct.TYPE_13__** %4, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %58
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = icmp ne %struct.TYPE_11__* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %67, %58
  store i32 1, i32* %8, align 4
  br label %123

73:                                               ; preds = %67
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** @gc_orders, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @G_LogPrintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %85, i32 %90)
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %94 = load i32, i32* @SAY_TELL, align 4
  %95 = load i32*, i32** @gc_orders, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @G_Say(%struct.TYPE_13__* %92, %struct.TYPE_13__* %93, i32 %94, i32 %99)
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %103 = icmp ne %struct.TYPE_13__* %101, %102
  br i1 %103, label %104, label %122

104:                                              ; preds = %73
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @SVF_BOT, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %122, label %112

112:                                              ; preds = %104
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %115 = load i32, i32* @SAY_TELL, align 4
  %116 = load i32*, i32** @gc_orders, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @G_Say(%struct.TYPE_13__* %113, %struct.TYPE_13__* %114, i32 %115, i32 %120)
  br label %122

122:                                              ; preds = %112, %104, %73
  store i32 0, i32* %8, align 4
  br label %123

123:                                              ; preds = %122, %72, %57, %37, %15
  %124 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i32, i32* %8, align 4
  switch i32 %125, label %127 [
    i32 0, label %126
    i32 1, label %126
  ]

126:                                              ; preds = %123, %123
  ret void

127:                                              ; preds = %123
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_Argc(...) #2

declare dso_local i32 @trap_SendServerCommand(i32, i32) #2

declare dso_local i32 @va(i8*, i32) #2

declare dso_local i32 @trap_Argv(i32, i8*, i32) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @ClientNumberFromString(%struct.TYPE_13__*, i8*, i32, i32) #2

declare dso_local i32 @G_LogPrintf(i8*, i32, i32, i32) #2

declare dso_local i32 @G_Say(%struct.TYPE_13__*, %struct.TYPE_13__*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
